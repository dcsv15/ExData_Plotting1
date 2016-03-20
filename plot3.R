## Assumes dataLoad.R file is in working directory
## This program creates the third graph in a png format "plot3.png" according to the specs.

setwd("c:/coursera/exploration/week1Assignment")
  
source("dataLoad.R") 

png(filename = "plot3.png",  width = 480, height = 480, 
    units = "px", bg = "transparent") 

plot(DateTime, Sub_metering_1,  type = "l", 
      col = "black",   xlab = "", ylab = "Energy sub metering") 

lines(DateTime, Sub_metering_2, col = "red") 
lines(DateTime, Sub_metering_3, col = "blue") 

legend("topright",  col = c("black", "red", "blue"), 
        c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1) 

dev.off() 
