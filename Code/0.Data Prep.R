#Setting the directory-------------------------------------
getwd()
setwd("C:/Users/banva/Desktop/MSBA/Spring/Machine Learning/Bank Marketing Project")
getwd()

#Importing the libraries----------------------------------
library(readr)
library(dplyr)

#Importing the datset--------------------------------------
data <- read_csv("data_wo_dummies.csv")


sapply(data,class)
#Data Exploration------------------------------------------

#class of each column
sapply(data, class)

#check the categories for each column
count_cat= function(x){
  if(class(x)== "character"){
    return(count(as.factor(x)))
  }
}

identical(class(data$marital) , "character")

count(as.factor(data$marital))
count_cat(data$marital)
lapply(data, count_cat)
#Target variable distribution
data%>%count(as.factor(y)) #11% yes

sapply(data,class)
length(unique(data$default))
length(unique(data$housing))
length(unique(data$loan))
length(unique(data$contact))
length(unique(data$month))
length(unique(data$day_of_week))
length(unique(data$pdays))
length(unique(data$poutcome))

a=data[!complete.cases(data),]
