# Impact_Evaluation_Portfolio
This portfolio showcases a collection of applied impact evaluation projects conducted in Stata. It uses the Bangladesh household survey conducted by the Bangladesh Development Institute and the World Bank 1991/1992-1998/1999  Khandker, S. R., & Bangladesh Institute of Development Studies. (2013). Long-Term Impact of Microcredit Impacts 1998-1999 [Data set]. World Bank, Development Data Group. https://doi.org/10.48529/B28E-KM94
Projects Overview:
1. Propensity Score Matching (PSM)
•	Objective: Estimate the impact of Bangladesh microfinance programs on per capita total expenditure (outcome)
•	Methods: Propensity score estimation (logit), matching and ATT estimation (nearest neighbor, kernel,radius and stratified sampling)
Data
•	Dataset: hh_98.dta 
•	Treatment group: Females participating in the microfinance program
•	Covariates used for matching: Agehead, sexhead, educhead, hhland, vacess, pcir, rice, wheat, milk, egg, oil.
•	Outcome of interest: per capita total expenditure

2. Randomization
•	Objective: Estimate the impact of village program placement on outcome as well as the impact of program placement on outcome (per capita total expenditure)
•	Methods: Regression using Ordinary Least Squares( OLS) with treatment dummy
Data
•	Dataset: hh_98.dta 
•	Treatment group1: Programme villages with female participants and Programme villages with male participants
•	Control group1: Programme villages without female participant and programme villages without male participant
•	Treatment group 2: Females participating in the microfinance programme
•	Control group 2: Females not participating in the microfinance programme
•	Covariates controlled: Agehead, sexhead, educhead, hhland, vacess, pcir, rice, wheat, milk, egg, oil
