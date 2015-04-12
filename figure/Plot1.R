

par(mfrow = c(1,1))

powercn<- read.table("household_power_consumption.txt",sep=";",header=T, na.strings="?")

pc<- powercn[powercn$Date=="1/2/2007"| powercn$Date=="2/2/2007",]

png(filename = "Plot1.png",  width = 480, height = 480, units = "px", pointsize = 12, bg = "transparent")

hist(pc[,3],breaks=10,main="Global active power",col=22,xlab="Global active power (kilowatts)")

print(plot)
dev.off()



 
 

