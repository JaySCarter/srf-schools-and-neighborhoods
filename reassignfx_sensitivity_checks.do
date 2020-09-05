//Front Matter
{

version 16

//Initialize
set more off
cap log close
clear all

cap frame change default

cap ssc install regsave

//Filepaths
{
	global longleaf "/proj/schleduc/"
	global wake		"${longleaf}wake/"
	global logs		"${wake}logs/"
	global data 	"${wake}data/"
	global fromwake	"${data}original_xfer/"
	global scratch	"${wake}scratch/"
	global archive	"${data}archive/24JUL19_archive"
	global config	"${data}config_versions/"
}

local date_time "190814_2115"
local date_time "190815_1030"
local date_time "190815_1200"
local date_time "190827_0700"
local date_time "190827_2200"
local date_time "190828_1000"
local date_time "190828_2130"
local date_time "190829_1230"
local date_time "190904_2230"
local date_time "190905_1145"
local date_time "190918_1005"
local date_time "190924_1400"
local date_time "191008_1030"
local date_time "191014_1100"
local date_time "191015_0030"
local date_time "191024_0900"
local date_time "191104_1740"
local date_time "191112_1300"
local date_time "191113_0930"
local date_time "191205_1000"
local date_time "200309_1000"
local date_time "200408_2200"
local date_time "200412_1030"
local date_time "200414_1500"
local date_time "200416_2300"
local date_time "200420_1000"
local date_time "200428_1600"
local date_time "200429_1800"
local date_time "200430_1500"
}

local folder_name "models_191113"
local folder_name "models_191205"
local folder_name "models_200302"
local folder_name "models_200309"
local folder_name "models_200409"
local folder_name "models_200414"
local folder_name "sc_200416"
local folder_name "sc_200420"
local folder_name "sc_200428"
local folder_name "sc_200430"

**Reassignment Dummies**
local d1 "d1_pre4up d1_pre3 d1_pre2 d1_pre1 d1_node_reassigned d1_post1 d1_post2 d1_post3 d1_post4up "
local d2 "d2_pre4up d2_pre3 d2_pre2 d2_pre1 d2_node_reassigned d2_post1 d2_post2 d2_post3 d2_post4up "
local d3 "d3_pre4up d3_pre3 d3_pre2 d3_pre1 d3_node_reassigned d3_post1 d3_post2 d3_post3 d3_post4up "
local d3 "d3_pre4up d3_pre3 d3_pre2 d3_pre1 d3_node_reassigned d3_post1 d3_post2 d3_post3 d3_post4up "

**Reassignment Dummies - Attend Base Interaction**
local d1_attend_base "d1_node_reassigned_attend_base d1_pre1_attend_base d1_pre2_attend_base d1_pre3_attend_base d1_pre4up_attend_base d1_post1_attend_base d1_post2_attend_base d1_post3_attend_base d1_post4up_attend_base "
local d2_attend_base "d2_node_reassigned_attend_base d2_pre1_attend_base d2_pre2_attend_base d2_pre3_attend_base d2_pre4up_attend_base d2_post1_attend_base d2_post2_attend_base d2_post3_attend_base d2_post4up_attend_base "
local d3_attend_base "d3_node_reassigned_attend_base d3_pre1_attend_base d3_pre2_attend_base d3_pre3_attend_base d3_pre4up_attend_base d3_post1_attend_base d3_post2_attend_base d3_post3_attend_base d3_post4up_attend_base "
local d4_attend_base "d4_node_reassigned_attend_base d4_pre1_attend_base d4_pre2_attend_base d4_pre3_attend_base d4_pre4up_attend_base d4_post1_attend_base d4_post2_attend_base d4_post3_attend_base d4_post4up_attend_base "

**Reassignment Dummies - Year Interaction**
//This is complex and needs to be done in several steps
//Year Locals - Written Out
{
local d1_year1 "d1_pre4up_year_1999 d1_pre3_year_1999 d1_pre2_year_1999 d1_pre1_year_1999 d1_node_reassigned_year_1999 d1_post1_year_1999 d1_post2_year_1999 d1_post3_year_1999 d1_post4up_year_1999 "
local d2_year1 "d2_node_reassigned_year_1999 d2_pre1_year_1999 d2_pre2_year_1999 d2_pre3_year_1999 d2_pre4up_year_1999 d2_post1_year_1999 d2_post2_year_1999 d2_post3_year_1999 d2_post4up_year_1999 "
local d3_year1 "d3_node_reassigned_year_1999 d3_pre1_year_1999 d3_pre2_year_1999 d3_pre3_year_1999 d3_pre4up_year_1999 d3_post1_year_1999 d3_post2_year_1999 d3_post3_year_1999 d3_post4up_year_1999 "
local d4_year1 "d4_node_reassigned_year_1999 d4_pre1_year_1999 d4_pre2_year_1999 d4_pre3_year_1999 d4_pre4up_year_1999 d4_post1_year_1999 d4_post2_year_1999 d4_post3_year_1999 d4_post4up_year_1999 "

local d1_year2 "d1_pre4up_year_2000 d1_pre3_year_2000 d1_pre2_year_2000 d1_pre1_year_2000 d1_node_reassigned_year_2000 d1_post1_year_2000 d1_post2_year_2000 d1_post3_year_2000 d1_post4up_year_2000 "
local d2_year2 "d2_node_reassigned_year_2000 d2_pre1_year_2000 d2_pre2_year_2000 d2_pre3_year_2000 d2_pre4up_year_2000 d2_post1_year_2000 d2_post2_year_2000 d2_post3_year_2000 d2_post4up_year_2000 "
local d3_year2 "d3_node_reassigned_year_2000 d3_pre1_year_2000 d3_pre2_year_2000 d3_pre3_year_2000 d3_pre4up_year_2000 d3_post1_year_2000 d3_post2_year_2000 d3_post3_year_2000 d3_post4up_year_2000 "
local d4_year2 "d4_node_reassigned_year_2000 d4_pre1_year_2000 d4_pre2_year_2000 d4_pre3_year_2000 d4_pre4up_year_2000 d4_post1_year_2000 d4_post2_year_2000 d4_post3_year_2000 d4_post4up_year_2000 "

local d1_year3 "d1_pre4up_year_2001 d1_pre3_year_2001 d1_pre2_year_2001 d1_pre1_year_2001 d1_node_reassigned_year_2001 d1_post1_year_2001 d1_post2_year_2001 d1_post3_year_2001 d1_post4up_year_2001 "
local d2_year3 "d2_node_reassigned_year_2001 d2_pre1_year_2001 d2_pre2_year_2001 d2_pre3_year_2001 d2_pre4up_year_2001 d2_post1_year_2001 d2_post2_year_2001 d2_post3_year_2001 d2_post4up_year_2001 "
local d3_year3 "d3_node_reassigned_year_2001 d3_pre1_year_2001 d3_pre2_year_2001 d3_pre3_year_2001 d3_pre4up_year_2001 d3_post1_year_2001 d3_post2_year_2001 d3_post3_year_2001 d3_post4up_year_2001 "
local d4_year3 "d4_node_reassigned_year_2001 d4_pre1_year_2001 d4_pre2_year_2001 d4_pre3_year_2001 d4_pre4up_year_2001 d4_post1_year_2001 d4_post2_year_2001 d4_post3_year_2001 d4_post4up_year_2001 "

local d1_year4 "d1_pre4up_year_2002 d1_pre3_year_2002 d1_pre2_year_2002 d1_pre1_year_2002 d1_node_reassigned_year_2002  d1_post1_year_2002 d1_post2_year_2002 d1_post3_year_2002 d1_post4up_year_2002 "
local d2_year4 "d2_node_reassigned_year_2002 d2_pre1_year_2002 d2_pre2_year_2002 d2_pre3_year_2002 d2_pre4up_year_2002 d2_post1_year_2002 d2_post2_year_2002 d2_post3_year_2002 d2_post4up_year_2002 "
local d3_year4 "d3_node_reassigned_year_2002 d3_pre1_year_2002 d3_pre2_year_2002 d3_pre3_year_2002 d3_pre4up_year_2002 d3_post1_year_2002 d3_post2_year_2002 d3_post3_year_2002 d3_post4up_year_2002 "
local d4_year4 "d4_node_reassigned_year_2002 d4_pre1_year_2002 d4_pre2_year_2002 d4_pre3_year_2002 d4_pre4up_year_2002 d4_post1_year_2002 d4_post2_year_2002 d4_post3_year_2002 d4_post4up_year_2002 "

local d1_year5 "d1_pre4up_year_2003 d1_pre3_year_2003 d1_pre2_year_2003 d1_pre1_year_2003 d1_node_reassigned_year_2003 d1_post1_year_2003 d1_post2_year_2003 d1_post3_year_2003 d1_post4up_year_2003 "
local d2_year5 "d2_node_reassigned_year_2003 d2_pre1_year_2003 d2_pre2_year_2003 d2_pre3_year_2003 d2_pre4up_year_2003 d2_post1_year_2003 d2_post2_year_2003 d2_post3_year_2003 d2_post4up_year_2003 "
local d3_year5 "d3_node_reassigned_year_2003 d3_pre1_year_2003 d3_pre2_year_2003 d3_pre3_year_2003 d3_pre4up_year_2003 d3_post1_year_2003 d3_post2_year_2003 d3_post3_year_2003 d3_post4up_year_2003 "
local d4_year5 "d4_node_reassigned_year_2003 d4_pre1_year_2003 d4_pre2_year_2003 d4_pre3_year_2003 d4_pre4up_year_2003 d4_post1_year_2003 d4_post2_year_2003 d4_post3_year_2003 d4_post4up_year_2003 "

local d1_year6 "d1_pre4up_year_2004 d1_pre3_year_2004 d1_pre2_year_2004 d1_pre1_year_2004 d1_node_reassigned_year_2004 d1_post1_year_2004 d1_post2_year_2004 d1_post3_year_2004 d1_post4up_year_2004 "
local d2_year6 "d2_node_reassigned_year_2004 d2_pre1_year_2004 d2_pre2_year_2004 d2_pre3_year_2004 d2_pre4up_year_2004 d2_post1_year_2004 d2_post2_year_2004 d2_post3_year_2004 d2_post4up_year_2004 "
local d3_year6 "d3_node_reassigned_year_2004 d3_pre1_year_2004 d3_pre2_year_2004 d3_pre3_year_2004 d3_pre4up_year_2004 d3_post1_year_2004 d3_post2_year_2004 d3_post3_year_2004 d3_post4up_year_2004 "
local d4_year6 "d4_node_reassigned_year_2004 d4_pre1_year_2004 d4_pre2_year_2004 d4_pre3_year_2004 d4_pre4up_year_2004 d4_post1_year_2004 d4_post2_year_2004 d4_post3_year_2004 d4_post4up_year_2004 "

local d1_year7 "d1_pre4up_year_2005 d1_pre3_year_2005 d1_pre2_year_2005 d1_pre1_year_2005 d1_node_reassigned_year_2005 d1_post1_year_2005 d1_post2_year_2005 d1_post3_year_2005 d1_post4up_year_2005 "
local d2_year7 "d2_node_reassigned_year_2005 d2_pre1_year_2005 d2_pre2_year_2005 d2_pre3_year_2005 d2_pre4up_year_2005 d2_post1_year_2005 d2_post2_year_2005 d2_post3_year_2005 d2_post4up_year_2005 "
local d3_year7 "d3_node_reassigned_year_2005 d3_pre1_year_2005 d3_pre2_year_2005 d3_pre3_year_2005 d3_pre4up_year_2005 d3_post1_year_2005 d3_post2_year_2005 d3_post3_year_2005 d3_post4up_year_2005 "
local d4_year7 "d4_node_reassigned_year_2005 d4_pre1_year_2005 d4_pre2_year_2005 d4_pre3_year_2005 d4_pre4up_year_2005 d4_post1_year_2005 d4_post2_year_2005 d4_post3_year_2005 d4_post4up_year_2005 "

local d1_year8 "d1_pre4up_year_2006 d1_pre3_year_2006 d1_pre2_year_2006 d1_pre1_year_2006 d1_node_reassigned_year_2006  d1_post1_year_2006 d1_post2_year_2006 d1_post3_year_2006 d1_post4up_year_2006 "
local d2_year8 "d2_node_reassigned_year_2006 d2_pre1_year_2006 d2_pre2_year_2006 d2_pre3_year_2006 d2_pre4up_year_2006 d2_post1_year_2006 d2_post2_year_2006 d2_post3_year_2006 d2_post4up_year_2006 "
local d3_year8 "d3_node_reassigned_year_2006 d3_pre1_year_2006 d3_pre2_year_2006 d3_pre3_year_2006 d3_pre4up_year_2006 d3_post1_year_2006 d3_post2_year_2006 d3_post3_year_2006 d3_post4up_year_2006 "
local d4_year8 "d4_node_reassigned_year_2006 d4_pre1_year_2006 d4_pre2_year_2006 d4_pre3_year_2006 d4_pre4up_year_2006 d4_post1_year_2006 d4_post2_year_2006 d4_post3_year_2006 d4_post4up_year_2006 "

local d1_year9 "d1_pre4up_year_2007 d1_pre3_year_2007 d1_pre2_year_2007 d1_pre1_year_2007 d1_node_reassigned_year_2007 d1_post1_year_2007 d1_post2_year_2007 d1_post3_year_2007 d1_post4up_year_2007 "
local d2_year9 "d2_node_reassigned_year_2007 d2_pre1_year_2007 d2_pre2_year_2007 d2_pre3_year_2007 d2_pre4up_year_2007 d2_post1_year_2007 d2_post2_year_2007 d2_post3_year_2007 d2_post4up_year_2007 "
local d3_year9 "d3_node_reassigned_year_2007 d3_pre1_year_2007 d3_pre2_year_2007 d3_pre3_year_2007 d3_pre4up_year_2007 d3_post1_year_2007 d3_post2_year_2007 d3_post3_year_2007 d3_post4up_year_2007 "
local d4_year9 "d4_node_reassigned_year_2007 d4_pre1_year_2007 d4_pre2_year_2007 d4_pre3_year_2007 d4_pre4up_year_2007 d4_post1_year_2007 d4_post2_year_2007 d4_post3_year_2007 d4_post4up_year_2007 "

local d1_year10 "d1_pre4up_year_2008 d1_pre3_year_2008 d1_pre2_year_2008 d1_pre1_year_2008 d1_node_reassigned_year_2008 d1_post1_year_2008 d1_post2_year_2008 d1_post3_year_2008 d1_post4up_year_2008 "
local d2_year10 "d2_node_reassigned_year_2008 d2_pre1_year_2008 d2_pre2_year_2008 d2_pre3_year_2008 d2_pre4up_year_2008 d2_post1_year_2008 d2_post2_year_2008 d2_post3_year_2008 d2_post4up_year_2008 "
local d3_year10 "d3_node_reassigned_year_2008 d3_pre1_year_2008 d3_pre2_year_2008 d3_pre3_year_2008 d3_pre4up_year_2008 d3_post1_year_2008 d3_post2_year_2008 d3_post3_year_2008 d3_post4up_year_2008 "
local d4_year10 "d4_node_reassigned_year_2008 d4_pre1_year_2008 d4_pre2_year_2008 d4_pre3_year_2008 d4_pre4up_year_2008 d4_post1_year_2008 d4_post2_year_2008 d4_post3_year_2008 d4_post4up_year_2008 "

local d1_year11 "d1_pre4up_year_2009 d1_pre3_year_2009 d1_pre2_year_2009 d1_pre1_year_2009 d1_node_reassigned_year_2009 d1_post1_year_2009 d1_post2_year_2009 d1_post3_year_2009 d1_post4up_year_2009 "
local d2_year11 "d2_node_reassigned_year_2009 d2_pre1_year_2009 d2_pre2_year_2009 d2_pre3_year_2009 d2_pre4up_year_2009 d2_post1_year_2009 d2_post2_year_2009 d2_post3_year_2009 d2_post4up_year_2009 "
local d3_year11 "d3_node_reassigned_year_2009 d3_pre1_year_2009 d3_pre2_year_2009 d3_pre3_year_2009 d3_pre4up_year_2009 d3_post1_year_2009 d3_post2_year_2009 d3_post3_year_2009 d3_post4up_year_2009 "
local d4_year11 "d4_node_reassigned_year_2009 d4_pre1_year_2009 d4_pre2_year_2009 d4_pre3_year_2009 d4_pre4up_year_2009 d4_post1_year_2009 d4_post2_year_2009 d4_post3_year_2009 d4_post4up_year_2009 "

local d1_year12 "d1_pre4up_year_2010 d1_pre3_year_2010 d1_pre2_year_2010 d1_pre1_year_2010 d1_node_reassigned_year_2010 d1_post1_year_2010 d1_post2_year_2010 d1_post3_year_2010 d1_post4up_year_2010 "
local d2_year12 "d2_node_reassigned_year_2010 d2_pre1_year_2010 d2_pre2_year_2010 d2_pre3_year_2010 d2_pre4up_year_2010 d2_post1_year_2010 d2_post2_year_2010 d2_post3_year_2010 d2_post4up_year_2010 "
local d3_year12 "d3_node_reassigned_year_2010 d3_pre1_year_2010 d3_pre2_year_2010 d3_pre3_year_2010 d3_pre4up_year_2010 d3_post1_year_2010 d3_post2_year_2010 d3_post3_year_2010 d3_post4up_year_2010 "
local d4_year12 "d4_node_reassigned_year_2010 d4_pre1_year_2010 d4_pre2_year_2010 d4_pre3_year_2010 d4_pre4up_year_2010 d4_post1_year_2010 d4_post2_year_2010 d4_post3_year_2010 d4_post4up_year_2010 "


}

//Reassignment Year Locals
/*
Find: (d\d\_)(year)(\d)
Replace: \1re_year\3

Find: \_year\_
Replace: _re_year_
*/

//Tx * Reassignment 
{
local d1_re_year1 "d1_pre4up_re_year_1999 d1_pre3_re_year_1999 d1_pre2_re_year_1999 d1_pre1_re_year_1999 d1_node_reassigned_re_year_1999 d1_post1_re_year_1999 d1_post2_re_year_1999 d1_post3_re_year_1999 d1_post4up_re_year_1999 "
local d2_re_year1 "d2_node_reassigned_re_year_1999 d2_pre1_re_year_1999 d2_pre2_re_year_1999 d2_pre3_re_year_1999 d2_pre4up_re_year_1999 d2_post1_re_year_1999 d2_post2_re_year_1999 d2_post3_re_year_1999 d2_post4up_re_year_1999 "
local d3_re_year1 "d3_node_reassigned_re_year_1999 d3_pre1_re_year_1999 d3_pre2_re_year_1999 d3_pre3_re_year_1999 d3_pre4up_re_year_1999 d3_post1_re_year_1999 d3_post2_re_year_1999 d3_post3_re_year_1999 d3_post4up_re_year_1999 "
local d4_re_year1 "d4_node_reassigned_re_year_1999 d4_pre1_re_year_1999 d4_pre2_re_year_1999 d4_pre3_re_year_1999 d4_pre4up_re_year_1999 d4_post1_re_year_1999 d4_post2_re_year_1999 d4_post3_re_year_1999 d4_post4up_re_year_1999 "

local d1_re_year2 "d1_pre4up_re_year_2000 d1_pre3_re_year_2000 d1_pre2_re_year_2000 d1_pre1_re_year_2000 d1_node_reassigned_re_year_2000 d1_post1_re_year_2000 d1_post2_re_year_2000 d1_post3_re_year_2000 d1_post4up_re_year_2000 "
local d2_re_year2 "d2_node_reassigned_re_year_2000 d2_pre1_re_year_2000 d2_pre2_re_year_2000 d2_pre3_re_year_2000 d2_pre4up_re_year_2000 d2_post1_re_year_2000 d2_post2_re_year_2000 d2_post3_re_year_2000 d2_post4up_re_year_2000 "
local d3_re_year2 "d3_node_reassigned_re_year_2000 d3_pre1_re_year_2000 d3_pre2_re_year_2000 d3_pre3_re_year_2000 d3_pre4up_re_year_2000 d3_post1_re_year_2000 d3_post2_re_year_2000 d3_post3_re_year_2000 d3_post4up_re_year_2000 "
local d4_re_year2 "d4_node_reassigned_re_year_2000 d4_pre1_re_year_2000 d4_pre2_re_year_2000 d4_pre3_re_year_2000 d4_pre4up_re_year_2000 d4_post1_re_year_2000 d4_post2_re_year_2000 d4_post3_re_year_2000 d4_post4up_re_year_2000 "

local d1_re_year3 "d1_pre4up_re_year_2001 d1_pre3_re_year_2001 d1_pre2_re_year_2001 d1_pre1_re_year_2001 d1_node_reassigned_re_year_2001 d1_post1_re_year_2001 d1_post2_re_year_2001 d1_post3_re_year_2001 d1_post4up_re_year_2001 "
local d2_re_year3 "d2_node_reassigned_re_year_2001 d2_pre1_re_year_2001 d2_pre2_re_year_2001 d2_pre3_re_year_2001 d2_pre4up_re_year_2001 d2_post1_re_year_2001 d2_post2_re_year_2001 d2_post3_re_year_2001 d2_post4up_re_year_2001 "
local d3_re_year3 "d3_node_reassigned_re_year_2001 d3_pre1_re_year_2001 d3_pre2_re_year_2001 d3_pre3_re_year_2001 d3_pre4up_re_year_2001 d3_post1_re_year_2001 d3_post2_re_year_2001 d3_post3_re_year_2001 d3_post4up_re_year_2001 "
local d4_re_year3 "d4_node_reassigned_re_year_2001 d4_pre1_re_year_2001 d4_pre2_re_year_2001 d4_pre3_re_year_2001 d4_pre4up_re_year_2001 d4_post1_re_year_2001 d4_post2_re_year_2001 d4_post3_re_year_2001 d4_post4up_re_year_2001 "

local d1_re_year4 "d1_pre4up_re_year_2002 d1_pre3_re_year_2002 d1_pre2_re_year_2002 d1_pre1_re_year_2002 d1_node_reassigned_re_year_2002 d1_post1_re_year_2002 d1_post2_re_year_2002 d1_post3_re_year_2002 d1_post4up_re_year_2002 "
local d2_re_year4 "d2_node_reassigned_re_year_2002 d2_pre1_re_year_2002 d2_pre2_re_year_2002 d2_pre3_re_year_2002 d2_pre4up_re_year_2002 d2_post1_re_year_2002 d2_post2_re_year_2002 d2_post3_re_year_2002 d2_post4up_re_year_2002 "
local d3_re_year4 "d3_node_reassigned_re_year_2002 d3_pre1_re_year_2002 d3_pre2_re_year_2002 d3_pre3_re_year_2002 d3_pre4up_re_year_2002 d3_post1_re_year_2002 d3_post2_re_year_2002 d3_post3_re_year_2002 d3_post4up_re_year_2002 "
local d4_re_year4 "d4_node_reassigned_re_year_2002 d4_pre1_re_year_2002 d4_pre2_re_year_2002 d4_pre3_re_year_2002 d4_pre4up_re_year_2002 d4_post1_re_year_2002 d4_post2_re_year_2002 d4_post3_re_year_2002 d4_post4up_re_year_2002 "

local d1_re_year5 "d1_pre4up_re_year_2003 d1_pre3_re_year_2003 d1_pre2_re_year_2003 d1_pre1_re_year_2003 d1_node_reassigned_re_year_2003 d1_post1_re_year_2003 d1_post2_re_year_2003 d1_post3_re_year_2003 d1_post4up_re_year_2003 "
local d2_re_year5 "d2_node_reassigned_re_year_2003 d2_pre1_re_year_2003 d2_pre2_re_year_2003 d2_pre3_re_year_2003 d2_pre4up_re_year_2003 d2_post1_re_year_2003 d2_post2_re_year_2003 d2_post3_re_year_2003 d2_post4up_re_year_2003 "
local d3_re_year5 "d3_node_reassigned_re_year_2003 d3_pre1_re_year_2003 d3_pre2_re_year_2003 d3_pre3_re_year_2003 d3_pre4up_re_year_2003 d3_post1_re_year_2003 d3_post2_re_year_2003 d3_post3_re_year_2003 d3_post4up_re_year_2003 "
local d4_re_year5 "d4_node_reassigned_re_year_2003 d4_pre1_re_year_2003 d4_pre2_re_year_2003 d4_pre3_re_year_2003 d4_pre4up_re_year_2003 d4_post1_re_year_2003 d4_post2_re_year_2003 d4_post3_re_year_2003 d4_post4up_re_year_2003 "

local d1_re_year6 "d1_pre4up_re_year_2004 d1_pre3_re_year_2004 d1_pre2_re_year_2004 d1_pre1_re_year_2004 d1_node_reassigned_re_year_2004 d1_post1_re_year_2004 d1_post2_re_year_2004 d1_post3_re_year_2004 d1_post4up_re_year_2004 "
local d2_re_year6 "d2_node_reassigned_re_year_2004 d2_pre1_re_year_2004 d2_pre2_re_year_2004 d2_pre3_re_year_2004 d2_pre4up_re_year_2004 d2_post1_re_year_2004 d2_post2_re_year_2004 d2_post3_re_year_2004 d2_post4up_re_year_2004 "
local d3_re_year6 "d3_node_reassigned_re_year_2004 d3_pre1_re_year_2004 d3_pre2_re_year_2004 d3_pre3_re_year_2004 d3_pre4up_re_year_2004 d3_post1_re_year_2004 d3_post2_re_year_2004 d3_post3_re_year_2004 d3_post4up_re_year_2004 "
local d4_re_year6 "d4_node_reassigned_re_year_2004 d4_pre1_re_year_2004 d4_pre2_re_year_2004 d4_pre3_re_year_2004 d4_pre4up_re_year_2004 d4_post1_re_year_2004 d4_post2_re_year_2004 d4_post3_re_year_2004 d4_post4up_re_year_2004 "

local d1_re_year7 "d1_pre4up_re_year_2005 d1_pre3_re_year_2005 d1_pre2_re_year_2005 d1_pre1_re_year_2005 d1_node_reassigned_re_year_2005 d1_post1_re_year_2005 d1_post2_re_year_2005 d1_post3_re_year_2005 d1_post4up_re_year_2005 "
local d2_re_year7 "d2_node_reassigned_re_year_2005 d2_pre1_re_year_2005 d2_pre2_re_year_2005 d2_pre3_re_year_2005 d2_pre4up_re_year_2005 d2_post1_re_year_2005 d2_post2_re_year_2005 d2_post3_re_year_2005 d2_post4up_re_year_2005 "
local d3_re_year7 "d3_node_reassigned_re_year_2005 d3_pre1_re_year_2005 d3_pre2_re_year_2005 d3_pre3_re_year_2005 d3_pre4up_re_year_2005 d3_post1_re_year_2005 d3_post2_re_year_2005 d3_post3_re_year_2005 d3_post4up_re_year_2005 "
local d4_re_year7 "d4_node_reassigned_re_year_2005 d4_pre1_re_year_2005 d4_pre2_re_year_2005 d4_pre3_re_year_2005 d4_pre4up_re_year_2005 d4_post1_re_year_2005 d4_post2_re_year_2005 d4_post3_re_year_2005 d4_post4up_re_year_2005 "

local d1_re_year8 "d1_pre4up_re_year_2006 d1_pre3_re_year_2006 d1_pre2_re_year_2006 d1_pre1_re_year_2006 d1_node_reassigned_re_year_2006 d1_post1_re_year_2006 d1_post2_re_year_2006 d1_post3_re_year_2006 d1_post4up_re_year_2006 "
local d2_re_year8 "d2_node_reassigned_re_year_2006 d2_pre1_re_year_2006 d2_pre2_re_year_2006 d2_pre3_re_year_2006 d2_pre4up_re_year_2006 d2_post1_re_year_2006 d2_post2_re_year_2006 d2_post3_re_year_2006 d2_post4up_re_year_2006 "
local d3_re_year8 "d3_node_reassigned_re_year_2006 d3_pre1_re_year_2006 d3_pre2_re_year_2006 d3_pre3_re_year_2006 d3_pre4up_re_year_2006 d3_post1_re_year_2006 d3_post2_re_year_2006 d3_post3_re_year_2006 d3_post4up_re_year_2006 "
local d4_re_year8 "d4_node_reassigned_re_year_2006 d4_pre1_re_year_2006 d4_pre2_re_year_2006 d4_pre3_re_year_2006 d4_pre4up_re_year_2006 d4_post1_re_year_2006 d4_post2_re_year_2006 d4_post3_re_year_2006 d4_post4up_re_year_2006 "

local d1_re_year9 "d1_pre4up_re_year_2007 d1_pre3_re_year_2007 d1_pre2_re_year_2007 d1_pre1_re_year_2007 d1_node_reassigned_re_year_2007 d1_post1_re_year_2007 d1_post2_re_year_2007 d1_post3_re_year_2007 d1_post4up_re_year_2007 "
local d2_re_year9 "d2_node_reassigned_re_year_2007 d2_pre1_re_year_2007 d2_pre2_re_year_2007 d2_pre3_re_year_2007 d2_pre4up_re_year_2007 d2_post1_re_year_2007 d2_post2_re_year_2007 d2_post3_re_year_2007 d2_post4up_re_year_2007 "
local d3_re_year9 "d3_node_reassigned_re_year_2007 d3_pre1_re_year_2007 d3_pre2_re_year_2007 d3_pre3_re_year_2007 d3_pre4up_re_year_2007 d3_post1_re_year_2007 d3_post2_re_year_2007 d3_post3_re_year_2007 d3_post4up_re_year_2007 "
local d4_re_year9 "d4_node_reassigned_re_year_2007 d4_pre1_re_year_2007 d4_pre2_re_year_2007 d4_pre3_re_year_2007 d4_pre4up_re_year_2007 d4_post1_re_year_2007 d4_post2_re_year_2007 d4_post3_re_year_2007 d4_post4up_re_year_2007 "

local d1_re_year10 "d1_pre4up_re_year_2008 d1_pre3_re_year_2008 d1_pre2_re_year_2008 d1_pre1_re_year_2008 d1_node_reassigned_re_year_2008 d1_post1_re_year_2008 d1_post2_re_year_2008 d1_post3_re_year_2008 d1_post4up_re_year_2008 "
local d2_re_year10 "d2_node_reassigned_re_year_2008 d2_pre1_re_year_2008 d2_pre2_re_year_2008 d2_pre3_re_year_2008 d2_pre4up_re_year_2008 d2_post1_re_year_2008 d2_post2_re_year_2008 d2_post3_re_year_2008 d2_post4up_re_year_2008 "
local d3_re_year10 "d3_node_reassigned_re_year_2008 d3_pre1_re_year_2008 d3_pre2_re_year_2008 d3_pre3_re_year_2008 d3_pre4up_re_year_2008 d3_post1_re_year_2008 d3_post2_re_year_2008 d3_post3_re_year_2008 d3_post4up_re_year_2008 "
local d4_re_year10 "d4_node_reassigned_re_year_2008 d4_pre1_re_year_2008 d4_pre2_re_year_2008 d4_pre3_re_year_2008 d4_pre4up_re_year_2008 d4_post1_re_year_2008 d4_post2_re_year_2008 d4_post3_re_year_2008 d4_post4up_re_year_2008 "

local d1_re_year11 "d1_pre4up_re_year_2009 d1_pre3_re_year_2009 d1_pre2_re_year_2009 d1_pre1_re_year_2009 d1_node_reassigned_re_year_2009 d1_post1_re_year_2009 d1_post2_re_year_2009 d1_post3_re_year_2009 d1_post4up_re_year_2009 "
local d2_re_year11 "d2_node_reassigned_re_year_2009 d2_pre1_re_year_2009 d2_pre2_re_year_2009 d2_pre3_re_year_2009 d2_pre4up_re_year_2009 d2_post1_re_year_2009 d2_post2_re_year_2009 d2_post3_re_year_2009 d2_post4up_re_year_2009 "
local d3_re_year11 "d3_node_reassigned_re_year_2009 d3_pre1_re_year_2009 d3_pre2_re_year_2009 d3_pre3_re_year_2009 d3_pre4up_re_year_2009 d3_post1_re_year_2009 d3_post2_re_year_2009 d3_post3_re_year_2009 d3_post4up_re_year_2009 "
local d4_re_year11 "d4_node_reassigned_re_year_2009 d4_pre1_re_year_2009 d4_pre2_re_year_2009 d4_pre3_re_year_2009 d4_pre4up_re_year_2009 d4_post1_re_year_2009 d4_post2_re_year_2009 d4_post3_re_year_2009 d4_post4up_re_year_2009 "

local d1_re_year12 "d1_pre4up_re_year_2010 d1_pre3_re_year_2010 d1_pre2_re_year_2010 d1_pre1_re_year_2010 d1_node_reassigned_re_year_2010 d1_post1_re_year_2010 d1_post2_re_year_2010 d1_post3_re_year_2010 d1_post4up_re_year_2010 "
local d2_re_year12 "d2_node_reassigned_re_year_2010 d2_pre1_re_year_2010 d2_pre2_re_year_2010 d2_pre3_re_year_2010 d2_pre4up_re_year_2010 d2_post1_re_year_2010 d2_post2_re_year_2010 d2_post3_re_year_2010 d2_post4up_re_year_2010 "
local d3_re_year12 "d3_node_reassigned_re_year_2010 d3_pre1_re_year_2010 d3_pre2_re_year_2010 d3_pre3_re_year_2010 d3_pre4up_re_year_2010 d3_post1_re_year_2010 d3_post2_re_year_2010 d3_post3_re_year_2010 d3_post4up_re_year_2010 "
local d4_re_year12 "d4_node_reassigned_re_year_2010 d4_pre1_re_year_2010 d4_pre2_re_year_2010 d4_pre3_re_year_2010 d4_pre4up_re_year_2010 d4_post1_re_year_2010 d4_post2_re_year_2010 d4_post3_re_year_2010 d4_post4up_re_year_2010 "


}


**Reassignment Dummies - New School - Interaction Version**
local d1_new_sch "d1_pre4up_new_sch d1_pre3_new_sch d1_pre2_new_sch d1_pre1_new_sch d1_node_reassigned_new_sch d1_post1_new_sch d1_post2_new_sch d1_post3_new_sch d1_post4up_new_sch "
local d2_new_sch "d2_pre4up_new_sch d2_pre3_new_sch d2_pre2_new_sch d2_pre1_new_sch d2_node_reassigned_new_sch d2_post1_new_sch d2_post2_new_sch d2_post3_new_sch d2_post4up_new_sch "
local d3_new_sch "d3_pre4up_new_sch d3_pre3_new_sch d3_pre2_new_sch d3_pre1_new_sch d3_node_reassigned_new_sch d3_post1_new_sch d3_post2_new_sch d3_post3_new_sch d3_post4up_new_sch "
local d4_new_sch "d4_pre4up_new_sch d4_pre3_new_sch d4_pre2_new_sch d4_pre1_new_sch d4_node_reassigned_new_sch d4_post1_new_sch d4_post2_new_sch d4_post3_new_sch d4_post4up_new_sch "

local omit 				"d1_pre1"
local omit_new			"d1_new_pre1"
local omit_ex 			"d1_ex_pre1"
local omit_attend_base	"d1_pre1_attend_base"
local omit_year 		"d1_pre1_year"
local omit_year1		"d1_pre1_year_1999  d1_pre1_year_2000  d1_pre1_year_2001  d1_pre1_year_2002  d1_pre1_year_2003  d1_pre1_year_2004  d1_pre1_year_2005  d1_pre1_year_2006  d1_pre1_year_2007  d1_pre1_year_2008  d1_pre1_year_2009  d1_pre1_year_2010"
local omit_re_year1		"d1_pre1_re_year_1999  d1_pre1_re_year_2000  d1_pre1_re_year_2001  d1_pre1_re_year_2002  d1_pre1_re_year_2003  d1_pre1_re_year_2004  d1_pre1_re_year_2005  d1_pre1_re_year_2006  d1_pre1_re_year_2007  d1_pre1_re_year_2008  d1_pre1_re_year_2009  d1_pre1_re_year_2010"

local omit_new_sch 		"d1_pre1_new_sch"

//Treatment Variables - List
{
local treat_vars "never_reassigned d1_node_reassigned d1_pre2 d1_pre3up d1_post1 d1_post2 d1_post3up  d2_node_reassigned d2_pre1 d2_pre2 d2_pre3up d2_post1 d2_post2 d2_post3up d3_node_reassigned d3_pre1 d3_pre2 d3_pre3up d3_post1 d3_post2 d3_post3up"

local treat_vars ""
local treat_vars : list treat_vars | d1
local treat_vars : list treat_vars | d2
local treat_vars : list treat_vars | d3
local treat_vars : list treat_vars | d4
local treat_vars : list treat_vars - omit

local treat_new  ""
local treat_new : list treat_new | d1_new
local treat_new : list treat_new | d2_new
local treat_new : list treat_new | d3_new
local treat_new : list treat_new | d4_new
local treat_new : list treat_new - omit_new

local treat_ex  ""
local treat_ex : list treat_ex | d1_ex
local treat_ex : list treat_ex | d2_ex
local treat_ex : list treat_ex | d3_ex
local treat_ex : list treat_ex | d4_ex
local treat_ex : list treat_ex - omit_ex

local treat_attend_base ""
local treat_attend_base : list treat_attend_base | d1_attend_base
local treat_attend_base : list treat_attend_base | d2_attend_base
local treat_attend_base : list treat_attend_base | d3_attend_base
local treat_attend_base : list treat_attend_base | d4_attend_base
local treat_attend_base : list treat_attend_base - omit_attend_base

local treat_year ""
local treat_year : list treat_year | d1_year
local treat_year : list treat_year | d2_year
local treat_year : list treat_year | d3_year
local treat_year : list treat_year | d4_year
local treat_year : list treat_year - omit_year

local treat_year1_test ""
*local treat_year1 : list treat_year1 | d1_year1 
local treat_year1_test : list treat_year1_test | d1_year2
local treat_year1_test : list treat_year1_test | d1_year3 
local treat_year1_test : list treat_year1_test | d1_year4 
local treat_year1_test : list treat_year1_test | d1_year5
local treat_year1_test : list treat_year1_test | d1_year6
local treat_year1_test : list treat_year1_test | d1_year7
local treat_year1_test : list treat_year1_test | d1_year8
local treat_year1_test : list treat_year1_test | d1_year9
local treat_year1_test : list treat_year1_test | d1_year10
local treat_year1_test : list treat_year1_test | d1_year11
local treat_year1_test : list treat_year1_test | d1_year12

local treat_year1 ""
local treat_year1 : list treat_year1 | treat_year1_test
*local treat_year1 : list treat_year1 | d2_year1 
local treat_year1 : list treat_year1 | d2_year2
local treat_year1 : list treat_year1 | d2_year3 
local treat_year1 : list treat_year1 | d2_year4 
local treat_year1 : list treat_year1 | d2_year5
local treat_year1 : list treat_year1 | d2_year6
local treat_year1 : list treat_year1 | d2_year7
local treat_year1 : list treat_year1 | d2_year8
local treat_year1 : list treat_year1 | d2_year9
local treat_year1 : list treat_year1 | d2_year10
local treat_year1 : list treat_year1 | d2_year11
local treat_year1 : list treat_year1 | d2_year12

*local treat_year1 : list treat_year1 | d3_year1 
local treat_year1 : list treat_year1 | d3_year2
local treat_year1 : list treat_year1 | d3_year3 
local treat_year1 : list treat_year1 | d3_year4 
local treat_year1 : list treat_year1 | d3_year5
local treat_year1 : list treat_year1 | d3_year6
local treat_year1 : list treat_year1 | d3_year7
local treat_year1 : list treat_year1 | d3_year8
local treat_year1 : list treat_year1 | d3_year9
local treat_year1 : list treat_year1 | d3_year10
local treat_year1 : list treat_year1 | d3_year11
local treat_year1 : list treat_year1 | d3_year12

*local treat_year1 : list treat_year1 | d4_year1 
local treat_year1 : list treat_year1 | d4_year2
local treat_year1 : list treat_year1 | d4_year3 
local treat_year1 : list treat_year1 | d4_year4 
local treat_year1 : list treat_year1 | d4_year5
local treat_year1 : list treat_year1 | d4_year6
local treat_year1 : list treat_year1 | d4_year7
local treat_year1 : list treat_year1 | d4_year8
local treat_year1 : list treat_year1 | d4_year9
local treat_year1 : list treat_year1 | d4_year10
local treat_year1 : list treat_year1 | d4_year11
local treat_year1 : list treat_year1 | d4_year12
local treat_year1 : list treat_year1 - omit_year1

local treat_re_year1 ""
*local treat_re_year1 : list treat_re_year1 | d1_re_year1 
local treat_re_year1 : list treat_re_year1 | d1_re_year2
local treat_re_year1 : list treat_re_year1 | d1_re_year3 
local treat_re_year1 : list treat_re_year1 | d1_re_year4 
local treat_re_year1 : list treat_re_year1 | d1_re_year5
local treat_re_year1 : list treat_re_year1 | d1_re_year6
local treat_re_year1 : list treat_re_year1 | d1_re_year7
local treat_re_year1 : list treat_re_year1 | d1_re_year8
local treat_re_year1 : list treat_re_year1 | d1_re_year9
local treat_re_year1 : list treat_re_year1 | d1_re_year10
local treat_re_year1 : list treat_re_year1 | d1_re_year11
local treat_re_year1 : list treat_re_year1 | d1_re_year12

*local treat_re_year1 : list treat_re_year1 | d2_re_year1 
local treat_re_year1 : list treat_re_year1 | d2_re_year2
local treat_re_year1 : list treat_re_year1 | d2_re_year3 
local treat_re_year1 : list treat_re_year1 | d2_re_year4 
local treat_re_year1 : list treat_re_year1 | d2_re_year5
local treat_re_year1 : list treat_re_year1 | d2_re_year6
local treat_re_year1 : list treat_re_year1 | d2_re_year7
local treat_re_year1 : list treat_re_year1 | d2_re_year8
local treat_re_year1 : list treat_re_year1 | d2_re_year9
local treat_re_year1 : list treat_re_year1 | d2_re_year10
local treat_re_year1 : list treat_re_year1 | d2_re_year11
local treat_re_year1 : list treat_re_year1 | d2_re_year12

*local treat_re_year1 : list treat_re_year1 | d3_re_year1 
local treat_re_year1 : list treat_re_year1 | d3_re_year2
local treat_re_year1 : list treat_re_year1 | d3_re_year3 
local treat_re_year1 : list treat_re_year1 | d3_re_year4 
local treat_re_year1 : list treat_re_year1 | d3_re_year5
local treat_re_year1 : list treat_re_year1 | d3_re_year6
local treat_re_year1 : list treat_re_year1 | d3_re_year7
local treat_re_year1 : list treat_re_year1 | d3_re_year8
local treat_re_year1 : list treat_re_year1 | d3_re_year9
local treat_re_year1 : list treat_re_year1 | d3_re_year10
local treat_re_year1 : list treat_re_year1 | d3_re_year11
local treat_re_year1 : list treat_re_year1 | d3_re_year12

*local treat_re_year1 : list treat_re_year1 | d4_re_year1 
local treat_re_year1 : list treat_re_year1 | d4_re_year2
local treat_re_year1 : list treat_re_year1 | d4_re_year3 
local treat_re_year1 : list treat_re_year1 | d4_re_year4 
local treat_re_year1 : list treat_re_year1 | d4_re_year5
local treat_re_year1 : list treat_re_year1 | d4_re_year6
local treat_re_year1 : list treat_re_year1 | d4_re_year7
local treat_re_year1 : list treat_re_year1 | d4_re_year8
local treat_re_year1 : list treat_re_year1 | d4_re_year9
local treat_re_year1 : list treat_re_year1 | d4_re_year10
local treat_re_year1 : list treat_re_year1 | d4_re_year11
local treat_re_year1 : list treat_re_year1 | d4_re_year12
local treat_re_year1 : list treat_re_year1 - omit_re_year1

local treat_new_sch ""
local treat_new_sch : list treat_new_sch | d1_new_sch
local treat_new_sch : list treat_new_sch | d2_new_sch
local treat_new_sch : list treat_new_sch | d3_new_sch
local treat_new_sch : list treat_new_sch | d4_new_sch
local treat_new_sch : list treat_new_sch - omit_new_sch
}

//More Locals
local grade "dgr0 dgr1 dgr2 dgr3 dgr4 dgr5 dgr6 dgr7 dgr8 dgr9 dgr10 dgr11 dgr12"
local race "d_race_1 d_race_2 d_race_3 d_race_4 d_race_5 d_race_6 d_race_7 "
local controls "spec_ed lep_current male "
local controls "spec_ed male "
local controls2 "p_in p_out lead_p_in lead_p_out "
local controls2_2 "p_in p_out p_in2 p_out2 lead_p_in lead_p_out "

local controls_sc "spec_ed male p_in p_out p_in2 p_out2"

//Local outcomes for regression
{
local test_outcomes "zeog_rd zeog_ma asx_zeog_rd asx_zeog_ma csx_zeog_rd csx_zeog_ma "
local behavior_outcomes "pabs chron_abs psusp dsusp moveschl "
local school_chars "race_brown_assigned race_brown_attend race_same_assigned race_same_attend "
local school_chars "race_br_ass race_br_att race_sm_ass race_sm_att "
local distances "sch_att_dist sch_ass_dist attend_base "
}

//Local outcomes list
{
local outcomes ""
local outcomes : list outcomes | distances
local outcomes : list outcomes | test_outcomes
local outcomes : list outcomes | behavior_outcomes
local outcomes : list outcomes | school_chars

local outcomes2 "moveschl attend_base sch_ass_dist asx_zeog_rd asx_zeog_ma race_br_ass race_sm_ass zeog_rd zeog_ma chron_abs dsusp"

local node_cluster "vce(cluster node_for_xtreg)"
local ass_cluster "vce(cluster sch_assigned) nonest"

local table_notes `"note("Note: Treatment varies at the Node-Grade-Year level.  Student Fixed Effects. Standard Errors are clustered at node level")"'
}

use "${scratch}reassignfx_file2.dta", clear

***************************************
***************************************
**************Models*******************
***************************************
***************************************

cap log using "${logs}re_fx_models_sc_`date_time'.txt", text replace name(ModelLog)
cap log close ModelLog

cap log using "${logs}re_fx_sc_`date_time'.txt", text replace name(BigLog)

di "*****************************************"
di "*****************************************"
di "***************`date_time'***************"
di "*****************************************"
di "*****************************************"

sum `outcomes2'

//Models
xtset node_for_xtreg

/*
Need:
	Base Model - Tx variables with p_in2 p_out2
	Base Model by Race 
	Base Model by Node Quintile
	Tx * Reassignment Year
		F-Test 1st reassignment coefficients for each year d1_node_reassigned, etc
	Student FE
	
*/

xtreg `treat_vars' `controls' `controls2' `race' `grade' i.year, fe `ass_cluster'
local name "Treat"
eststo new_`name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid replace
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace


foreach y of local outcomes2 {
cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)

di "*****************************************"
di "**************DV==`y'********************"
di "*****************************************"

cap log close ModelLog

//Baseline with spillover effects
xtreg `y' `treat_vars' `controls_sc'  `race' `grade' i.year, fe vce(cluster node_for_xtreg)
local name "`y'_base"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Attend Base Interactions - Base model
cap xtreg `y' `treat_vars' `treat_attend_base' `controls_sc' `race' `grade' i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_ab"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//New School Interactions - Base model
cap xtreg `y' `treat_vars' `treat_new_sch' `controls_sc' `race' `grade' i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_new"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog


//By Race
	foreach x in 3 4 5 {
		cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)

		display "**************d_race==`x'********************"
		
		cap log close ModelLog
		
		xtreg `y' `treat_vars' `controls_sc' `race' `grade' i.year if d_race_`x' == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		
		}
	
}

estout * using "${scratch}reassignfx/`date_time'_sc1.xls", cells(b(star fmt(%9.3f)) se) stats(N , fmt(%9.0g %9.3f))  varlabels(_cons Constant) varwidth(15) modelwidth(10) prefoot("") postfoot("") legend replace `table_notes' 


foreach y of local outcomes2 {
cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)

di "*****************************************"
di "**************DV==`y'********************"
di "*****************************************"

cap log close ModelLog

cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)

di "*****************************************"
di "**********Re_Year Interactions***********"
di "*****************************************"

cap log close ModelLog

xtreg `y' `treat_vars' `treat_re_year1' `controls_sc'  `race' `grade' i.year, fe vce(cluster node_for_xtreg)
local name "`y'_Tx_Re"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog


//By Node Achievement Quintile
	foreach q in 1 2 3 4 5 {
		cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)

		display "****************node EOG quintile==`q' (1 is low; 5 is high)********************"
		
		cap log close ModelLog

		xtreg `y' `treat_vars' `controls_sc' `race' `grade' i.year if q5_nx_zeog==`q', fe vce(cluster node_for_xtreg)
		local name "`y'_nq_`q'"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog


	}

}

estout * using "${scratch}reassignfx/`date_time'_sc2.xls", cells(b(star fmt(%9.3f)) se) stats(N , fmt(%9.0g %9.3f))  varlabels(_cons Constant) varwidth(15) modelwidth(10) prefoot("") postfoot("") legend replace `table_notes' 

xtset encrypted_sid year

foreach y of local outcomes2 {
cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)

di "*****************************************"
di "**************DV==`y'********************"
di "*****************************************"

cap log close ModelLog

cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)

di "*****************************************"
di "**********Student Fixed Effects**********"
di "*****************************************"

cap log close ModelLog

xtreg `y' `treat_vars' `controls_sc'  `race' `grade' i.year, fe vce(cluster node_for_xtreg) nonest
local name "`y'_Tx_SFE"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_sc_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog
}

estout * using "${scratch}reassignfx/`date_time'_sc.xls", cells(b(star fmt(%9.3f)) se) stats(N , fmt(%9.0g %9.3f))  varlabels(_cons Constant) varwidth(15) modelwidth(10) prefoot("") postfoot("") legend replace `table_notes' 


cap log close