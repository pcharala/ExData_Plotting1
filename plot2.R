# load necessary subset of 'Household Power Consumption' data
data <- read.table(file='household_power_consumption.txt',header=T,sep=";",quote="",na.strings="?")
idx <- ((data$Date == '1/2/2007') | (data$Date == '2/2/2007'))
data <- data[idx,]

# open png device
png(file='plot2.png', bg = 'transparent')

# draw plot
datetime <- strptime(paste(data$Date,data$Time),format='%d/%m/%Y %H:%M:%S')
plot(datetime,data$Global_active_power,typ='l', xlab ='', ylab = 'Global Active Power (kilowatts)')

# close png device
dev.off()