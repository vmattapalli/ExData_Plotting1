var1<-read.table("household_power_consumption.txt", sep = ";", colClasses = "character",header = TRUE)
var2<-var1[as.Date(var1$Date,format='%d/%m/%Y')==as.Date("2007-02-01") | as.Date(var1$Date,format='%d/%m/%Y')==as.Date("2007-02-02"),]
datetime<-strptime(paste(var2$Date,var2$Time, sep=""),"%d/%m/%Y%H:%M:%S")
png("Plot3.png",width=480, height=480)

with(var2, {
  
  plot(datetime,Sub_metering_1, type="l", xlab="",ylab="Energy sub metering")
  lines(datetime,Sub_metering_2, type = "l", col = "red")
  lines(datetime,Sub_metering_3, type = "l", col = "blue")
  legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty = 1)
})

dev.off() 