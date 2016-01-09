#Where the file is on my comp
file <- "~/exdata-data-household_power_consumption/household_power_consumption.txt"

#reading in the file.  Instructions specifically said the NA's were marked as ?
household <- read.table(file, header=TRUE, sep=";", na.strings = "?")

#Formats the Date column to be interpreted correctly
household$Date <- as.Date(household$Date, format="%d/%m/%Y")

#Subsets the data frame by two dates
hh<- household[(household$Date == "2007-02-01") | (household$Date == "2007-02-02"),]

#Formats the global active power to be read as numeric
hh$Global_active_power <- as.numeric(as.character(hh$Global_active_power))

#Creates the histogram and adds labels
hist(hh$Global_active_power, col="red", main =paste("Global Active Power"), xlab="Global Active Power(kilowatts)" )

#Creates png of the graph
dev.copy(png, file="plot1.png")
dev.off()