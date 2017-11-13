var1<-read.table("household_power_consumption.txt", sep = ";", colClasses = "character",header = TRUE)
var2<-var1[as.Date(var1$Date,format='%d/%m/%Y')==as.Date("2007-02-01") | as.Date(var1$Date,format='%d/%m/%Y')==as.Date("2007-02-02"),]
png("Plot1.png",width=480, height=480)
hist(as.numeric(var2$Global_active_power),col="Red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()  