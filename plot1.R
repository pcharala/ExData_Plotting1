# load necessary subset of 'Household Power Consumption' data
data <- read.table(file='household_power_consumption.txt',header=T,sep=";",quote="",na.strings="?")
idx <- ((data$Date == '1/2/2007') | (data$Date == '2/2/2007'))
data <- data[idx,]

# open png device
png(file='plot1.png', bg = "transparent")

# draw histogram
hist(data$Global_active_power,xlab="Global Active Power (kilowatts)",col='red', main="Global Active Power")

# close pbg device
dev.off()