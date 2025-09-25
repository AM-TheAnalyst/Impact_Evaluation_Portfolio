# Impact_Evaluation_Portfolio
This portfolio showcases a collection of applied impact evaluation techniques conducted in Stata. 

It uses the Bangladesh household survey conducted by the Bangladesh Development Institute and the World Bank: Khandker, S. R., & Bangladesh Institute of Development Studies (2013). Long-Term Impact of Microcredit Impacts 1998-1999 [Data set]. World Bank, Development Data Group. https://doi.org/10.48529/B28E-KM94

**1. Propensity Score Matching (PSM)**
   
**Objective:** Estimate the impact of Bangladesh microfinance programs on per capita total expenditure (outcome)

**Methods:** Propensity score estimation (logit), matching and ATT estimation (nearest neighbor, kernel,radius and stratified sampling)

**Data**
•	Dataset: hh_98.dta 
•	Treatment group: Females participating in the microfinance program
•	Covariates used for matching: Agehead, sexhead, educhead, hhland, vacess, pcir, rice, wheat, milk, egg, oil.
•	Outcome of interest: per capita total expenditure

**Results:**  Bangladesh microfinance programs increased household per capita expenditure by 419-822 Tk/year 

**2. Randomization**
   
**Objective:** Estimate the impact of village program placement on outcome as well as the impact of program placement on outcome (per capita total expenditure)

**Methods:** Regression using Ordinary Least Squares( OLS) with treatment dummy

**Data**
•	Dataset: hh_98.dta 
•	Treatment group1: Programme villages with female participants and Programme villages with male participants
•	Control group1: Programme villages without female participant and programme villages without male participant
•	Treatment group 2: Females participating in the microfinance programme
•	Control group 2: Females not participating in the microfinance programme
•	Covariates controlled: Agehead, sexhead, educhead, hhland, vacess, pcir, rice, wheat, milk, egg, oil

**Results:** Upon controlling for regressors, female participation increases per capita expenditure of households in program villages by 6.7%

**3. Difference in differences**

**Objective:** Estimate the impact of female participation on household per capita total expenditure 

**Methods:** Regression using Ordinary Least Squares( OLS). Check for robusness using fixed-effects model. 

**Data** 
•	Dataset: hh_9198.dta 
•	Treatment group: Females who participated in the microfinance program 
•	Time period: Year 
•	Interaction term: Treatment at time period t 
•	Covariates controlled during fixed effects regression: Agehead, sexhead, educhead, hhland, vacess, pcir, rice, wheat, milk, egg, oil

**Results:** Upon controlling for unobserved and time-invariant characteristics, female microfinance participation has a 9% positive impact on household per capita expenditure

 
 

 
