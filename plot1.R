# load data file
data <- read.csv('data_subset.csv',header=T)

# open png device
png(file='plot1.png', bg = "transparent")

# draw histogram
hist(data$Global_active_power,xlab="Global Active Power (kilowatts)",col='red', main="Global Active Power")

# close pbg device
dev.off()