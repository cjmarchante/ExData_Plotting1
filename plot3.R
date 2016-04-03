setwd("/Users/cjmarchante/Desktop/Coursera/Exploratory Analysis/week 1-project/ExData_Plotting1")
# Loading the dataset
source("Getting and Cleaning Dataset.R")


# opens png device
png(filename='plot3.png',width=480,height=480,units='px')

# plots the lines chart
with(hpowerconsumption,plot(datetime,submetering1,type="l",col = "black", xlab = "", ylab = "Energy sub metering"))
with(hpowerconsumption,lines(datetime,submetering2,type="l",col = "red"))
with(hpowerconsumption,lines(datetime,submetering3,type="l",col = "blue"))
legend("topright", lty='solid', col = c("black", "blue","red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
# Closes device
dev.off() 