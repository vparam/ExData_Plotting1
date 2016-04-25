household_power_consumption <- read.table('household_power_consumption.txt', header=T, sep=';', skip=66637, nrows=2880)

header <- read.table('household_power_consumption.txt', header=T, sep=';', nrows=1)

colnames(household_power_consumption) <- colnames(header)

household_power_consumption$Timestamp <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time), "%d/%m/%Y %H:%M:%S")

png(filename='plot3.png')

plot(household_power_consumption$Timestamp, household_power_consumption$Sub_metering_1, xlab="", ylab="Energy sub metering", type='l')

lines(household_power_consumption$Timestamp, household_power_consumption$Sub_metering_2, col='red')

lines(household_power_consumption$Timestamp, household_power_consumption$Sub_metering_3, col='blue')

legend("topright", col=c('black', 'red', 'blue'), legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1)

dev.off()
