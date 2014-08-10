## Coursera - Exploratory Data Analysis
## Kamal Mishra, Aug/2014
## Course Project 1
## plot1.R

##
## Start of program code -- plot1.R
##

	## Step1: Get the full dataset

	data_full <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

	data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")

	## Step2: Subset the data

	data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

	rm(data_full)

	## Step3: Converting dates

	datetime <- paste(as.Date(data$Date), data$Time)

	data$Datetime <- as.POSIXct(datetime)

	## Step4: Plot the requisite graph - Plot1

	hist(data$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

	## Step5: Saving to a file

	dev.copy(png, file="plot1.png", height=480, width=480)

	dev.off()

##
## End of program code -- plot1.R
##
