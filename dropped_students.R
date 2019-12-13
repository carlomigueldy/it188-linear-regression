## Load the CSV file
data = read.csv("./FACT_TABLE.csv", header = TRUE)
x <- c()
y <- c()
for(i in data[1]) { x <- i }
for(i in data[3]) { y <- i }

relation <- lm(y~x)

predictIt <- function(year) {
  a <- data.frame(x = year)
  result <-  predict(relation,a)
}

headerMessage <- "Dropped Students on Subject CS5 For Year 1981 to 2000"

plot(x,y,col = "blue", main = headerMessage, 
     abline(lm(y~x)), cex = 1.3,pch = 16
     ,xlab = "Year", ylab = "Number of Dropped Students")

