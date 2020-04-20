## Making the 4th plot. 
## This plot has 4 plots included. We will plot each plot part by part, sequentially.
## We make spaces for each plot by changing the parameters to our values. 
## All this to be done in png device. 

png("Plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

## First plot 
with(Subhousedata, plot(TimeDate, Global_active_power, type="l", 
                        xlab="", 
                        ylab="Global Active Power"))
## Second plot 
with(Subhousedata, plot(TimeDate, Voltage, type = "l", 
                        xlab="datetime", 
                        ylab="Voltage"))
## Third plot with annotation commands 
with(Subhousedata, plot(TimeDate, Sub_metering_1, type="l", 
                        xlab="", 
                        ylab="Energy sub metering"))
with(Subhousedata, lines(TimeDate, Sub_metering_2, type = "l", col = "red"))
with(Subhousedata, lines(TimeDate, Sub_metering_3, type = "l", col = "blue"))
legend("topright", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), 
       lty= 1, lwd=2, 
       col = c("black", "red", "blue"))
## Fourth plot 
with(Subhousedata, plot(TimeDate, Global_reactive_power, type="l", 
                        xlab="datetime", 
                        ylab="Global reactive power"))


dev.off()