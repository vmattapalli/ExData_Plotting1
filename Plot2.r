var1<-read.table("household_power_consumption.txt", sep = ";", colClasses = "character",header = TRUE)
var2<-var1[as.Date(var1$Date,format='%d/%m/%Y')==as.Date("2007-02-01") | as.Date(var1$Date,format='%d/%m/%Y')==as.Date("2007-02-02"),]
datetime<-strptime(paste(var2$Date,var2$Time, sep=""),"%d/%m/%Y%H:%M:%S")
GlobalPowerActive<-as.numeric(var2$Global_active_power)
png("Plot2.png",width=480, height=480)
plot(datetime,GlobalPowerActive,type = "l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()    
