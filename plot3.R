# load data file
data <- read.csv('data_subset.csv',header=T)

# open png device
png(file='plot3.png', bg = 'transparent')

# draw plot
datetime <- strptime(paste(data$Date,data$Time),format='%d/%m/%Y %H:%M:%S')
with(data,{
    plot(datetime,Sub_metering_1, typ='l', xlab ='', ylab = 'Energy sub metering')
    lines(datetime,Sub_metering_2, col='red')
    lines(datetime,Sub_metering_3, col='blue')
    })
legend("topright", pch = '_', col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# close png device
dev.off()