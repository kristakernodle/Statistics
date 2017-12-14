## Logistic Regression Code
# Version: 1.1
# Author: Krista Kernodle (kristakernodle@gmail.com)

# The input file for this code is a .csv with the following format:
#         eartag   |   sex   |   group   |   genotype   |   abBeh   |   dayAbBehDev
# Where each row (after the first) is a different mouse


# Define the directory, including filename, of the properly formatted data file
directory = "/Volumes/HD_Krista/MouseReaching/Pilot_Spring2017/DataFiles/AbBeh.csv"
inData <- read.csv(directory)

# Conduct the first logistic regression on development of aberrant behavior, based on group
groupLM <- glm(abBeh ~ group, data=inData, family="binomial")
summary(groupLM)

# Conduct the second logistic regression on development of aberrant behavior, based on genotype
genoLM <- glm(abBeh ~ genotype, data=inData, family="binomial")
summary(genoLM)

# Power analysis
library(powerMediation)

# groupLM
pWT = 0.6738
pHet = 0.0795
pKO = 0.0230


nWT = 9
nHet = 9
nKO = 7

nWTHet = nWT + nHet
nWTKO = nWT + nKO
nHetKO = nHet + nKO
  
BWTHet = nHet/nWTHet
BWTKO = nKO/nWTKO
BHetKO = nHet/nHetKO

pwrWTHet = powerLogisticBin(nWTHet,pWT,pHet,BWTHet,0.05)

pwrWTKO = powerLogisticBin(nWTKO,pWT,pKO,BWTKO,0.05)

pwrHetKO = powerLogisticBin(nHetKO,pKO,pHet,BHetKO,0.05)



