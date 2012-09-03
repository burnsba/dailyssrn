#!/bin/sh

source ~/.bash_profile

/home/burnsba/code/daily_ssrn/grab_ssrn.sh > /var/tmp/grab_ssrn.$$.txt

/home/burnsba/code/daily_ssrn/update_rss.sh > /var/tmp/update_rss.$$.txt

echo "daily_ssrn scripts finished running at `date`" | mail -s "daily ssrn update" -a /var/tmp/update_rss.$$.txt -a /var/tmp/grab_ssrn.$$.txt admin@dailyssrn.com

rm -f /var/tmp/grab_ssrn.$$.txt
rm -f /var/tmp/update_rss.$$.txt
