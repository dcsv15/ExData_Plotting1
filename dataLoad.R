## Exploratory Data Analysis- Week1 Assignment 
## This file loads the Electric Power ZConsumption data downloaded from UCI website
## Datafile "household_power_consumption.txt" downloaded to  folder "c:/coursera/exploration/week1Assignment"
## The data is read and made available to create plot files in png format as per instructions
## Used by plot1.R, plot2.R, plot3.R, plot4.R

setwd("c:/coursera/exploration/week1Assignment")

filename <- "household_power_consumption.txt" 

data <- read.table(filename, header = TRUE, sep = ";", 
                   colClasses = c("character", "character", rep("numeric",7)), na = "?") 
dim(data)  
attach(data) 

## We only need data of 2 days. 
 subset <- Date == "1/2/2007" | Date == "2/2/2007" 
 newData <- data[subset, ] 
 attach(newData) 
 
 x <- paste(Date, Time) 
 newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S") 
 rownames(newData) <- 1:nrow(newData) 
 dim(newData) 
 attach(newData) 
