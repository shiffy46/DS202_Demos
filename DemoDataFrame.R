install.packages("devtools")
devtools::install_github("xdaiISU/classdata")
library(classdata)
cities

#-----Explore the dataset-----
str(cities)
class(cities)

names(cities)
head(cities)
head(cities,3)
tail(cities) #end of list

dim(cities) #get cols and rows
summary(cities) #same as describe in Python!!!!!!!

dat <- cities
View(dat) # @@@@CREATE TABLE(JUST LIKE EXCEL) -- VIEW(very useful)@@@@@
cities$Population # means view the population column
cities[['Population']] # same as above

cities[, 1:3] # select ALL rows and THREE cols
cities[1:3, ] # select rows one through three with all columns

# can also specify columns like this
violent <- cities[, c('City', 'Population', 'Violent.crimes')] #this is preferred@@@@@
str(violent)


cities[cities$City == 'Ames', ] #chose data based off of conditional/logic

#---------Example----------
head(cities,10)
mean(cities[,"Burglary"], na.rm = TRUE) ## need to specifiy removing null values(DUMB)
sd(cities[,"Burglary"], na.rm = TRUE) ## same here
#---------END----------

#------Example Problems------
str(cities)
violentByPop <- c(cities$Population/cities$Violent.crime)
violentByPop
cities$violentRatio = violentByPop
str(cities)
highestRatio <- cities[order(cities$violentRatio),]
head(highestRatio)
