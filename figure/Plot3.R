

par(mfrow = c(1,1))

powercn<- read.table("household_power_consumption.txt",sep=";",header=T, na.strings="?")

pc<- powercn[powercn$Date=="1/2/2007"| powercn$Date=="2/2/2007",]

png(filename = "Plot2.png",  width = 480, height = 480, units = "px", pointsize = 12, bg = "transparent")

tm <- paste(pc[,1],pc[,2],sep=" ")
ttm <- strptime(tm, "%d/%m/%Y %H:%M:%S")

plot(ttm,pc[,3],  type= "s",lty=1, ylab="Global active power (kilowatts)")

print(plot)
dev.off()



 
 

