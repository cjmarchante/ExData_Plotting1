setwd("/Users/cjmarchante/Desktop/Coursera/Exploratory Analysis/week 1-project/ExData_Plotting1")
# Loading the dataset
source("Getting and Cleaning Dataset.R")


# opens png device
png(filename='plot4.png',width=480,height=480,units='px')
# set grid 2x2
par(mfrow = c(2, 2))


# Plot 1
with(hpowerconsumption,plot(datetime,globalactivepower,ylab='Global Active Power', xlab='', type='l'))

# Plot 2
with(hpowerconsumption,plot(datetime,voltage,ylab='Voltage', xlab='datetime', type='l'))

# Plot3
with(hpowerconsumption,plot(datetime,submetering1,type="l",col = "black", xlab = "", ylab = "Energy sub metering"))
with(hpowerconsumption,lines(datetime,submetering2,type="l",col = "red"))
with(hpowerconsumption,lines(datetime,submetering3,type="l",col = "blue"))
legend("topright", lty='solid', col = c("black", "blue","red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# Plot 4
with(hpowerconsumption,plot(datetime,globalreactivepower,ylab='Global_reactive_power', xlab='datetime', type='l'))



# Closes device
dev.off() 