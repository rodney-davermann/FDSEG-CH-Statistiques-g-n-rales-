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
