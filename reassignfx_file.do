/*
190810_reassignfx.do

Reassignment Effects - Jay Rebuild

*/

//Front Matter
{

version 16

//Initialize
set more off
cap log close
clear all

cap frame change default


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

//Locals
local date_time "190811_2230"
local date_time "190815_1050"
local date_time "190827_0700"
local date_time "191005_0600"
local date_time "191011_1200"
local date_time "191014_1100"
local date_time "191024_0900"
local date_time "191104_1740"
local date_time "191205_1000"

**Grade and Race Control Dummies
forvalues x = 0/12	{
	local grade "`grade'" " " "dgr`x'"
	}
	
forvalues x = 1/7	{
	local race "`race'" " " "d_race_`x'"
	}

**Reassignment Dummies**
local d1 "d1_node_reassigned d1_pre1 d1_pre2 d1_pre3 d1_pre4up d1_post1 d1_post2 d1_post3 d1_post4up "
local d2 "d2_node_reassigned d2_pre1 d2_pre2 d2_pre3 d2_pre4up d2_post1 d2_post2 d2_post3 d2_post4up "
local d3 "d3_node_reassigned d3_pre1 d3_pre2 d3_pre3 d3_pre4up d3_post1 d3_post2 d3_post3 d3_post4up "
local d4 "d4_node_reassigned d4_pre1 d4_pre2 d4_pre3 d4_pre4up d4_post1 d4_post2 d4_post3 d4_post4up "

**Reassignment Dummies - New Schools**
local d1_new_sch "d1_post1_new_sch d1_post2_new_sch d1_post3_new_sch d1_post4up_new_sch d1_node_reassigned_new_sch d1_pre1_new_sch d1_pre2_new_sch d1_pre3_new_sch d1_pre4up_new_sch "
local d2_new_sch "d2_post1_new_sch d2_post2_new_sch d2_post3_new_sch d2_post4up_new_sch d2_node_reassigned_new_sch d2_pre1_new_sch d2_pre2_new_sch d2_pre3_new_sch d2_pre4up_new_sch "
local d3_new_sch "d3_post1_new_sch d3_post2_new_sch d3_post3_new_sch d3_post4up_new_sch d3_node_reassigned_new_sch d3_pre1_new_sch d3_pre2_new_sch d3_pre3_new_sch d3_pre4up_new_sch "
local d4_new_sch "d4_post1_new_sch d4_post2_new_sch d4_post3_new_sch d4_post4up_new_sch d4_node_reassigned_new_sch d4_pre1_new_sch d4_pre2_new_sch d4_pre3_new_sch d4_pre4up_new_sch "


/*
//Old Version
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
local d1_year "d1_node_reassigned_year d1_pre1_year d1_pre2_year d1_pre3_year d1_pre4up_year d1_post1_year d1_post2_year d1_post3_year d1_post4up_year "
local d2_year "d2_node_reassigned_year d2_pre1_year d2_pre2_year d2_pre3_year d2_pre4up_year d2_post1_year d2_post2_year d2_post3_year d2_post4up_year "
local d3_year "d3_node_reassigned_year d3_pre1_year d3_pre2_year d3_pre3_year d3_pre4up_year d3_post1_year d3_post2_year d3_post3_year d3_post4up_year "
local d4_year "d4_node_reassigned_year d4_pre1_year d4_pre2_year d4_pre3_year d4_pre4up_year d4_post1_year d4_post2_year d4_post3_year d4_post4up_year "

//Moved to the model files
/*
local omit 				"d1_pre1"
local omit_new			"d1_pre1_new_sch"
local omit_ex 			"d1_ex_pre1 "
local omit_attend_base	"d1_pre1_attend_base"
local omit_year 		"d1_pre1_year"

local reassign_n  "never_reassigned " "`d1'" "`d2'" "`d3'"
local re_new_n "`d1_new'" "`d2_new'" "`d3_new'"
local re_ex_n  "`d1_ex'" "`d2_ex'" "`d3_ex'"

**Reassignment Dummies - For Models**
local reassign_n : list reassign_n - omit
local re_new_n : list re_new_n - omit_new
local re_ex_n  : list re_ex_n  - omit_ex

local reassign_n : list clean reassign_n
local re_new_n : list clean re_new_n
local re_ex_n : list clean re_ex_n
*/


/*
?? Section of code from 190618_reassignfx.do ??
Lines 230 - 306
*/

/*
di "`reassign_n'"
foreach var of local reassign_n	{
	di "`var'"
}
*/

}

**************************************************
**************************************************
**************************************************
use "${data}base_file.dta", clear
*use "${scratch}base_file_190816.dta", clear
**************************************************
**************************************************
**************************************************

qui sum year

local lo_year = r(min)
local hi_year = r(max)

//Achievement Calculations
forvalues x = 3/8	{
	gen zeog_rd`x' = .
	gen zeog_ma`x' = .
	}

//Grade Year Standardization	
forvalues y = 2000/2010	{
	forvalues x = 3/8	{
		egen zeog_ma`x'`y' = std(eog_ma) if year == `y' & grade_level == `x'
		egen zeog_rd`x'`y' = std(eog_rd) if year == `y' & grade_level == `x'
		
		replace zeog_ma`x' = zeog_ma`x'`y' if year == `y'
		replace zeog_rd`x' = zeog_rd`x'`y' if year == `y'
	}
}

egen zeog_rd = rowmean(zeog_rd3 zeog_rd4 zeog_rd5 zeog_rd6 zeog_rd7 zeog_rd8)
egen zeog_ma = rowmean(zeog_ma3 zeog_ma4 zeog_ma5 zeog_ma6 zeog_ma7 zeog_ma8)


//Node-level Average Achievement
**Need to check why the grade_level restriction
bys nodeid year: egen nx_zeog_rd = mean(zeog_rd) if grade_level >=0 & grade_level < 9

bys nodeid year: egen nx_zeog_ma = mean(zeog_ma) if grade_level >=0 & grade_level < 9

egen nx_zeog = rowmean(nx_zeog_ma nx_zeog_rd)

//School-level Average Achievement - Assigned School
bys sch_assigned year: egen asx_zeog_rd1=mean(zeog_rd)
bys sch_assigned year: egen asx_zeog_rd=max(asx_zeog_rd1)
bys sch_assigned year: egen asx_zeog_ma1=mean(zeog_ma)
bys sch_assigned year: egen asx_zeog_ma=max(asx_zeog_ma1)
bys sch_assigned year: gen asx_zeog = (asx_zeog_rd + asx_zeog_rd)*.5

//School-level Average Achievement - Attended School
bys cur_school_code year: egen csx_zeog_rd1=mean(zeog_rd)
bys cur_school_code year: egen csx_zeog_rd=max(csx_zeog_rd1)
bys cur_school_code year: egen csx_zeog_ma1=mean(zeog_ma)
bys cur_school_code year: egen csx_zeog_ma=max(csx_zeog_ma1)
bys cur_school_code year: gen csx_zeog = (csx_zeog_rd + csx_zeog_rd)*.5

drop asx_zeog_rd1 asx_zeog_ma1 csx_zeog_rd1 csx_zeog_ma1 		//Intermediate step variables

**************************************************
**************************************************
**************************************************
//School Demographics
egen race_brown_assigned = rowtotal(sch_ass_pct_blk sch_ass_pct_hsp)
egen race_brown_attend = rowtotal(sch_att_pct_blk sch_att_pct_hsp)

gen race_3_assigned = sch_ass_pct_hsp
gen race_4_assigned = sch_ass_pct_blk
gen race_5_assigned = sch_ass_pct_wht

gen race_3_attend = sch_att_pct_hsp
gen race_4_attend = sch_att_pct_blk
gen race_5_attend = sch_att_pct_wht

**************************************************
**************************************************
**************************************************
//Prep for Models
xtset encrypted_sid year
gsort encrypted_sid year

//Students Assigned In/Out of Schools - p_in and p_out
gen lag_sch_assigned = L.sch_assigned

bys sch_assigned year: egen n_in = total(node_reassigned)
bys sch_assigned year: egen n_here = count(node_reassigned)
bys lag_sch_assigned year: egen n_out = total(node_reassigned)
bys lag_sch_assigned year: egen n_wuz_here = count(node_reassigned)

gen p_in = n_in / n_here
gen p_out = n_out / n_wuz_here

replace p_in = 0 if node_reassigned == 1
replace p_out = 0 if node_reassigned == 1 

gen p_in_never = p_in
gen p_out_never = p_out

replace p_in_never = 0 if never_reassigned == 1
replace p_out_never = 0 if never_reassigned == 1

gsort encrypted_sid year
gen lead_p_in = F.p_in
gen lead_p_out = F.p_out

replace lead_p_in = 0 if year == `lo_year'
replace lead_p_out = 0 if year == `hi_year'



//Dummy Variables
forvalues x = 0/12	{
	gen dgr`x' = 0
	replace dgr`x' = (grade_level == `x')
	}
tab race_eth, gen(d_race_)

//What percentage of the school is your race
gen race_same_assigned=.
gen race_same_attend=.

forvalues x= 3/5 {
	replace race_same_assigned=race_`x'_assigned if d_race_`x'==1
	replace race_same_attend=race_`x'_attend if d_race_`x'==1
}

//Did you change schools from last year to this year
gsort encrypted_sid year
gen moveschl = 0
replace moveschl = 1 if cur_school_code != L.cur_school_code

**************************************************
**************************************************
**************************************************

//Student Level Outcomes
gen pabs = abs_total/membership_days

gen psusp = sus_days/membership_days
gen chron_abs = (pabs > 0.05 & !missing(pabs))
gen dsusp =(sus_days > 0  & !missing(sus_days))

gen l_zeog_rd = L.zeog_rd
gen l_zeog_ma = L.zeog_ma

//Lag Test Scores
cap gen lag_zeog_rd = l.zeog_rd
cap gen lag_zeog_ma = l.zeog_ma

bys encrypted_sid: egen nx_zeog_f = max(nx_zeog)
xtile q5_nx_zeog = nx_zeog_f, n(5)

//Capacity Variables
gen sch_ass_cap_ratio = sch_ass_enrollment / sch_ass_capacity
gen sch_att_cap_ratio = sch_att_enrollment / sch_att_capacity

gen lag_sch_ass_cap = l.sch_ass_capacity
gen lag_sch_att_cap = l.sch_att_capacity

gen sch_ass_cap_ratio_lag = l.sch_ass_cap_ratio
gen sch_att_cap_ratio_lag = l.sch_att_cap_ratio

egen std_ass_cap_ratio = std(sch_ass_cap_ratio)
egen std_att_cap_ratio = std(sch_att_cap_ratio)

**************************************************
**************************************************
**************************************************

//Move to Reassignfx_file.do
cap drop node_for_xtreg
cap drop old_node_for_xtreg

egen old_node_for_xtreg = group(nodeid)
egen node_for_xtreg = group(nodeid grade_level)


egen node_year = concat(node_for_xtreg year)
destring node_year, replace

xtset node_for_xtreg

**************************************************
**************************************************
**************************************************
//Additional Treatment Variables 

//Interactions with Attend Base and Year

forvalues x = 1/4 {
	foreach var of local d`x'	{
		di "`var'"
		gen `var'_attend_base = `var' * attend_base
		*gen `var'_year = `var' * (year - 2000)						//Already done in the Node File
		*gen `var'_new_sch = `var' * sch_ass_new					//Already done in the Node File
		}
	}

gen never_reassigned_attend_base = never_reassigned * attend_base
*gen never_reassigned_year = never_reassigned * (year - 2000)		//Already done in the Node File
*gen never_reassigned_new_sch = never_reassigned * sch_ass_new		//Already done in the Node File

note: Updated `date_time'

save "${scratch}reassignfx_`date_time'.dta", replace
save "${scratch}reassignfx_file.dta", replace


cap log close