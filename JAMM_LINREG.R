## Load the CSV file
data = read.csv("/home/carlomigueldy/Desktop/JAMM_FACT_TABLE.csv", header = TRUE)
x <- c()
y <- c()
for(i in data[1]) { x <- i }
for(i in data[3]) { y <- i }

relation <- lm(y~x)

headerMessage <- "No. of Students with a Grade of 3.00 Per Year"
plot(x,y,col = "blue", main = headerMessage, 
     abline(lm(y~x)), cex = 1.3,pch = 16
     ,xlab = "Year", ylab = "No. of Students with 3.00 Grade")

