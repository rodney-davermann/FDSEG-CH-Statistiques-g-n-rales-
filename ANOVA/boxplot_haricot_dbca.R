
# Read the data 
library(xlsx)
haricot<-read.xlsx("C://R_Training//anova_haricot_dbca.xls", sheetIndex=1,header=TRUE)

# Boxplot for All combined blocks
boxplot(Rendement~Variete, col=c("green","yellow","red"), vertical=T, main="Rendement par Variete")