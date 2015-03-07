setwd("D:\\OneDrive\\Coursera\\Exploratory-Data-Analysis\\Project1")
source("load_data.R")
plot3 <- paste(getwd(), "/graphics/plot3.png", sep = "")
if(!file.exists(plot3)){
  png("graphics/plot3.png", width = 480, height = 480)
  plot(d$Time, d$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(d$Time, d$Sub_metering_2, type="l", col="red")
  lines(d$Time, d$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  dev.off()
} else {
  plot(d$Time, d$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(d$Time, d$Sub_metering_2, type="l", col="red")
  lines(d$Time, d$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}

