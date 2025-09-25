* Download ado files for pscore
use hh_98.dta, clear

* Define treatment outcome and independent variables
global mtreatment dfmfd
global oylist exptot
global xxlist agehead sexhead educhead hhland vaccess pcirr wheat milk egg oil

desc $mtreatment $oylist $xxlist
summarize $mtreatment $oylist $xxlist
bysort $mtreatment: summarize $oylist $xxlist

* Regression with a dummy variable for treatment (ttest)
regress $oylist $mtreatment

* Regression with a dummy variable for treatment controlling for x
regress $oylist $mtreatment $xxlist

* propensity score matching with common support
pscore $mtreatment $xxlist [pw=weight], pscore(myscore) blockid(myblock) comsup

drop myscore myblock
* Average treatment effect using Nearest neighbour matching
attnd $oylist $mtreatment $xxlist, pscore(myscore) comsup

* Radius matching
attr $oylist $mtreatment $xxlist, pscore(myscore) comsup radius(0.001)

* Kernel matching
attk $oylist $mtreatment $xxlist, pscore(myscore) comsup

* Stratified sampling
atts $oylist $mtreatment $xxlist, pscore(myscore) blockid(myblock) comsup
 




























log close

