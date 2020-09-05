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
}

local folder_name "models_191113"
local folder_name "models_191205"
local folder_name "models_200302"
local folder_name "models_200309"
local folder_name "models_200409"

**Reassignment Dummies**
local d1 "d1_node_reassigned d1_pre1 d1_pre2 d1_pre3 d1_pre4up d1_post1 d1_post2 d1_post3 d1_post4up "
local d2 "d2_node_reassigned d2_pre1 d2_pre2 d2_pre3 d2_pre4up d2_post1 d2_post2 d2_post3 d2_post4up "
local d3 "d3_node_reassigned d3_pre1 d3_pre2 d3_pre3 d3_pre4up d3_post1 d3_post2 d3_post3 d3_post4up "
local d4 "d4_node_reassigned d4_pre1 d4_pre2 d4_pre3 d4_pre4up d4_post1 d4_post2 d4_post3 d4_post4up "

/*
//Old Version
**Reassignment Dummies - New Schools**
local d1_new "d1_new_pre4up d1_new_pre3 d1_new_pre2 d1_new_pre1 d1_newsch_ass d1_new_post1 d1_new_post2 d1_new_post3 d1_new_post4up "
local d2_new "d2_new_pre4up d2_new_pre3 d2_new_pre2 d2_new_pre1 d2_newsch_ass d2_new_post1 d2_new_post2 d2_new_post3 d2_new_post4up "
local d3_new "d3_new_pre4up d3_new_pre3 d3_new_pre2 d3_new_pre1 d3_newsch_ass d3_new_post1 d3_new_post2 d3_new_post3 d3_new_post4up "
local d4_new "d4_new_pre4up d4_new_pre3 d4_new_pre2 d4_new_pre1 d4_newsch_ass d4_new_post1 d4_new_post2 d4_new_post3 d4_new_post4up "

**Reassignment Dummies - Existing Schools**
local d1_ex  "d1_ex_pre4up d1_ex_pre3 d1_ex_pre2 d1_ex_pre1 d1_exsch_ass d1_ex_post1 d1_ex_post2 d1_ex_post3 d1_ex_post4up "
local d2_ex  "d2_ex_pre4up d2_ex_pre3 d2_ex_pre2 d2_ex_pre1 d2_exsch_ass d2_ex_post1 d2_ex_post2 d2_ex_post3  d2_ex_post4up "
local d3_ex  "d3_ex_pre4up d3_ex_pre3 d3_ex_pre2 d3_ex_pre1 d3_exsch_ass d3_ex_post1 d3_ex_post2 d3_ex_post3 d3_ex_post4up "
local d4_ex  "d4_ex_pre4up d4_ex_pre3 d4_ex_pre2 d4_ex_pre1 d4_exsch_ass d4_ex_post1 d4_ex_post2 d4_ex_post3 d4_ex_post4up "
*/

**Reassignment Dummies - Attend Base Interaction**
local d1_attend_base "d1_node_reassigned_attend_base d1_pre1_attend_base d1_pre2_attend_base d1_pre3_attend_base d1_pre4up_attend_base d1_post1_attend_base d1_post2_attend_base d1_post3_attend_base d1_post4up_attend_base "
local d2_attend_base "d2_node_reassigned_attend_base d2_pre1_attend_base d2_pre2_attend_base d2_pre3_attend_base d2_pre4up_attend_base d2_post1_attend_base d2_post2_attend_base d2_post3_attend_base d2_post4up_attend_base "
local d3_attend_base "d3_node_reassigned_attend_base d3_pre1_attend_base d3_pre2_attend_base d3_pre3_attend_base d3_pre4up_attend_base d3_post1_attend_base d3_post2_attend_base d3_post3_attend_base d3_post4up_attend_base "
local d4_attend_base "d4_node_reassigned_attend_base d4_pre1_attend_base d4_pre2_attend_base d4_pre3_attend_base d4_pre4up_attend_base d4_post1_attend_base d4_post2_attend_base d4_post3_attend_base d4_post4up_attend_base "

**Reassignment Dummies - Year Interaction**
//This is complex and needs to be done in several steps
//Year Locals - Written Out
{
local d1_year1 "d1_node_reassigned_year_1999 d1_pre1_year_1999 d1_pre2_year_1999 d1_pre3_year_1999 d1_pre4up_year_1999 d1_post1_year_1999 d1_post2_year_1999 d1_post3_year_1999 d1_post4up_year_1999 "
local d2_year1 "d2_node_reassigned_year_1999 d2_pre1_year_1999 d2_pre2_year_1999 d2_pre3_year_1999 d2_pre4up_year_1999 d2_post1_year_1999 d2_post2_year_1999 d2_post3_year_1999 d2_post4up_year_1999 "
local d3_year1 "d3_node_reassigned_year_1999 d3_pre1_year_1999 d3_pre2_year_1999 d3_pre3_year_1999 d3_pre4up_year_1999 d3_post1_year_1999 d3_post2_year_1999 d3_post3_year_1999 d3_post4up_year_1999 "
local d4_year1 "d4_node_reassigned_year_1999 d4_pre1_year_1999 d4_pre2_year_1999 d4_pre3_year_1999 d4_pre4up_year_1999 d4_post1_year_1999 d4_post2_year_1999 d4_post3_year_1999 d4_post4up_year_1999 "

local d1_year2 "d1_node_reassigned_year_2000 d1_pre1_year_2000 d1_pre2_year_2000 d1_pre3_year_2000 d1_pre4up_year_2000 d1_post1_year_2000 d1_post2_year_2000 d1_post3_year_2000 d1_post4up_year_2000 "
local d2_year2 "d2_node_reassigned_year_2000 d2_pre1_year_2000 d2_pre2_year_2000 d2_pre3_year_2000 d2_pre4up_year_2000 d2_post1_year_2000 d2_post2_year_2000 d2_post3_year_2000 d2_post4up_year_2000 "
local d3_year2 "d3_node_reassigned_year_2000 d3_pre1_year_2000 d3_pre2_year_2000 d3_pre3_year_2000 d3_pre4up_year_2000 d3_post1_year_2000 d3_post2_year_2000 d3_post3_year_2000 d3_post4up_year_2000 "
local d4_year2 "d4_node_reassigned_year_2000 d4_pre1_year_2000 d4_pre2_year_2000 d4_pre3_year_2000 d4_pre4up_year_2000 d4_post1_year_2000 d4_post2_year_2000 d4_post3_year_2000 d4_post4up_year_2000 "

local d1_year3 "d1_node_reassigned_year_2001 d1_pre1_year_2001 d1_pre2_year_2001 d1_pre3_year_2001 d1_pre4up_year_2001 d1_post1_year_2001 d1_post2_year_2001 d1_post3_year_2001 d1_post4up_year_2001 "
local d2_year3 "d2_node_reassigned_year_2001 d2_pre1_year_2001 d2_pre2_year_2001 d2_pre3_year_2001 d2_pre4up_year_2001 d2_post1_year_2001 d2_post2_year_2001 d2_post3_year_2001 d2_post4up_year_2001 "
local d3_year3 "d3_node_reassigned_year_2001 d3_pre1_year_2001 d3_pre2_year_2001 d3_pre3_year_2001 d3_pre4up_year_2001 d3_post1_year_2001 d3_post2_year_2001 d3_post3_year_2001 d3_post4up_year_2001 "
local d4_year3 "d4_node_reassigned_year_2001 d4_pre1_year_2001 d4_pre2_year_2001 d4_pre3_year_2001 d4_pre4up_year_2001 d4_post1_year_2001 d4_post2_year_2001 d4_post3_year_2001 d4_post4up_year_2001 "

local d1_year4 "d1_node_reassigned_year_2002 d1_pre1_year_2002 d1_pre2_year_2002 d1_pre3_year_2002 d1_pre4up_year_2002 d1_post1_year_2002 d1_post2_year_2002 d1_post3_year_2002 d1_post4up_year_2002 "
local d2_year4 "d2_node_reassigned_year_2002 d2_pre1_year_2002 d2_pre2_year_2002 d2_pre3_year_2002 d2_pre4up_year_2002 d2_post1_year_2002 d2_post2_year_2002 d2_post3_year_2002 d2_post4up_year_2002 "
local d3_year4 "d3_node_reassigned_year_2002 d3_pre1_year_2002 d3_pre2_year_2002 d3_pre3_year_2002 d3_pre4up_year_2002 d3_post1_year_2002 d3_post2_year_2002 d3_post3_year_2002 d3_post4up_year_2002 "
local d4_year4 "d4_node_reassigned_year_2002 d4_pre1_year_2002 d4_pre2_year_2002 d4_pre3_year_2002 d4_pre4up_year_2002 d4_post1_year_2002 d4_post2_year_2002 d4_post3_year_2002 d4_post4up_year_2002 "

local d1_year5 "d1_node_reassigned_year_2003 d1_pre1_year_2003 d1_pre2_year_2003 d1_pre3_year_2003 d1_pre4up_year_2003 d1_post1_year_2003 d1_post2_year_2003 d1_post3_year_2003 d1_post4up_year_2003 "
local d2_year5 "d2_node_reassigned_year_2003 d2_pre1_year_2003 d2_pre2_year_2003 d2_pre3_year_2003 d2_pre4up_year_2003 d2_post1_year_2003 d2_post2_year_2003 d2_post3_year_2003 d2_post4up_year_2003 "
local d3_year5 "d3_node_reassigned_year_2003 d3_pre1_year_2003 d3_pre2_year_2003 d3_pre3_year_2003 d3_pre4up_year_2003 d3_post1_year_2003 d3_post2_year_2003 d3_post3_year_2003 d3_post4up_year_2003 "
local d4_year5 "d4_node_reassigned_year_2003 d4_pre1_year_2003 d4_pre2_year_2003 d4_pre3_year_2003 d4_pre4up_year_2003 d4_post1_year_2003 d4_post2_year_2003 d4_post3_year_2003 d4_post4up_year_2003 "

local d1_year6 "d1_node_reassigned_year_2004 d1_pre1_year_2004 d1_pre2_year_2004 d1_pre3_year_2004 d1_pre4up_year_2004 d1_post1_year_2004 d1_post2_year_2004 d1_post3_year_2004 d1_post4up_year_2004 "
local d2_year6 "d2_node_reassigned_year_2004 d2_pre1_year_2004 d2_pre2_year_2004 d2_pre3_year_2004 d2_pre4up_year_2004 d2_post1_year_2004 d2_post2_year_2004 d2_post3_year_2004 d2_post4up_year_2004 "
local d3_year6 "d3_node_reassigned_year_2004 d3_pre1_year_2004 d3_pre2_year_2004 d3_pre3_year_2004 d3_pre4up_year_2004 d3_post1_year_2004 d3_post2_year_2004 d3_post3_year_2004 d3_post4up_year_2004 "
local d4_year6 "d4_node_reassigned_year_2004 d4_pre1_year_2004 d4_pre2_year_2004 d4_pre3_year_2004 d4_pre4up_year_2004 d4_post1_year_2004 d4_post2_year_2004 d4_post3_year_2004 d4_post4up_year_2004 "

local d1_year7 "d1_node_reassigned_year_2005 d1_pre1_year_2005 d1_pre2_year_2005 d1_pre3_year_2005 d1_pre4up_year_2005 d1_post1_year_2005 d1_post2_year_2005 d1_post3_year_2005 d1_post4up_year_2005 "
local d2_year7 "d2_node_reassigned_year_2005 d2_pre1_year_2005 d2_pre2_year_2005 d2_pre3_year_2005 d2_pre4up_year_2005 d2_post1_year_2005 d2_post2_year_2005 d2_post3_year_2005 d2_post4up_year_2005 "
local d3_year7 "d3_node_reassigned_year_2005 d3_pre1_year_2005 d3_pre2_year_2005 d3_pre3_year_2005 d3_pre4up_year_2005 d3_post1_year_2005 d3_post2_year_2005 d3_post3_year_2005 d3_post4up_year_2005 "
local d4_year7 "d4_node_reassigned_year_2005 d4_pre1_year_2005 d4_pre2_year_2005 d4_pre3_year_2005 d4_pre4up_year_2005 d4_post1_year_2005 d4_post2_year_2005 d4_post3_year_2005 d4_post4up_year_2005 "

local d1_year8 "d1_node_reassigned_year_2006 d1_pre1_year_2006 d1_pre2_year_2006 d1_pre3_year_2006 d1_pre4up_year_2006 d1_post1_year_2006 d1_post2_year_2006 d1_post3_year_2006 d1_post4up_year_2006 "
local d2_year8 "d2_node_reassigned_year_2006 d2_pre1_year_2006 d2_pre2_year_2006 d2_pre3_year_2006 d2_pre4up_year_2006 d2_post1_year_2006 d2_post2_year_2006 d2_post3_year_2006 d2_post4up_year_2006 "
local d3_year8 "d3_node_reassigned_year_2006 d3_pre1_year_2006 d3_pre2_year_2006 d3_pre3_year_2006 d3_pre4up_year_2006 d3_post1_year_2006 d3_post2_year_2006 d3_post3_year_2006 d3_post4up_year_2006 "
local d4_year8 "d4_node_reassigned_year_2006 d4_pre1_year_2006 d4_pre2_year_2006 d4_pre3_year_2006 d4_pre4up_year_2006 d4_post1_year_2006 d4_post2_year_2006 d4_post3_year_2006 d4_post4up_year_2006 "

local d1_year9 "d1_node_reassigned_year_2007 d1_pre1_year_2007 d1_pre2_year_2007 d1_pre3_year_2007 d1_pre4up_year_2007 d1_post1_year_2007 d1_post2_year_2007 d1_post3_year_2007 d1_post4up_year_2007 "
local d2_year9 "d2_node_reassigned_year_2007 d2_pre1_year_2007 d2_pre2_year_2007 d2_pre3_year_2007 d2_pre4up_year_2007 d2_post1_year_2007 d2_post2_year_2007 d2_post3_year_2007 d2_post4up_year_2007 "
local d3_year9 "d3_node_reassigned_year_2007 d3_pre1_year_2007 d3_pre2_year_2007 d3_pre3_year_2007 d3_pre4up_year_2007 d3_post1_year_2007 d3_post2_year_2007 d3_post3_year_2007 d3_post4up_year_2007 "
local d4_year9 "d4_node_reassigned_year_2007 d4_pre1_year_2007 d4_pre2_year_2007 d4_pre3_year_2007 d4_pre4up_year_2007 d4_post1_year_2007 d4_post2_year_2007 d4_post3_year_2007 d4_post4up_year_2007 "

local d1_year10 "d1_node_reassigned_year_2008 d1_pre1_year_2008 d1_pre2_year_2008 d1_pre3_year_2008 d1_pre4up_year_2008 d1_post1_year_2008 d1_post2_year_2008 d1_post3_year_2008 d1_post4up_year_2008 "
local d2_year10 "d2_node_reassigned_year_2008 d2_pre1_year_2008 d2_pre2_year_2008 d2_pre3_year_2008 d2_pre4up_year_2008 d2_post1_year_2008 d2_post2_year_2008 d2_post3_year_2008 d2_post4up_year_2008 "
local d3_year10 "d3_node_reassigned_year_2008 d3_pre1_year_2008 d3_pre2_year_2008 d3_pre3_year_2008 d3_pre4up_year_2008 d3_post1_year_2008 d3_post2_year_2008 d3_post3_year_2008 d3_post4up_year_2008 "
local d4_year10 "d4_node_reassigned_year_2008 d4_pre1_year_2008 d4_pre2_year_2008 d4_pre3_year_2008 d4_pre4up_year_2008 d4_post1_year_2008 d4_post2_year_2008 d4_post3_year_2008 d4_post4up_year_2008 "

local d1_year11 "d1_node_reassigned_year_2009 d1_pre1_year_2009 d1_pre2_year_2009 d1_pre3_year_2009 d1_pre4up_year_2009 d1_post1_year_2009 d1_post2_year_2009 d1_post3_year_2009 d1_post4up_year_2009 "
local d2_year11 "d2_node_reassigned_year_2009 d2_pre1_year_2009 d2_pre2_year_2009 d2_pre3_year_2009 d2_pre4up_year_2009 d2_post1_year_2009 d2_post2_year_2009 d2_post3_year_2009 d2_post4up_year_2009 "
local d3_year11 "d3_node_reassigned_year_2009 d3_pre1_year_2009 d3_pre2_year_2009 d3_pre3_year_2009 d3_pre4up_year_2009 d3_post1_year_2009 d3_post2_year_2009 d3_post3_year_2009 d3_post4up_year_2009 "
local d4_year11 "d4_node_reassigned_year_2009 d4_pre1_year_2009 d4_pre2_year_2009 d4_pre3_year_2009 d4_pre4up_year_2009 d4_post1_year_2009 d4_post2_year_2009 d4_post3_year_2009 d4_post4up_year_2009 "

local d1_year12 "d1_node_reassigned_year_2010 d1_pre1_year_2010 d1_pre2_year_2010 d1_pre3_year_2010 d1_pre4up_year_2010 d1_post1_year_2010 d1_post2_year_2010 d1_post3_year_2010 d1_post4up_year_2010 "
local d2_year12 "d2_node_reassigned_year_2010 d2_pre1_year_2010 d2_pre2_year_2010 d2_pre3_year_2010 d2_pre4up_year_2010 d2_post1_year_2010 d2_post2_year_2010 d2_post3_year_2010 d2_post4up_year_2010 "
local d3_year12 "d3_node_reassigned_year_2010 d3_pre1_year_2010 d3_pre2_year_2010 d3_pre3_year_2010 d3_pre4up_year_2010 d3_post1_year_2010 d3_post2_year_2010 d3_post3_year_2010 d3_post4up_year_2010 "
local d4_year12 "d4_node_reassigned_year_2010 d4_pre1_year_2010 d4_pre2_year_2010 d4_pre3_year_2010 d4_pre4up_year_2010 d4_post1_year_2010 d4_post2_year_2010 d4_post3_year_2010 d4_post4up_year_2010 "


}

//Combined Year Locals
local d1_year "d1_node_reassigned_year d1_pre1_year d1_pre2_year d1_pre3_year d1_pre4up_year d1_post1_year d1_post2_year d1_post3_year d1_post4up_year "
local d2_year "d2_node_reassigned_year d2_pre1_year d2_pre2_year d2_pre3_year d2_pre4up_year d2_post1_year d2_post2_year d2_post3_year d2_post4up_year "
local d3_year "d3_node_reassigned_year d3_pre1_year d3_pre2_year d3_pre3_year d3_pre4up_year d3_post1_year d3_post2_year d3_post3_year d3_post4up_year "
local d4_year "d4_node_reassigned_year d4_pre1_year d4_pre2_year d4_pre3_year d4_pre4up_year d4_post1_year d4_post2_year d4_post3_year d4_post4up_year "

**Reassignment Dummies - New School - Interaction Version**
local d1_new_sch "d1_node_reassigned_new_sch d1_pre1_new_sch d1_pre2_new_sch d1_pre3_new_sch d1_pre4up_new_sch d1_post1_new_sch d1_post2_new_sch d1_post3_new_sch d1_post4up_new_sch "
local d2_new_sch "d2_node_reassigned_new_sch d2_pre1_new_sch d2_pre2_new_sch d2_pre3_new_sch d2_pre4up_new_sch d2_post1_new_sch d2_post2_new_sch d2_post3_new_sch d2_post4up_new_sch "
local d3_new_sch "d3_node_reassigned_new_sch d3_pre1_new_sch d3_pre2_new_sch d3_pre3_new_sch d3_pre4up_new_sch d3_post1_new_sch d3_post2_new_sch d3_post3_new_sch d3_post4up_new_sch "
local d4_new_sch "d4_node_reassigned_new_sch d4_pre1_new_sch d4_pre2_new_sch d4_pre3_new_sch d4_pre4up_new_sch d4_post1_new_sch d4_post2_new_sch d4_post3_new_sch d4_post4up_new_sch "

local omit 				"d1_pre1"
local omit_new			"d1_new_pre1"
local omit_ex 			"d1_ex_pre1"
local omit_attend_base	"d1_pre1_attend_base"
local omit_year 		"d1_pre1_year"
local omit_year1		"d1_pre1_year_1999  d1_pre1_year_2000  d1_pre1_year_2001  d1_pre1_year_2002  d1_pre1_year_2003  d1_pre1_year_2004  d1_pre1_year_2005  d1_pre1_year_2006  d1_pre1_year_2007  d1_pre1_year_2008  d1_pre1_year_2009  d1_pre1_year_2010"

local omit_new_sch 		"d1_pre1_new_sch"

*use "${scratch}reassignfx_190811_2230.dta", clear
*use "${scratch}reassignfx_190815_1050.dta", clear
*use "${scratch}reassignfx_190827_0700.dta", clear
*use "${scratch}reassignfx_190827_2200.dta", clear
*use "${scratch}reassignfx_190904_2230.dta", clear
*use "${scratch}reassignfx_191005_0600.dta", clear
*use "${scratch}reassignfx_191011_1200.dta", clear
*use "${scratch}reassignfx_191014_1100.dta", clear
use "${scratch}reassignfx_file.dta", clear

qui sum year
local lo_year = r(min)
local hi_year = r(max)

xtset node_for_xtreg


//To Fix in reassignfx_file

replace chron_abs = . if year < 2005		//Done

//Year Interaction
tab year, gen(y_)

local u = `max_year' - `min_year' + 1
forvalues x = 1 /  `u' 	{
	local z = `x' + `min_year' - 1
	rename y_`x' y_`z'
}

/*
forvalues x = 1/4	{
	forvalues z = 2000/2010	{
		local o = `z' - 1999
		gen d`x'_node_reassigned_year_`z' = d`x'_node_reassigned * y_`o'
	}
}
*/

forvalues y = 1/4	{
	foreach var of local d`y'	{
		forvalues x = 2000 / 2010	{
			local o = `x' - 1999
			di "`var' y_`o'"
*			gen `var'_new_sch = `var' * `new_school_variable'
*			gen `var'_year = `var' * (year - 2000)
			gen `var'_year_`x' = `var' * y_`o'
		}
	}	
}

//Quadratic for Spillover Terms
gen p_in2 = p_in * p_in
gen p_out2 = p_out * p_out

cap frame drop nodes
cap frame create nodes
cap drop link_node
frame nodes: use "${data}srf_nodes_file.dta", clear
frlink m:1 nodeid year grade_level, frame(nodes) gen(link_node)
frget reassignment_year_1, from(link_node)

tab reassignment_year_1, gen(re_yr_)

qui sum reassignment_year_1
local lo_re_year = r(min)
local hi_re_year = r(max)

//Need to build Tx * Reassignment Year here


//Treatment Variables
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

local treat_year1 ""
*local treat_year1 : list treat_year1 | d1_year1 
local treat_year1 : list treat_year1 | d1_year2
local treat_year1 : list treat_year1 | d1_year3 
local treat_year1 : list treat_year1 | d1_year4 
local treat_year1 : list treat_year1 | d1_year5
local treat_year1 : list treat_year1 | d1_year6
local treat_year1 : list treat_year1 | d1_year7
local treat_year1 : list treat_year1 | d1_year8
local treat_year1 : list treat_year1 | d1_year9
local treat_year1 : list treat_year1 | d1_year10
local treat_year1 : list treat_year1 | d1_year11
local treat_year1 : list treat_year1 | d1_year12

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

//Local outcomes for regression
local test_outcomes "zeog_rd zeog_ma asx_zeog_rd asx_zeog_ma csx_zeog_rd csx_zeog_ma "

local behavior_outcomes "pabs chron_abs psusp dsusp moveschl "
local school_chars "race_brown_assigned race_brown_attend race_same_assigned race_same_attend "
local school_chars "race_br_ass race_br_att race_sm_ass race_sm_att "
local distances "sch_att_dist sch_ass_dist attend_base "

//Need to rename 
rename race_brown_assigned race_br_ass
rename race_brown_attend race_br_att
rename race_same_assigned race_sm_ass
rename race_same_attend race_sm_att
rename sch_att_distance sch_att_dist
rename sch_ass_distance sch_ass_dist

local outcomes ""
local outcomes : list outcomes | distances
local outcomes : list outcomes | test_outcomes
local outcomes : list outcomes | behavior_outcomes
local outcomes : list outcomes | school_chars

local outcomes2 "moveschl attend_base sch_ass_dist asx_zeog_rd asx_zeog_ma zeog_rd zeog_ma chron_abs dsusp"

cap log using "${logs}re_fx_models_rev1_`date_time'.txt", text replace name(ModelLog)
cap log close ModelLog

cap log using "${logs}re_fx_rev1_`date_time'.txt", text replace name(BigLog)

di "*****************************************"
di "*****************************************"
di "***************`date_time'***************"
di "*****************************************"
di "*****************************************"

sum `outcomes'

//Models

local node_cluster "vce(cluster node_for_xtreg)"
local ass_cluster "vce(cluster sch_assigned)"
/*
foreach y of local outcomes2 {
cap log using "${logs}re_fx_models_rev1_`date_time'.txt", text append name(ModelLog)

di "*****************************************"
di "**************DV==`y'********************"
di "*****************************************"

cap log close ModelLog

//Baseline with no spillover effects
local name "`y'_bs_no_sp"
xtreg `y' `treat_vars' `controls'  `race' `grade' i.year, fe vce(cluster node_for_xtreg)
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid replace
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Baseline with spillover effects
xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' i.year, fe vce(cluster node_for_xtreg)
local name "`y'_base"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Baseline with spillover effects
xtreg `y' `treat_vars' `controls' `controls2' p_in2 p_out2 `race' `grade' i.year, fe vce(cluster node_for_xtreg)
local name "`y'_base_sp2"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Baseline with spillover dummied out for never_reassigned
xtreg `y' `treat_vars' `controls' p_in_never p_out_never `race' `grade' i.year, fe `node_cluster'
local name "`y'_bs_sp_nv"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Lag Test Score
if "`y'" == "lag_zeog_ma"		{
	local name "`y'_pa_ma"
	local lag_score_mask "1"
}

if  "`y'" == "`lag_zeog_rd'"	{
	local name "`y'_pa_rd"
	local lag_score_mask "1"
}

if "`lag_score_mask'" == "1"	{
	local lag "`y'"
	xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' `lag' i.year, fe vce(cluster node_for_xtreg)
	eststo `name'
	regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
	regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

	cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
	di "`name' : `e(cmdline)'"
	di ""
	cap log close ModelLog

}

//With Lag Reading EOG
/*
xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' lag_zeog_rd i.year, fe vce(cluster node_for_xtreg)
local name "`y'_pa_rd"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

//With Lag Math EOG
xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' lag_zeog_ma i.year, fe vce(cluster node_for_xtreg)
local name "`y'_pa_ma"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace
*/

//Control for capacity
xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' sch_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
local name "`y'_cp"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Capacity Standardized
xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' std_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
local name "`y'_cps"
eststo `name'
regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Attend Base Interactions - Base model
cap xtreg `y' `treat_vars' `treat_attend_base' `controls' `controls2' `race' `grade' i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_ab"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Attend Base Interactions - W/Capacity Control
cap xtreg `y' `treat_vars' `treat_attend_base' `controls' `controls2' `race' `grade' sch_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_ab_cp"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Attend Base Interactions - Standardized Capacity control
cap xtreg `y' `treat_vars' `treat_attend_base' `controls' `controls2' `race' `grade' std_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_ab_cps"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Year Interaction - Base model
cap xtreg `y' `treat_vars' `treat_year1' `controls' `controls2' `race' `grade' i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_yr"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Year Interactions - W/Capacity Control
cap xtreg `y' `treat_vars' `treat_year1' `controls' `controls2' `race' `grade' sch_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_yr_cp"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//Year Interactions - Standardized Capacity control
cap xtreg `y' `treat_vars' `treat_year1' `controls' `controls2' `race' `grade' std_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_yr_cps"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//New School Interactions - Base model
cap xtreg `y' `treat_vars' `treat_new_sch' `controls' `controls2' `race' `grade' i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_new"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//New School Interactions - w/Capacity Control
cap xtreg `y' `treat_vars' `treat_new_sch' `controls' `controls2' `race' `grade' sch_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_new_cp"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//New School Interactions - Standardized Capacity control
cap xtreg `y' `treat_vars' `treat_new_sch' `controls' `controls2' `race' `grade' std_ass_cap_ratio i.year, fe vce(cluster node_for_xtreg)
cap local name "`y'_new_cps"
cap eststo `name'
cap regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
cap regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
di "`name' : `e(cmdline)'"
di ""
cap log close ModelLog

//By Race
	foreach x in 3 4 5 {
		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)

		display "**************d_race==`x'********************"
		
		cap log close ModelLog
		
		xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_r_`x'"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace
		
		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_year1' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_r_`x'_yr"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_attend_base' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_ab"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_new_sch' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_new"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		//Boys
		xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_b"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_year1' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_b_yr"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_attend_base' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_b_ab"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_new_sch' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 1, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_b_new"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		//Girls
		xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 0, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_g"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_year1' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 0, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_g_yr"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		
		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_attend_base' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 0, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_g_ab"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_new_sch' `controls' `controls2' `race' `grade' i.year if d_race_`x' == 1 & male == 0, fe vce(cluster node_for_xtreg)
		local name "`y'_race_`x'_g_new"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace		

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog
}
/*
//By Node Achievement Quintile
foreach q in 1 2 3 4 5 {
		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)

		display "****************node EOG quintile==`q' (1 is low; 5 is high)********************"
		
		cap log close ModelLog

		xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' i.year if q5_nx_zeog==`q', fe vce(cluster node_for_xtreg)
		local name "`y'_nq_`q'"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_attend_base' `controls' `controls2' `race' `grade' i.year if q5_nx_zeog==`q', fe vce(cluster node_for_xtreg)
		local name "`y'_nq_`q'_ab"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_year1' `controls' `controls2' `race' `grade' i.year if q5_nx_zeog==`q', fe vce(cluster node_for_xtreg)
		local name "`y'_nq_`q'_yr"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

		cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
		di "`name' : `e(cmdline)'"
		di ""
		cap log close ModelLog

		xtreg `y' `treat_vars' `treat_new_sch' `controls' `controls2' `race' `grade' i.year if q5_nx_zeog==`q', fe vce(cluster node_for_xtreg)
		local name "`y'_nq_`q'_new"
		eststo `name'
		regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
		regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace
}
*/
local table_notes `"note("Note: Treatment varies at the Node-Grade-Year level.  Node Fixed Effects. Standard Errors are clustered at node level")"'

estout `y'* using "${scratch}reassignfx/`date_time'_re_on_`y'_nodeFE.xls", cells(b(star fmt(%9.3f)) se) stats(N , fmt(%9.0g %9.3f))  varlabels(_cons Constant) varwidth(15) modelwidth(10) prefoot("") postfoot("") legend replace `table_notes' 


est clear

}
*/

local table_notes `"note("Note: Treatment varies at the Node-Grade-Year level.  Student Fixed Effects. Standard Errors are clustered at node level")"'

//New stuff
local updated_outcomes "moveschl attend_base sch_ass_distance asx_zeog_ma asx_zeog_rd zeog_ma zeog_rd chron_abs psusp dsusp "

//Cluster at Assigned School Level here
foreach y of local updated_outcomes	{
//Baseline with spillover effects
	xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' i.year, fe vce(cluster sch_ass)
	local name "`y'_scha_sfx"
	eststo new_`name'
	regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
	regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

	cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
	di "`name' : `e(cmdline)'"
	di ""
	cap log close ModelLog

//Baseline with spillover effects & 
	xtreg `y' `treat_vars' `controls' `controls2' p_in2 p_out2 `race' `grade' i.year, fe vce(cluster sch_ass)
	local name "`y'_scha_sp2_sfx"
	eststo new_`name'
	regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
	regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

	cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
	di "`name' : `e(cmdline)'"
	di ""
	cap log close ModelLog


}

//Student Fixed Effects
xtset encrypted_sid year

foreach y of local updated_outcomes	{

//Baseline with spillover effects
	xtreg `y' `treat_vars' `controls' `controls2' `race' `grade' i.year, fe vce(cluster node_for_xtreg) nonest
	local name "`y'_base_sfx"
	eststo new_`name'
	regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
	regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

	cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
	di "`name' : `e(cmdline)'"
	di ""
	cap log close ModelLog

//Baseline with spillover effects & 
	xtreg `y' `treat_vars' `controls' `controls2' p_in2 p_out2 `race' `grade' i.year, fe vce(cluster node_for_xtreg) nonest
	local name "`y'_base_sp2_sfx"
	eststo new_`name'
	regsave using "${scratch}reassignfx/`date_time'_models", ci addlabel(label, `name') autoid append
	regsave using "${scratch}reassignfx/`folder_name'/`name'", ci replace

	cap log using "${logs}re_fx_models_`date_time'.txt", text append name(ModelLog)
	di "`name' : `e(cmdline)'"
	di ""
	cap log close ModelLog
}

estout new* using "${scratch}reassignfx/`date_time'_newmodels.xls", cells(b(star fmt(%9.3f)) se) stats(N , fmt(%9.0g %9.3f))  varlabels(_cons Constant) varwidth(15) modelwidth(10) prefoot("") postfoot("") legend replace `table_notes' 

cap log close
