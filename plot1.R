setwd("D:\\OneDrive\\Coursera\\Exploratory-Data-Analysis\\Project1")
source("load_data.R")
plot1 <- paste(getwd(), "/graphics/plot1.png", sep = "")
if(!file.exists(plot1)){
  png("graphics/plot1.png", width = 480, height = 480)
  hist(d$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
  dev.off()
} else {
  hist(d$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
}
