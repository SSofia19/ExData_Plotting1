file <- "~/exdata-data-household_power_consumption/household_power_consumption.txt"
household <- read.table(file, header=TRUE, sep=";", na.strings = "?")
household$Date <- as.Date(household$Date, format="%d/%m/%Y")

hh<- household[(household$Date == "2007-02-01") | (household$Date == "2007-02-02"),]

hh$Date <- paste(hh$Date, hh$Time)
hh$Date <- strptime(hh$Date, format="%Y-%m-%d %H:%M:%S")

with(hh, plot(Date, Global_active_power, ylab="Global Active Power(kilowatts)", main="", type="l"))

dev.copy(png, file="plot2.png")
dev.off()
