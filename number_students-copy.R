x <- c(1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000);
y <- c(129, 301, 473, 575, 611, 612, 620, 586, 549, 575, 623, 622, 601, 592, 572, 551, 571, 616, 596, 563);

relation <- lm(y~x)

predictIt <- function(year) {
  a <- data.frame(x = year)
  result <-  predict(relation,a)
}

plot(x,y,col = "blue" ,main = "Enrolled students for year 1981 to 2000 on CS5 subject",
     abline(lm(y~x)),cex = 1.3,pch = 16,xlab = "Year",ylab = "Number of enrolled students")

