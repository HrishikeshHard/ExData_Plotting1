## Making the third plot 
## This plot is showing Energy Sub Metering as a function of Time. 
## We will make use of post annotating commands once we plot our graph with one 
## variable first. All this to be done in png device.

png("Plot3.png", width = 480, height = 480)

with(Subhousedata, plot(TimeDate, Sub_metering_1, type = "l", col = "black"
                        xlab = "Day", 
                        ylab = "Energy sub metering"))

## Annotating 

with(Subhousedata, lines(TimeDate, Sub_metering_2, type = "l", col = "red"))
with(Subhousedata, lines(TimeDate, Sub_metering_3, type = "l", col = "blue"))
legend("topright", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), 
       lty = 1, lwd = 2,
       col = c("Black", "Red", "Blue"))

dev.off()