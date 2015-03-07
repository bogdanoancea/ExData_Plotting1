setwd("D:\\OneDrive\\Coursera\\Exploratory-Data-Analysis\\Project1")
source("load_data.R")
plot2 <- paste(getwd(), "/graphics/plot2.png", sep = "")
if(!file.exists(plot2)){
  png("graphics/plot2.png", width = 480, height = 480)
  plot(d$Time, d$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(d$Time, d$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}
