## This script loads the original dataset and exports the required subset 
## as a .csv file in order to reduce loading time in plotting functions

data <- read.table(file='household_power_consumption.txt',header=T,sep=";",quote="",na.strings="?")
idx <- ((data$Date == '1/2/2007') | (data$Date == '2/2/2007'))
dataSub <- data[idx,]
write.csv(dataSub,file='data_subset.csv',row.names=F)