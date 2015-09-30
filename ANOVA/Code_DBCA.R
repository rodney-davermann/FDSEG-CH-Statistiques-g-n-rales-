
# Read the data 
library(xlsx)
haricot<-read.xlsx("C://R_Training//anova_haricot_dbca.xlsx", sheetIndex=1,header=TRUE)

# Structure of variables
str(haricot)

# Attache the data from names variables
attach(haricot)

# Convert Bloc (numeric) to Factor
Bloc<-as.factor(Bloc)

# Anova 
haricot_aov<-aov(Rendement~Bloc+Variete)
summary(haricot_aov)

# Multiple comparisons
library(agricolae)
LSD.test(haricot_aov, "Variete", console=T)