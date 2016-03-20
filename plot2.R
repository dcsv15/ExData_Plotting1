## Assumes dataLoad.R file is in working directory
## This program creates the second graph in a png format"plot2.png" according to the specs.

setwd("c:/coursera/exploration/week1Assignment")
  
source("dataLoad.R") 

png(filename = "plot2.png",  width = 480, height = 480, 
     units = "px", bg = "transparent") 

plot(DateTime, Global_active_power,  type = "l", 
      xlab = "", ylab = "Global Active Power (kilowatts)") 

dev.off() 
