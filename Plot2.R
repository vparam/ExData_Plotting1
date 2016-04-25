household_power_consumption <- read.table('household_power_consumption.txt', header=T, sep=';', skip=66637, nrows=2880)

header <- read.table('household_power_consumption.txt', header=T, sep=';', nrows=1)

colnames(household_power_consumption) <- colnames(header)

png(filename='plot2.png')

household_power_consumption$Timestamp <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time), "%d/%m/%Y %H:%M:%S")

plot(household_power_consumption$Timestamp, household_power_consumption$Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", type='l')


dev.off()
