x <- c(1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000);
y <- c(0.093, 0.080, 0.080, 0.083, 0.072, 0.090, 0.1211, 0.091, 0.080, 0.100, 0.010, 0.093, 0.075, 0.079, 0.098, 0.089, 0.091, 0.084, 0.087, 0.067);

relation <- lm(y~x)

predictIt <- function(year) {
  a <- data.frame(x = year)
  result <-  predict(relation,a)
}

plot(x,y,col = "red" ,main = "Dropped Percentage of Students on Subject x For Year 1981 to 2000",
     abline(lm(y~x)),cex = 1.3,pch = 16,xlab = "Year",ylab = "Percentage of Dropped Students")

