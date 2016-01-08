
file <- "~/exdata-data-household_power_consumption/household_power_consumption.txt"


household <- read.table(file, header=TRUE, sep=";", na.strings = "?")
household$Date <- as.Date(household$Date, format="%d/%m/%Y")

hh<- household[(household$Date == "2007-02-01") | (household$Date == "2007-02-02"),]

hh$Global_active_power <- as.numeric(as.character(hh$Global_active_power))

hist(hh$Global_active_power, col="red", main =paste("Global Active Power"), xlab="Global Active Power(kilowatts)" )

dev.copy(png, file="plot1.png")
dev.off()