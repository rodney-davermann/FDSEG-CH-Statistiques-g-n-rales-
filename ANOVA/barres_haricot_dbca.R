

# Read the data 
library(xlsx)
haricot<-read.xlsx("C://R_Training//anova_haricot_dbca.xls", sheetIndex=1,header=TRUE)

# Exploratory Data Analysis
library(ggplot2)
# Bar plot for all variety from each Bloc
ggplot(haricot, aes(x=Bloc, y=Rendement, fill=Variete)) + geom_bar(stat="identity", position="dodge") + ggtitle("Rendement haricot par variete et par bloc")