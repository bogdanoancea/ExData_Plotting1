setwd("D:\\OneDrive\\Coursera\\Exploratory-Data-Analysis\\Project1")
library(httr)
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

data <- "data"
if(!file.exists(data)){
  dir.create(data)
}

graphics <- "graphics"
if(!file.exists(graphics)){
  dir.create(graphics)
}

archive <- paste(getwd(), "/data/exdata_data_household_power_consumption.zip", sep = "")
if(!file.exists(archive)){
  download.file(url, archive, method="curl", mode="wb")
}


f <- paste(getwd(), "/data/data_household_power_consumption.txt", sep = "")
if(!file.exists(f)){
  unzip(archive, list = FALSE, overwrite = FALSE, exdir = "data")
}

data_needed <- paste(getwd(), "/data/data_needed.rds", sep = "")
if(!file.exists(data_needed)){
  data <- "data/household_power_consumption.txt"
  d <- read.table(data, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
  d$Time <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")
  d$Date <- as.Date(d$Date, "%d/%m/%Y")
  q <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  d <- subset(d, Date %in% q)
  data_needed <- paste(getwd(), "/", "data", "/", "data_needed", ".rds", sep="")
  saveRDS(d, data_needed)
} else {
  data <- "data/data_needed.rds"
  d <- readRDS(data)
}

