#!/usr/bin/perl -w

# this script is designed to parse out information from an SSRN
# web page and store the info in a database.
# arguments are: the handle of file downloaded by wget
# the category (A, B, C, etc)
# the major category (00, 1, 2, etc)

use diagnostics;
use strict;

use CGI::Carp qw(warningsToBrowser fatalsToBrowser);
use Encoding::FixLatin qw(fix_latin);
use HTML::Entities qw(encode_entities_numeric);
use DBI;
use LWP::Simple;

sub execute_sql_query($);
sub sql_query_abstract($);
sub get_abstract_text;

my $db_host = '***';
my $db_name = '***';
my $db_user = '***';
my $db_pass = '***';

my $ssrn_date_format = '%M %d, %Y';
my $ssrn_abstract_base_url = "http://ssrn.com/abstract=";

my $download_sleep_time = 15; # in seconds

# usage

if ($#ARGV + 1 != 3)
{
        print "\nUsage: parse_and_log.pl file category category_major\n";
        print "ex: parse_and_log.pl file A 00\n";
        exit 1;
}

# arguments

my $filename = $ARGV[0];
my $category = $ARGV[1];
my $category_major = $ARGV[2];
my $something_went_wrong = 0;

# do some initial checking

if (! -e $filename)
{
        print "Could not find '$filename'\n";
        exit 1;
}

if (! ($category =~ m/^[ABCDEFGHIJKLMNOPQRZ]$/))
{
        print "Invalid category '$category'\n";
        exit 1;
}

if (! ($category_major =~ m/^\d{1,2}$/))
{
        print "Invalid category_major '$category_major'\n";
        exit 1;
}

# grab the input file; store in memory

open (FPTR, "<$filename") or die "Can't open file $filename\n";
# grab it all as one line
undef $/;
my $file_contents = <FPTR>;
close (FPTR);

# do some cleaning up -- every HTML tag should be a demarcation mark
$file_contents =~ s/>/>\n/g;
$file_contents =~ s/\r//g;
$file_contents =~ s/\n\n/\n/g;

# store every line as an entry
my @file_lines = split ('\n', $file_contents);

# debugging
#print "the number of lines is ", @file_lines + 1, "\n";
#for (@file_lines)
#{
#       print;
#       print "\n";
#}

my $count=0;
my $abstracts_found=0;
for my $line (@file_lines)
{
        # found an abstract; begin extraction process
        if ($line =~ m/abstract_id/)
        {
                # increment total counter
                $abstracts_found++;



                # frequently used temp variable
                my $count_offset = 0;
                # safety feature for these loops
                my $safety_count = 0;
                my $MAX_SAFETY = 20;
                
################# start with abstract_id
                my $abstract_id = $line;
                $abstract_id =~ s/^(.*)(abstract_id=)([0-9][0-9]*)(.*)$/$3/g;
                #print "abstract: ", $abstract_id, "\n";
                
################# find the paper type: pay, free, abstract, unknown
                my $paper_type = $file_lines[$count - 3];
                if ($paper_type =~ m/<br>/)
                {
                        $paper_type = 'abstract';
                }
                elsif ($paper_type =~ m/<\/font>/)
                {
                        $paper_type = 'abstract';
                }
                elsif ($paper_type =~ m/free/)
                {
                        $paper_type = 'free';
                }
                elsif ($paper_type =~ m/fee/)
                {
                        $paper_type = 'pay';
                }
                else
                {
                        $paper_type = 'unknown';
                }
                #print "paper type: $paper_type\n";
                
################# find the paper title
                my $title = '';
                $count_offset = 1;
                TITLE_LOOP: {
                do {
                        $title = $title . $file_lines[$count + $count_offset];
                        $count_offset = $count_offset + 1;
                        
                        $safety_count++;
                        if ($safety_count > $MAX_SAFETY)
                        {
                                last TITLE_LOOP;
                        }
                } while ( $title !~ m/<\/a>/);
                }
                # clean up the title
                $title =~ s/<\/a>//; # drop </a>
                #print "title pre-encode: $title\n";
                my $utf8_title = fix_latin($title);
                $title = encode_entities_numeric($utf8_title); # escape characters
                #print "title: $title\n";
                
################# find the first author
                my $t = '';
                my @authors; # 2-step array: [0]author1_id, [1]author1_name, [2]author2_id, [3]author2_name, etc
                my $author_count = 0;
                # loop from title until first author is found
                $safety_count = 0;
                FIRST_AUTHOR_LOOP: {
                do {
                        $t = $file_lines[$count + $count_offset];
                        $count_offset = $count_offset + 1;
                        
                        $safety_count++;
                        if ($safety_count > $MAX_SAFETY)
                        {
                                last FIRST_AUTHOR_LOOP;
                        }
                } while ( $t !~ m/AbsByAuth/i);
                }
                $safety_count = 0;
                SECOND_AUTHOR_LOOP: {
                do {
                        # author id
                        $authors[$author_count] = $t;
                        $authors[$author_count] =~ s/^(.*)(per_id=)([0-9][0-9]*)(.*)$/$3/g;
                        my $utf_author_id = fix_latin($authors[$author_count]);
                        $authors[$author_count] = encode_entities_numeric($utf_author_id);
                        # next line
                        $t = $file_lines[$count + $count_offset];
                        $count_offset++;
                        # author name
                        $authors[$author_count + 1] = $t;
                        $authors[$author_count + 1] =~ s/<\/a>//; # drop </a>
                        $authors[$author_count + 1] =~ s/\s+/ /g; # drop double spaces
                        $authors[$author_count + 1] =~ s/\s$//g; # drop trailing space
                        $authors[$author_count + 1] =~ s/^\s//g; # drop leading space
                        my $utf_author_name = fix_latin($authors[$author_count + 1]);
                        $authors[$author_count + 1] = encode_entities_numeric($utf_author_name);
                        # next line
                        $t = $file_lines[$count + $count_offset];
                        $count_offset++;
                        # increment
                        $author_count = $author_count + 2;
                        
                        $safety_count++;
                        if ($safety_count > $MAX_SAFETY)
                        {
                                last SECOND_AUTHOR_LOOP;
                        }
                } while ($t !~ m/<br>/);
                }
                #print "author(s), ",int($#authors/2)+1," total: @authors\n";
                
################# find the date posted

                # loop from authors until date posted is found
                $safety_count = 0;
                DATE_POSTED_LOOP: {
                do {
                        $t = $file_lines[$count + $count_offset];
                        $count_offset = $count_offset + 1;
                        
                        $safety_count++;
                        if ($safety_count > $MAX_SAFETY)
                        {
                                last DATE_POSTED_LOOP;
                        }
                } while ( $t !~ m/date posted/i);
                }
                # goto next line
                $t = $file_lines[$count + $count_offset];
                $count_offset = $count_offset + 1;
                
                my $date_posted = $t;
                $date_posted =~ s/<br>//;
                my $utf_date_posted = fix_latin($date_posted);
                $date_posted = encode_entities_numeric($utf_date_posted);
                #print "date posted: $date_posted\n";
                
################# find the date last revised    
                # loop from date posted until last revised
                # this seems to be an optional tag
                $safety_count = 17; # start really close to max
                LAST_REVISED_LOOP: {
                do {
                        $t = $file_lines[$count + $count_offset];
                        $count_offset = $count_offset + 1;
                        
                        $safety_count++;
                        if ($safety_count > $MAX_SAFETY)
                        {
                                last LAST_REVISED_LOOP;
                        }
                } while ( $t !~ m/last revised/i);
                }
                
                # goto next line
                $t = $file_lines[$count + $count_offset];
                $count_offset = $count_offset + 1;
                
                my $last_revised = '';
                # check if this was found
                if ($safety_count > $MAX_SAFETY)
                {
                        $last_revised = $date_posted;
                }
                else
                {
                        $last_revised = $t;
                        $last_revised =~ s/<br>//;
                        my $utf_last_revised = fix_latin($last_revised);
                        $last_revised = encode_entities_numeric($utf_last_revised);
                }
                
                #print "last revised: $last_revised\n";
################# done  
                
                my $sql_insert = "INSERT IGNORE INTO `$db_name`.`main` (abstract_id, type, title, date_posted, last_revised) VALUES('$abstract_id', '$paper_type', '$title', STR_TO_DATE('$date_posted', '$ssrn_date_format'), STR_TO_DATE('$last_revised', '$ssrn_date_format'))";
                execute_sql_query($sql_insert);
                #print "sql: $sql_insert\n";
                $sql_insert = "INSERT IGNORE INTO `$db_name`.`category_tags` (abstract_id, category, category_major, last_revised) VALUES('$abstract_id', '$category', '$category_major', STR_TO_DATE('$last_revised', '$ssrn_date_format'))";
                execute_sql_query($sql_insert);
                #print "sql: $sql_insert\n";
                for my $a_count (0 .. (int($#authors/2)))
                {
                        my $a = $a_count * 2;
                        $sql_insert = "INSERT IGNORE INTO `$db_name`.`authors` (abstract_id, author_id, author_name) VALUES('$abstract_id', '$authors[$a]', '$authors[$a + 1]')";
                        execute_sql_query($sql_insert);
                        #print "sql: $sql_insert\n";
                }
                
                #print "\n";


################# now check if the abstract has been gotten before, or grab it
                my @abstract_results =  sql_query_abstract("SELECT abstract_id FROM `$db_name`.`abstract_text` WHERE abstract_id='$abstract_id'");
                # if it wasn't found, download it
                if (scalar(@abstract_results)  == 0)
                {
                        print "found zero abstract texts for $abstract_id, retrieving file\n";
                        my $abstract_text = get_abstract_text("$ssrn_abstract_base_url" . "$abstract_id");
                        #print "found abstract for id=$abstract_id:\n$abstract_text\n";
                        my $utf_abstract = fix_latin($abstract_text);
                        $abstract_text = encode_entities_numeric($utf_abstract); # escape characters
                        # don't ignore -- show an error, because this shouldn't be retrieving the web page
                        # from ssrn to get the abstract if it's already in the database
                        $sql_insert = "INSERT INTO `$db_name`.`abstract_text` (abstract_id, abstract_text) VALUES('$abstract_id', '$abstract_text')";
                        execute_sql_query($sql_insert);

                        # don't hammer ssrn
                        sleep($download_sleep_time);
                }
        }
        $count++;
}

if ($abstracts_found == 0)
{
        print "There were no abstracts found. Did something go wrong?\n\n";
}
else
{
        print "Found a total of $abstracts_found items in $category $category_major.\n\n";
}

#end of main

sub execute_sql_query($)
{
        my ($query) = @_;
        
        my $dbh = DBI->connect("dbi:mysql:$db_name:$db_host", $db_user, $db_pass)
                or die "Couldn't connect to database: " . DBI->errstr;
                
        my $sth = $dbh->prepare($query)
                or die "Couldn't prepare statement: " . $dbh->errstr;
                
        $sth->execute();
        $dbh->disconnect;
}

sub sql_query_abstract($)
{
        my ($query) = @_;

        my $dbh = DBI->connect("dbi:mysql:$db_name:$db_host", $db_user, $db_pass)
                or die "Couldn't connect to database: " . DBI->errstr;

        my $sth = $dbh->prepare($query)
                or die "Couldn't prepare statement: " . $dbh->errstr;

        $sth->execute();
        my @row= undef;

        my @abstract_id = ();

        while (@row = $sth->fetchrow_array())
        {
                push @abstract_id, $row[0];
        }

        $dbh->disconnect;

        return @abstract_id;
}

sub get_abstract_text
{
        my $url = $_[0];

        my $content = get($url);
        $content =~ s/\r//g;
        $content =~ s/\n//g;
        $content =~ s/>/>\n/g;
        $content =~ s/\n\n/\n/g;


        # store every line as an entry
        my @file_lines = split ('\n', $content);

        my $current_line=0;
        my $abstract_text = '';
        # break after too many lines
        my $safety_count=0;
        my $MAX_SAFETY=30;
        FIND_ABSTRACT: for my $line (@file_lines)
        {
                # found an abstract; begin extraction process
                if ($line =~ m/abstract:\s+<\/font>/i)
                {
                        do
                        {
                                $abstract_text = $abstract_text . $file_lines[$current_line];
                                $current_line++;

                                $safety_count++;
                                if ($safety_count > $MAX_SAFETY)
                                {
                                        last FIND_ABSTRACT;
                                }
                                if ($file_lines[$current_line] =~ m/jel\s+classificiation/i)
                                {
                                        last FIND_ABSTRACT;
                                }
                                elsif ($file_lines[$current_line] =~ m/number\s+of\s+pages\s+in\s+pdf\s+file/i)
                                {
                                        last FIND_ABSTRACT;
                                }
                        }
                        while ($file_lines[$current_line] !~ m/<\/font>/i);

                        last FIND_ABSTRACT;
                }

                $current_line++;
        }

        # parse out extra html tags
        # but try not to accidentally clobber valid >,< characters
        $abstract_text =~ s/\n//g;
        $abstract_text =~ s/<\/font>//ig;
        $abstract_text =~ s/<\/strong>//ig;
        $abstract_text =~ s/<br>//ig;
        $abstract_text =~ s/<p>//ig;
        $abstract_text =~ s/<\/p>//ig;
        $abstract_text =~ s/<font [^<>]+>//ig;
        # html spaces
        $abstract_text =~ s/(\&nbsp;)+/ /g;
        # space at beginning
        $abstract_text =~ s/^\s//g;
        # only do this once...
        $abstract_text =~ s/Abstract:\s+//;
        #print "abstract_test: $abstract_text\n";

        return $abstract_text;
}



# EOF

