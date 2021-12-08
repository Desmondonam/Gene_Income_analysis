 # load the packages that are needed in the analysis
library(gap)
library(DT)
library(car)
datatable(income)

exibble %>% gt()

# load a sample data
income <- load("D:/Gabby/files/week 1/Income.RData")
income

show(income)
show(twinData2)
IRTtwin (data_mz = data$y_mz, data_dz = data$y_dz,
         twin1_datacols_p = 1:20,
         twin2_datacols_p = 21:40,
         twin1_datacols_cov = 41:42,
         twin2_datacols_cov = 43:44,
         decomp_model = "ACE", irt_model = "1PL",
         ge = TRUE,
         N_cov = 2, inits = NA, Nk = 0,
         fit_stats = FALSE,
         n_iter = 10000, n_burnin = 8000,
         
         n_chains = 1,
         var_prior = "INV_GAMMA", inits = NA)


# Load the libraries
library(tidyverse)
library(modelr)
library(caret)
library(leaps)
library(olsrr)
library(DataExplorer)
library(SmartEDA)
library(dlookr)
library(psych)





create_report(data = twinData2)
#models for the data 


summary(twinData2)


describe(twinData2)



table(twinData2$income1, twinData2$income2)


qqPlot(twinData2$income1)
qqPlot(twinData2$income2)



