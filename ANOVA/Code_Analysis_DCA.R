
# R script for DCA

# Read the data from an Excel file
library(xlsx)
Grenadia<-read.xlsx("C://R_Training//DCA.xlsx", sheetIndex=1, header=T)
View(Grenadia)

# Structure data
str(Grenadia)

# Get directly variables from their name
attach(Grenadia)

# Preliminary data analysis
summary(Grenadia)

# Summary by Variety
summary_Variety<-function(x) c(mean=mean(x), sd=sd(x)) 
by(Rendement, Variete, FUN=summary_Variete)

# Exploratory data analysis : Boxplot by variety 
boxplot(Rendement~Variete, vertical=TRUE, col=c("red","yellow","grey", "green"))

# ANOVA 
Grenadia_anova<-aov(Rendement~Variete)
summary(Grenadia_anova)

# Multiple comparisons : for more explicit answers load the "agricolae" package

# a) LSD (The least significant difference)
library(agricolae)
LSD.test(Grenadia_anova,"Variete", console=TRUE)

# b) Test de Tukey HSD
library(agricolae)
HSD.test(Grenadia_anova, "Variete", console=T)

# c) Duncan test 
duncan.test(Grenadia_anova, "Variete", console=T, group=F)





