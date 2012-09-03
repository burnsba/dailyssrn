#!/usr/bin/perl -w

# this is designed to be a command line perl script used to
# generate the rss/atom feed to be hosted on the web server
# 
# The script should be run soon after then end of the day;
# localtime will be read, then the day will be decremented;
# all papers found for the previous day will be added to the rss feed.

use diagnostics;
use strict;

use CGI::Carp qw(warningsToBrowser fatalsToBrowser);
use HTML::Entities;
use XML::RSS;
use DBI;
use Date::Calc qw(Add_Delta_Days);
use DateTime::Format::Mail;
use DateTime::Format::Strptime;
#require '/var/www/perl/getquery.pl';

sub get_data_from_main($);
sub get_data_from_category_tags($);
sub get_data_from_authors($);
sub get_data_from_abstract_text($);

my $db_host = '***';
my $db_name = '***';
my $db_user = '***';
my $db_pass = '***';

my $channel_title = "DailySSRN";
my $channel_link = "http://www.dailyssrn.com";
my $channel_description = "Summary of new papers published on SSRN over the last day";
my $update_base = DateTime->new(year => 2012,
                                month => 8,
                                day => 1,
                                hour => 0,
                                minute => 0,
                                second => 0
                                );
my $ssrn_abstract_base = "http://papers.ssrn.com/sol3/papers.cfm?abstract_id=";
my $ssrn_author_base = "http://papers.ssrn.com/sol3/cf_dev/AbsByAuth.cfm?per_id=";
my @ssrn_categories = ('ALL', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'Z');

# for parsing in sql times
my $fmt = DateTime::Format::Strptime->new(
        pattern => "%Y-%m-%d",
        time_zone => 'local'
        );
# for parsing times into rss format
my $mail_datetime = DateTime::Format::Mail->new();

# find today's date; adjust per localtime standard
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
$year = $year + 1900;
$mon = $mon + 1;
# roll back one day
my ($yesterdayy, $yesterdaym, $yesterdayd) = Add_Delta_Days($year, $mon, $mday, -1);
my $yesterday_query = "" . $yesterdayy. "-" . $yesterdaym . "-" . $yesterdayd . "";

my $rss_pub_date = $mail_datetime->format_datetime(DateTime->now(time_zone=>'local'));
#print "parsed: " . $w3c->parse_datetime(@$last_revised[0]) . "\n";

# run though all the categories (including "all") and generate category specific
# rss feeds; also, v1 and v2 rss feeds for each

CATEGORY_LOOP: foreach my $current_category (@ssrn_categories)
{

        # build query to execute
        my $query = '';
        if ($current_category =~ m/all/i)
        {
                $query = "SELECT abstract_id,type,title,last_revised FROM `$db_name`.`main` WHERE last_revised='$yesterday_query'";
        }
        else
        {
                # grab all the latest entries per category:
                $query = "SELECT a.abstract_id,a.type,a.title,a.last_revised " .
                         "FROM `$db_name`.`main` a " .
                         "INNER JOIN `$db_name`.`category_tags` b " .
                         "WHERE a.last_revised='$yesterday_query' AND b.last_revised='$yesterday_query' AND a.abstract_id = b.abstract_id " .
                         "AND category='$current_category' ";
                 
        }

        #print "using date " . $today_query ."\n";
        my ($abstract_ids, $types, $titles, $last_revised) = get_data_from_main($query);
        my @arr = @$abstract_ids;

        if (@arr == 0)
        {
                print "feed.pl:\n";
                print "There were no items found for yesterday's date\n";
                print "Date: $yesterdayy-$yesterdaym-$yesterdayd\n";
                print "Category: $current_category\n";
                print "Query: $query\n";
                #exit 1;
                next CATEGORY_LOOP;
        }

        # rss 1.0 object
        my $rss1 = XML::RSS->new( version => '1.0' );
        # rss 2.0 object
        my $rss2 = XML::RSS->new( version => '2.0' );

        # setup channel for rss 1.0
        $rss1->channel(
                title => $channel_title . " - " . $current_category,
                link => $channel_link, 
                description => $channel_description,
                dc =>   {
                        publisher => 'publisher person',
                        date => $rss_pub_date
                        },
                syn =>  {
                        updatePeriod => 'daily',
                        updateFrequency => '1',
                        updateBase => $update_base
                        }
        );

        # setup channel for rss 2.0
        $rss2->channel(
                title => $channel_title . " - " . $current_category,
                link => $channel_link, 
                description => $channel_description,
                pubDate => $rss_pub_date,
                lastBuildDate => $rss_pub_date,
                ttl => 720

        );

        for my $i (0 .. @arr - 1)
        {
                my $desc = "";
                if ( @$types[$i] eq "abstract")
                {
                        $desc = "Abstract only";
                }
                elsif ( @$types[$i] eq "free") 
                {
                        $desc = "Free paper";
                }
                elsif ( @$types[$i] eq "pay") 
                {
                        $desc = "Paywalled paper";
                }
                else
                {
                        $desc = "Unknown";
                }

                # query author db for this paper
                my $author_query = "SELECT author_id,author_name FROM `$db_name`.`authors` WHERE abstract_id='@$abstract_ids[$i]'";
                my ($author_ids, $author_names) = get_data_from_authors($author_query);

                # link to paper
                my $l = $ssrn_abstract_base . @$abstract_ids[$i] ;
                $desc = $desc . ' by ';
                # add links to each author
                for my $a_count (0 .. (@$author_ids - 1))
                {
                        $desc = $desc . '<a href="' . $ssrn_author_base;
                        $desc = $desc . "@$author_ids[$a_count]";
                        $desc = $desc . '">';
                        $desc = $desc . "@$author_names[$a_count]";
                        $desc = $desc . '</a> ';
                        if ($a_count < @$author_ids - 1)
                        {
                                $desc = $desc . " and ";
                        }
                }
                $desc = $desc . " last revised on @$last_revised[$i]";

                HTML::Entities::decode($desc); # unescape for viewing

                my $abstract_query = "SELECT abstract_text FROM `$db_name`.`abstract_text` WHERE abstract_id='@$abstract_ids[$i]'";
                my $abstract_text = get_data_from_abstract_text($abstract_query);

                if (defined $abstract_text )
                {
                        $desc = $desc . "\n<p>Abstract:\n<br>" . $abstract_text;
                }

                #my $tt = $fmt->parse_datetime(@$last_revised[$i]);
                # adjust publication date -- show publishsed today at 7 pm (for central time)
                # instead of yesterday at 7 pm
                #my ($tty, $ttm, $ttd) = Add_Delta_Days($tt->year, $tt->mon, $tt->mday, 1);
                #$tt->set( year => $tty);
                #$tt->set( month => $ttm);
                #$tt->set( day => $ttd);

                my $item_title = HTML::Entities::decode(@$titles[$i]);
                # print "title: $item_title\n";

                $rss1->add_item(
                        title => $item_title,
                        link => $l,
                        description => $desc,
                        dc =>   {
                                #date => $mail_datetime->format_datetime($tt)
                                date => $rss_pub_date
                                }
                );
                $rss2->add_item(
                        title => $item_title,
                        link => $l,
                        description => $desc,
                        #pubDate => $mail_datetime->format_datetime($tt)
                        pubDate => $rss_pub_date
                );
        }
        my $base_name = "rss-$current_category";
        $base_name = lc($base_name);
        $rss1->save( "$base_name-1.0.xml" );
        $rss2->save( "$base_name-2.0.xml" );
}

# done with main

sub get_data_from_main($)
{
        my ($query) = @_;

        my $dbh = DBI->connect("dbi:mysql:$db_name:$db_host", $db_user, $db_pass)
                or die "Couldn't connect to database: " . DBI->errstr;

        my $sth = $dbh->prepare($query)
                or die "Couldn't prepare statement: " . $dbh->errstr;

        $sth->execute();
        my @row= undef;

        my @abstract_id = ();
        my @type = ();
        my @title = ();
        my @last_revised = ();

        while (@row = $sth->fetchrow_array())
        {
                push @abstract_id, $row[0];
                push @type, $row[1];
                push @title, $row[2];
                push @last_revised, $row[3];
        }

        $dbh->disconnect;

        return (\@abstract_id, \@type, \@title, \@last_revised);
}

sub get_data_from_authors($)
{
        my ($query) = @_;

        my $dbh = DBI->connect("dbi:mysql:$db_name:$db_host", $db_user, $db_pass)
                or die "Couldn't connect to database: " . DBI->errstr;

        my $sth = $dbh->prepare($query)
                or die "Couldn't prepare statement: " . $dbh->errstr;

        $sth->execute();
        my @row= undef;

        my @author_id = ();
        my @author_name = ();

        while (@row = $sth->fetchrow_array())
        {
                push @author_id, $row[0];
                push @author_name, $row[1];
        }

        $dbh->disconnect;

        return (\@author_id, \@author_name);
}

sub get_data_from_abstract_text($)
{

        my ($query) = @_;

        my $dbh = DBI->connect("dbi:mysql:$db_name:$db_host", $db_user, $db_pass)
                or die "Couldn't connect to database: " . DBI->errstr;

        my $sth = $dbh->prepare($query)
                or die "Couldn't prepare statement: " . $dbh->errstr;

        $sth->execute();
        my @row= undef;

        my @abstract_text = ();

        while (@row = $sth->fetchrow_array())
        {
                push @abstract_text, $row[0];
        }

        $dbh->disconnect;

        #return (\@abstract_text);
        return $abstract_text[0];
}

# EOF

