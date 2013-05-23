#!/bin/sh

# The MIT License (MIT)
# 
# Copyright (c) 2013 ben burns
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# 
#

# this file is a helper to load all the category pages from ssrn

TEMPFILE="/var/tmp/daily_ssrn_master.$$.tmp"

CAT="A00"
CAT_CLASS="A"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true" 
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="A1"
CAT_CLASS="A"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="A2"
CAT_CLASS="A"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true" 
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="B00"
CAT_CLASS="B"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="B1"
CAT_CLASS="B"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="B2"
CAT_CLASS="B"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="B3"
CAT_CLASS="B"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="B4"
CAT_CLASS="B"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="C00"
CAT_CLASS="C"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C1"
CAT_CLASS="C"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C2"
CAT_CLASS="C"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C3"
CAT_CLASS="C"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C4"
CAT_CLASS="C"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C5"
CAT_CLASS="C"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C6"
CAT_CLASS="C"
CAT_MAJ="6"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C7"
CAT_CLASS="C"
CAT_MAJ="7"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C8"
CAT_CLASS="C"
CAT_MAJ="8"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="C9"
CAT_CLASS="C"
CAT_MAJ="9"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="D00"
CAT_CLASS="D"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D1"
CAT_CLASS="D"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D2"
CAT_CLASS="D"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D3"
CAT_CLASS="D"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D4"
CAT_CLASS="D"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D5"
CAT_CLASS="D"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D6"
CAT_CLASS="D"
CAT_MAJ="6"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D7"
CAT_CLASS="D"
CAT_MAJ="7"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D8"
CAT_CLASS="D"
CAT_MAJ="8"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="D9"
CAT_CLASS="D"
CAT_MAJ="9"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="E00"
CAT_CLASS="E"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="E1"
CAT_CLASS="E"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="E2"
CAT_CLASS="E"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="E3"
CAT_CLASS="E"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="E4"
CAT_CLASS="E"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="E5"
CAT_CLASS="E"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="E6"
CAT_CLASS="E"
CAT_MAJ="6"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="F00"
CAT_CLASS="F"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="F01"
CAT_CLASS="F"
CAT_MAJ="01"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="F02"
CAT_CLASS="F"
CAT_MAJ="02"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="F1"
CAT_CLASS="F"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="F2"
CAT_CLASS="F"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="F3"
CAT_CLASS="F"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="F4"
CAT_CLASS="F"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="G00"
CAT_CLASS="G"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="G1"
CAT_CLASS="G"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="G2"
CAT_CLASS="G"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="G3"
CAT_CLASS="G"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="H00"
CAT_CLASS="H"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H1"
CAT_CLASS="H"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H2"
CAT_CLASS="H"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H3"
CAT_CLASS="H"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H4"
CAT_CLASS="H"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H5"
CAT_CLASS="H"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H6"
CAT_CLASS="H"
CAT_MAJ="6"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H7"
CAT_CLASS="H"
CAT_MAJ="7"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="H8"
CAT_CLASS="H"
CAT_MAJ="8"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="I00"
CAT_CLASS="I"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="I1"
CAT_CLASS="I"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="I2"
CAT_CLASS="I"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="I3"
CAT_CLASS="I"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="J00"
CAT_CLASS="J"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="J1"
CAT_CLASS="J"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="J2"
CAT_CLASS="J"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="J3"
CAT_CLASS="J"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="J4"
CAT_CLASS="J"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="J5"
CAT_CLASS="J"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="J6"
CAT_CLASS="J"
CAT_MAJ="6"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="J7"
CAT_CLASS="J"
CAT_MAJ="7"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="K00"
CAT_CLASS="K"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="K1"
CAT_CLASS="K"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="K2"
CAT_CLASS="K"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="K3"
CAT_CLASS="K"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="K4"
CAT_CLASS="K"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="L00"
CAT_CLASS="L"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L1"
CAT_CLASS="L"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L2"
CAT_CLASS="L"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L3"
CAT_CLASS="L"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L4"
CAT_CLASS="L"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L5"
CAT_CLASS="L"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L6"
CAT_CLASS="L"
CAT_MAJ="6"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L7"
CAT_CLASS="L"
CAT_MAJ="7"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L8"
CAT_CLASS="L"
CAT_MAJ="8"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="L9"
CAT_CLASS="L"
CAT_MAJ="9"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="M00"
CAT_CLASS="M"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="M1"
CAT_CLASS="M"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="M2"
CAT_CLASS="M"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="M3"
CAT_CLASS="M"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="M4"
CAT_CLASS="M"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="M5"
CAT_CLASS="M"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="N00"
CAT_CLASS="N"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N01"
CAT_CLASS="N"
CAT_MAJ="01"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N1"
CAT_CLASS="N"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N2"
CAT_CLASS="N"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N3"
CAT_CLASS="N"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N4"
CAT_CLASS="N"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N5"
CAT_CLASS="N"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N6"
CAT_CLASS="N"
CAT_MAJ="6"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N7"
CAT_CLASS="N"
CAT_MAJ="7"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="N8"
CAT_CLASS="N"
CAT_MAJ="8"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="O00"
CAT_CLASS="O"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="O1"
CAT_CLASS="O"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="O2"
CAT_CLASS="O"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="O3"
CAT_CLASS="O"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="O4"
CAT_CLASS="O"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="O5"
CAT_CLASS="O"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="P00"
CAT_CLASS="P"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="P1"
CAT_CLASS="P"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="P2"
CAT_CLASS="P"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="P3"
CAT_CLASS="P"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="P4"
CAT_CLASS="P"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="P5"
CAT_CLASS="P"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="Q00"
CAT_CLASS="Q"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="Q1"
CAT_CLASS="Q"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="Q2"
CAT_CLASS="Q"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="Q3"
CAT_CLASS="Q"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="Q4"
CAT_CLASS="Q"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="R00"
CAT_CLASS="R"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="R1"
CAT_CLASS="R"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="R2"
CAT_CLASS="R"
CAT_MAJ="2"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="R3"
CAT_CLASS="R"
CAT_MAJ="3"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="R4"
CAT_CLASS="R"
CAT_MAJ="4"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="R5"
CAT_CLASS="R"
CAT_MAJ="5"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10


CAT="Z00"
CAT_CLASS="Z"
CAT_MAJ="00"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

CAT="Z1"
CAT_CLASS="Z"
CAT_MAJ="1"
wget -O $TEMPFILE "http://papers.ssrn.com/sol3/Jeljour_results.cfm?nxtres=1&form_name=jel&code=$CAT&SortOrder=ab_approval_date&stype=desc&lim=true"
/home/burnsba/code/daily_ssrn/parse_and_log.pl $TEMPFILE $CAT_CLASS $CAT_MAJ
rm $TEMPFILE
sleep 10

