##  dataLoad.R file is in working directory
## This program creates the first graph in a png format "plot1.png" according to the specs. 

setwd("c:/coursera/exploration/week1Assignment")
  
source("dataLoad.R") 

png(filename = "plot1.png",  width = 480, height = 480,  
    units = "px", bg = "transparent") 

hist(Global_active_power,  col = "red",  
      main = "Global Active Power", xlab = "Global Active Power (kilowatts)", 
      breaks = 12, ylim = c(0, 1200)) 
 dev.off() 
