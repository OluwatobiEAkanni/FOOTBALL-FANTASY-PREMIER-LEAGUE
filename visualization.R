#the following set of code is inspired by  "Dr. Noll J. (2023) Academic section: practical_4, HistogramPlusBoxplot"

# Load base R
library(base)

#setting the output to pdf
pdf("visualization.pdf")

#reading our dataset
mydata <- read.csv("cleaned_merged_seasons.csv")

#creating Boxplot graph for the dataet
boxplot(mydata$total_points ~ mydata$season_x, main = "Boxplot of  Football Fantasy Premier League", xlab = "season_x", ylab = "total_points")

#creating a histogram for the dataset
hist(mydata$total_points, breaks = , main = "Histogram of  Football Fantasy Premier League", xlab = "total_points", ylab = "Frequency", freq=FALSE)

#calculates the mean of the variable "total_points"
# in the dataset "mydata" and stores it in the variable "mean_total"
mean_total <- mean(mydata$total_points)

#the standard deviation of the variable "total_points" 
#in the dataset "mydata" and stores it in the variable "sd_total".
sd_total <- sd(mydata$total_points)

#creating a sequence of 100 evenly spaced values between 
#the minimum and maximum values of the variable "total_points"
# in the dataset "mydata" and stores it in the variable "x"
x <- seq(min(mydata$total_points), max(mydata$total_points), length = 100)

#calculating the normal distribution values for the sequence of "x"
# values, using the mean and standard deviation calculated earlier, and stores it in the variable "y".
y <- dnorm(x, mean = mean_total, sd = sd_total)

#plots a line graph using the "x" and "y" values, with a blue color.
lines(x, y, col = "blue")

dev.off()
