## Plotting the second graph

## It shows Global Avtive Power as a function of time. To achieve this, we must plot 
## it on Y axis. On X axis there should be time and on Y axis there should be GAP.
## we cannot directly plot using Time variable, as we must specifiy to which days/date
## for this, we can create another table where we have brought dates and time together. 

TimeDate <- strptime(paste(Subhousedata$Date, Subhousedata$Time, sep = " "),
                     format = "%d/%m/%Y %H:%M:%S")

## Now we will plot the graph in png device as follows. Note that we specify type.

png("Plot2.png", width = 480, height = 480)

with(Subhousedata, plot(TimeDate, Subhousedata$Global_active_power,
                        xlab = "Day", ylab = "Global Active Power(kilowatts)"),
                        type = "l")  ##This is "L" in lowercase, not "1" (one)
dev.off()
