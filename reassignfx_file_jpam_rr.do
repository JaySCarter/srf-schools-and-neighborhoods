/*
200905_0900

Reassignment Effects Paper File for JPAM R&R

Cleaned up the reassignfx_file.do file
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
	global jpam_rr	"${wake}jpam_rr/"
}

//Locals
local date_time "191205_1000"
local date_time "200905_0900"
local date_time "200918_1400"

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
**Need to check why the grade_level restriction - B/C EOG grades
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

label variable nx_zeog_ma "Node Mean EOG - MA"
label variable nx_zeog_rd "Node Mean EOG - RD"
label variable asx_zeog_rd "Assigned School Mean EOG - RD"
label variable asx_zeog_ma "Assigned School Mean EOG - MA"
label variable csx_zeog_rd "Attended School Mean EOG - RD"
label variable csx_zeog_ma "Attended School Mean EOG - MA"

**************************************************
**************************************************
**************************************************
//School Demographics
egen race_br_ass = rowtotal(sch_ass_pct_blk sch_ass_pct_hsp)
egen race_br_att = rowtotal(sch_att_pct_blk sch_att_pct_hsp)

gen race_3_ass = sch_ass_pct_hsp
gen race_4_ass = sch_ass_pct_blk
gen race_5_ass = sch_ass_pct_wht

gen race_3_att = sch_att_pct_hsp
gen race_4_att = sch_att_pct_blk
gen race_5_att = sch_att_pct_wht

label variable race_br_ass "Assigned School Pct Blk + Hsp"
label variable race_br_att "Attended School Pct Blk + Hsp"
label variable race_3_ass "Assigned School Pct Hsp"
label variable race_4_ass "Assigned School Pct Blk"
label variable race_5_ass "Assigned School Pct Wht"
label variable race_3_att "Attended School Pct Hsp"
label variable race_4_att "Attended School Pct Blk"
label variable race_5_att "Attended School Pct Wht"

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


//Spillover Terms
gen p_in = n_in / n_here
gen p_out = n_out / n_wuz_here

replace p_in = 0 if node_reassigned == 1
replace p_out = 0 if node_reassigned == 1 

//Quadratic for Spillover Terms
gen p_in2 = p_in * p_in
gen p_out2 = p_out * p_out

gen p_in_never = p_in
gen p_out_never = p_out

replace p_in_never = 0 if never_reassigned == 1
replace p_out_never = 0 if never_reassigned == 1

gsort encrypted_sid year
gen lead_p_in = F.p_in
gen lead_p_out = F.p_out

replace lead_p_in = 0 if year == `lo_year'
replace lead_p_out = 0 if year == `hi_year'

label variable lag_sch_assigned "Lag of sch_ass variable"
label variable n_in "Number of students assigned INTO school this year"
label variable n_out "Number of students assigned OUT of school this year"
label variable p_in "Proportion of students assigned into school this year"
label variable p_out "Proportion of students assigned out of school this year"

//Dummy Variables
forvalues x = 0/12	{
	gen dgr`x' = 0
	replace dgr`x' = (grade_level == `x')
	}
tab race_eth, gen(d_race_)

//What percentage of the school is your race
gen race_sm_ass=.
gen race_sm_att=.

forvalues x= 3/5 {
	replace race_sm_ass=race_`x'_ass if d_race_`x'==1
	replace race_sm_att=race_`x'_att if d_race_`x'==1
}

label variable race_sm_ass "Proportion of students in assigned school of the same race as individual"
label variable race_sm_att "Proportion of students in attended school of the same race as individual"

//Did you change schools from last year to this year
gsort encrypted_sid year
gen moveschl = 0
replace moveschl = 1 if cur_school_code != L.cur_school_code

gen moveschl_no6_no9 = moveschl
replace moveschl_no6_no9 = . if dgr6 = 1
replace moveschl_no6_no9 = . if dgr9 = 1

label variable moveschl "Student Moved School btw year t-1 and year t"
label variable moveschl_no6_no9 "Student Moved School - Excludes 6th and 9th graders"

**************************************************
**************************************************
**************************************************

//Student Level Outcomes
gen pabs = abs_total/membership_days

gen psusp = sus_days/membership_days
gen chron_abs = (pabs > 0.05 & !missing(pabs))
replace chron_abs = . if year < 2005
gen dsusp =(sus_days > 0  & !missing(sus_days))

label variable pabs "Proportion of school days absent"
label variable chron_abs "Absent more than 5% of school days"
label variable dsusp "Student was suspended in year t"

gen l_zeog_rd = L.zeog_rd
gen l_zeog_ma = L.zeog_ma

//Lag Test Scores
cap gen lag_zeog_rd = l.zeog_rd
cap gen lag_zeog_ma = l.zeog_ma

bys encrypted_sid: egen nx_zeog_f = max(nx_zeog)
xtile q5_nx_zeog = nx_zeog_f, n(5)

label variable q5_nx_zeog "Node EOG Quintile - 1 is lowest, 5 is highest"

//Capacity Variables
gen sch_ass_cap_ratio = sch_ass_enrollment / sch_ass_capacity
gen sch_att_cap_ratio = sch_att_enrollment / sch_att_capacity

gen lag_sch_ass_cap = l.sch_ass_capacity
gen lag_sch_att_cap = l.sch_att_capacity

gen sch_ass_cap_ratio_lag = l.sch_ass_cap_ratio
gen sch_att_cap_ratio_lag = l.sch_att_cap_ratio

egen std_ass_cap_ratio = std(sch_ass_cap_ratio)
egen std_att_cap_ratio = std(sch_att_cap_ratio)

label variable sch_ass_cap_ratio "Ratio of Assigned School Enrollment/Capacity"
label variable sch_att_cap_ratio "Ratio of Attended School Enrollment/Capacity"
label variable std_ass_cap_ratio "Ratio of Assigned School Enrollment/Capacity - Standardized"
label variable std_att_cap_ratio "Ratio of Attended School Enrollment/Capacity - Standardized"

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


label variable node_for_xtreg "Panel Data (XT) identifier - use this in xtreg"
label variable node_year "XT Identifier (Human Readable)"
**************************************************
**************************************************
**************************************************
//Additional Treatment Variables 

//Interactions with Attend Base and Year

forvalues x = 1/4 {
	foreach var of local d`x'	{
		di "`var'"
		gen `var'_attend_base = `var' * attend_base
		}
	}

gen never_reassigned_attend_base = never_reassigned * attend_base

//Some renaming for variable length
rename sch_att_distance sch_att_dist
rename sch_ass_distance sch_ass_dist

label variable sch_att_dist "Distance from student home to attended school"
label variable sch_ass_dist "Distance from student home to assigned school"

//Get Reassignment Year
cap frame drop nodes
cap frame create nodes
cap drop link_node

frame nodes: use "${data}srf_nodes_file.dta", clear
frlink m:1 nodeid year grade_level, frame(nodes) gen(link_node)
frget reassignment_year_1, from(link_node)

tab reassignment_year_1, gen(re_yr_)

note: Updated `date_time'
/*
save "${scratch}reassignfx_`date_time'.dta", replace
save "${scratch}reassignfx_file.dta", replace
*/

save "${jpam_rr}reassignfx_rr_`date_time'.dta", replace
save "${jpam_rr}reassignfx_rr.dta", replace
