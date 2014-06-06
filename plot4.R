# load data file
data <- read.csv('data_subset.csv',header=T)

# open png device
png(file='plot4.png', bg = 'transparent')

# draw plots
par(mfrow = c(2,2))
datetime <- strptime(paste(data$Date,data$Time),format='%d/%m/%Y %H:%M:%S')
with(data,{
    # subplot1
    plot(datetime,Global_active_power, typ = 'l', xlab='',ylab="Global Active Power")
    
    # subplot2
    plot(datetime,Voltage,typ = 'l', ylab="Voltage")
    
    # subplot3
    plot(datetime,Sub_metering_1, typ='l', xlab ='', ylab = 'Energy Sub Metering')
    lines(datetime,Sub_metering_2, col='red')
    lines(datetime,Sub_metering_3, col='blue')
    legend("topright", pch = '_', col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")
    
    plot(datetime,Global_reactive_power,typ = 'l')
})

# close png device
dev.off()