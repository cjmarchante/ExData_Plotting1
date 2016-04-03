setwd("/Users/cjmarchante/Desktop/Coursera/Exploratory Analysis/week 1-project/ExData_Plotting1")
# Loading the dataset
source("Getting and Cleaning Dataset.R")


# opens png device
png(filename='plot2.png',width=480,height=480,units='px')

# plots the lines chart
plot(hpowerconsumption$datetime,hpowerconsumption$globalactivepower,ylab='Global Active Power (kilowatts)', xlab='', type='l')
# Closes device
dev.off() 