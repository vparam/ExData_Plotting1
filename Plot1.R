household_power_consumption <- read.table('household_power_consumption.txt', header=T, sep=';', skip=66637, nrows=2880)

header <- read.table('household_power_consumption.txt', header=T, sep=';', nrows=1)

colnames(household_power_consumption) <- colnames(header)

png(filename='plot1.png', width=480, height=480)

with(household_power_consumption, hist(Global_active_power, breaks=12, col='red', xlab='Global Active Power(kilowatts)', main='Global Active Power'))
dev.off()
