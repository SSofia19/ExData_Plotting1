

household<- read.table("./data/household_power_consumption.txt", header=F, skip=66637, nrow=2880, sep=";")
colnames(household) <- c("Date", "Time", "Global_active_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
hist(household$Global_active_power, main= "Global Active Power", xlab= "Global Active Power (kilowatts)", col="red")