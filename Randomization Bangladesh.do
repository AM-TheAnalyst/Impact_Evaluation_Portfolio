cd "C:\STATA-Quant\BGD_2009_HIEQMP_v01_M_STATA8\" 
log using Randomization.log
 
use "hh_98.dta"

* Randomization, begin by looking at the impact of village program placement on the outcome
gen l_exptot=log(1+exptot)
label variable l_exptot "Natural log of total expenditure"
gen l_land=log(1+hhland/100)

* Program placement variables (male and female)
gen vill= thanaid*10 + villid
egen progvillf= max(dfmfd), by (vill)
egen progvillm= max(dmmfd), by (vill)

global treatmentf progvillf
global treatmentm progvillm
global ylist l_exptot

* Regression with a dummy variable for program participation
regress $ylist $treatmentf

the control villages

* Regression with a dummy variable for program participation controlling for covariates
global xlist sexhead agehead educhead l_land vaccess pcirr rice wheat milk egg oil

regress $ylist $treatmentf $xlist [pw=weight]
 
* Next, impact of program placement
global treatmentf2 dfmfd

* Regression with a dummy variable for program placement

regress $ylist $treatmentf2

* Regression with a dummy variable for program placement controlling for covariates

regress $ylist $treatmentf2 $xlist [pw=weight]

* Single code for program placement and participation
 regress $ylist $treatmentf2 $treatmentf $xlist [pw=weight]
 
 * Impact of program participation in program villages
regress $ylist $treatmentf2 if $treatmentf==1 [pw=weight]
 
regress $ylist $treatmentf2 $xlist if $treatmentf==1 [pw=weight]


* Spillovers- does program placement in villages have any impacts on non-participants?
regress $ylist $treatmentf $xlist if $treatmentf2 ==0 [pw=weight]






































log close