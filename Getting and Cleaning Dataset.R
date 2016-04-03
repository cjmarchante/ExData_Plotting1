# load libs
library(lubridate)

#Download and unzip, clean and subset the dataset
setwd("/Users/cjmarchante/Desktop/Coursera/Exploratory Analysis/week 1-project/ExData_Plotting1")

# Create datafolder if necessary
if (!file.exists('data')) {
  dir.create('data')
}

#check if the file with the clean dataset is already created if not it will make it
if (!file.exists('data/t_household_power_consumption.txt')) {
  
  # downloads and unzips the zip file 
  file.url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(file.url,destfile="data/householdpower_consumption.zip")
  unzip("data/householdpower_consumption.zip",overwrite=TRUE,exdir="data")
  
  # reads the dataset (using colClasess for faster loading)
  initial <- read.table("data/household_power_consumption.txt",header=TRUE, sep=";",na.strings='?',nrows = 100)
  classes <- sapply(initial, class)
  
  hpowerconsumption<-read.table("data/household_power_consumption.txt",header=TRUE,sep=";",na.strings='?', colClasses=classes)
  # subsets the data set by date range 
  hpowerconsumption<-hpowerconsumption[hpowerconsumption$Date=="1/2/2007" | hpowerconsumption$Date=="2/2/2007",]
  
  # cleaning up colnames
  colnames(hpowerconsumption)<-gsub("_","",tolower(colnames(hpowerconsumption)))
  
  
  # adds new column with DateTime
  hpowerconsumption$datetime<-dmy(hpowerconsumption$date)+hms(hpowerconsumption$time)
  # order the columns keeping the new colum and the rest of variables
  hpowerconsumption<-hpowerconsumption[,c(10,3:9)]
  
  # write the clean dataset to the directory
  write.table(hpowerconsumption,file='data/t_household_power_consumption.txt',sep=';',row.names=FALSE)
  
} else { # otherwise we only read the file and loads the dataset

hpowerconsumption<-read.table('data/t_household_power_consumption.txt',header=TRUE,sep=';')
hpowerconsumption$datetime<-as.POSIXct(hpowerconsumption$datetime)

}