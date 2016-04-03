setwd("/Users/cjmarchante/Desktop/Coursera/Exploratory Analysis/week 1-project/ExData_Plotting1")
# Loading the dataset
source("Getting and Cleaning Dataset.R")


# opens png device
png(filename='plot1.png',width=480,height=480,units='px')

# plots the histogram
hist(hpowerconsumption$globalactivepower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Closes device
dev.off() 