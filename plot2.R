# load data file
data <- read.csv('data_subset.csv',header=T)

# open png device
png(file='plot2.png', bg = 'transparent')

# draw plot
datetime <- strptime(paste(data$Date,data$Time),format='%d/%m/%Y %H:%M:%S')
plot(datetime,data$Global_active_power,typ='l', xlab ='', ylab = 'Global Active Power (kilowatts)')

# close png device
dev.off()