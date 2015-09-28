
# Call the package "car"
library(car)

# Download the dataset (like data frame) "chile" into the package 
data("Chile")

# A quick look into the dataset 
View(Chile)

# Verify the class of the variables into the dataset 
str(Chile)

# Access variables directely in yhe database from their names
attach(Chile)

# Statistiques sommaire des donnees 
summary(Chile)

# Moyenne pour une variable quantitative 
mean(population, na.rm = T)

# Tableau de frequence pour une variable qualitative
table(sex)

# Les mesures de tendance centrale les plus utilisees pour une variable quantitative (Moyenne, Mediane, Mode): 
##fonction(variable)
mean(income, na.rm=T)
median(income, na.rm=T)
sort(income, decreasing = T)





 
