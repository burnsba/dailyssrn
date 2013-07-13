dailyssrn
=========

data gathering scripts and web frontend

---

These scripts are used to gather data from the SSRN website, and then generate 
an RSS feed from the latest postings. The RSS feed is updated once a day, via
cron running _master.sh_. I try not to DoS the SSRN website by including
delays between each query.

The only information gathered and posted are the abstracts, titles, and 
authors, as allowed per the SSRN ToS.

A side goal of this project was to become more proficient in Perl and shell
scripting. (This is one of my first Perl projects)

#### Folder structure: ####
    code/             Scripts to be run
    web/              Website

#### Contents: ####
    web/
    index.html        The entire website
    rss/              Contains the xml files to be used for RSS feeds. There
                      is one feed for each category, and one feed for all 
                      categories. Both RSS 1.0 and 2.0 feeds are generated.

    code/
    master.sh         To be run by cron. 
    email_report.sh   Sends an email on the status of the last update, and 
                      includes bad html files.
    grab_ssrn.sh      Downloads a webpage from SSRN, one for each category, then 
                      sends page to parse_and_log.pl
    parse_and_log.pl  parses out paper information and stores result in database.
                      If a paper is found that isn't already in the database, the
                      abstract text is downloaded.
    update_rss.sh     Basically an alias for feed.pl
    feed.pl           Updates all the RSS feeds; feeds are created based on all
                      papers updated on the day before the script is run (I run
                      the script around 4 AM)
                      
#### what happens: ####
    master.sh
    +-----> grab_ssrn.sh
    |         +------------> parse_and_log.pl
    |                      
    +-----> update_rss.sh
              +------------> feed.pl
              
    email_report.sh
