#Combines the date and time column into a single date column, may want to add a completely new column in the future
hh$Date <- paste(hh$Date, hh$Time)
#reformats the column so that it can read the date and time correctly 
hh$Date <- strptime(hh$Date, format="%Y-%m-%d %H:%M:%S")

#Creates plot
with(hh, plot(Date, Global_active_power,xlab="", ylab="Global Active Power(kilowatts)", main="", type="l"))

#Saves graph as png
dev.copy(png, file="plot2.png")
dev.off()