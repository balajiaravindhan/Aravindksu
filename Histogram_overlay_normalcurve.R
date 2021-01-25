HS<- read.table("Histograms.txt", header = T) #loading the data table 

x<-HS$SS_WS12 #assigning name to each dataset/coloumn just to avoid typing it so many times
y<-HS$SS_DS13 #assigning name to each dataset/coloumn just to avoid typing it so many times
z<-HS$SS_DS14 #assigning name to each dataset/coloumn just to avoid typing it so many times

dev.new() #Open a new canvas for plotting the graph 

#Graph 1 

#histogram#1
h<-hist(x, col="white", xlim = c(0,100), ylim = c(0,150), main = "First draft", xlab = "whatever", ylab= "Frequency") #histogram (hist is the function, colour, xlim and ylim are x and y axis limit, "main" is heading of the graph, xlab and ylab is label)  


#drawing the normality curve
#we need a xand y for a n curve 

xfit <- seq(min(x), max(x), length= nrow(HS)) # creating x and min, max and number of data points n
yfit_density <- dnorm(xfit, mean=mean(x), sd=sd(x)) # creatig a y by predecting the normal distribution
yfit_freq <- yfit_density*diff(h$mids[1:2])*length(x) #converting density to frequency 
lines(xfit, yfit_freq, col="blue", lwd=2) # plotting the grpah col - color, lwd - line width

#graph 2
#histogram#2

g<-hist(y, col=rgb(0.8,0.8,0.8,0.9), xlim = c(0,100), ylim = c(0,150),border= F, add =T) #same but see the last function "add =T" is to layover the histogram with previous one
#in this histogram#2 I used "col= rgb" instead of using a solid color like previous just to create lite colors (Please don't spend two hours searching what is it)

#same as before 
xfit <- seq(min(y), max(y), length= nrow(HS))
yfit_density <- dnorm(xfit, mean=mean(y), sd=sd(y))
yfit_freq <- yfit_density*diff(g$mids[1:2])*length(y)
lines(xfit, yfit_freq, col="green", lwd=2)

#graph 3
#histogram#3

i<-hist(z, col=rgb(0.1,0.1,0.1,0.5), border= F, xlim = c(0,100), ylim = c(0,150), add=T) # the command "border =F" is to remove border of histogram bins

#same as before 
xfit <- seq(min(z), max(z), length= nrow(HS))
yfit_density <- dnorm(xfit, mean=mean(z), sd=sd(z))
yfit_freq <- yfit_density*diff(i$mids[1:2])*length(z)
lines(xfit, yfit_freq, col="red", lwd=2)

box() # this is to merge the origin of the grpah 

dev.new()
