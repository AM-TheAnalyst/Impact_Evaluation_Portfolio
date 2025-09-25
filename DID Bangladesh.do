use hh_9198.dta

gen exptotz=exptot if year==0
egen exptot91=max(exptotz), by(nh)
keep if year==1
gen lexptot91=log(1+exptot91)
gen lexptot98=log(1+exptot)
gen lexptot9891=lexptot98-lexptot91
ttest lexptot9891, by (dfmfd)

* Regression DiD
use hh_9198, clear
gen l_exptot=log(1+exptot)
gen dfmfd1=dfmfd==1 & year==1
egen dfmfd98=max(dfmfd1), by (nh)
gen dfmfdyr=dfmfd98*year

regress l_exptot dfmfd98 year dfmfdyr 
** An increase of 11% in household per capita expenditure for women who participated in the microfinance program.

* Control for time-variant covariates
gen l_land=log(1+hhland)
global xlist sexhead agehead educhead l_land vaccess pcirr rice milk wheat oil egg 
regress l_exptot dfmfd98 year dfmfdyr $xlist
** By holding other factors constant, the impact of microfinance programs on total expenditure changes from significant to insignificant (t=0.97)

* Fixed-effects regression:Checking for robustness of DID
xtdescribe
xtset nh year
xtreg l_exptot dfmfd98 year dfmfdyr, fe i(nh)

xtreg l_exptot dfmfd98 year dfmfdyr $xlist, fe i(nh)



