p1 <- 8/11
n1 <- 11
p2 <- 4/18
n2 <- 18
p <- (n1 * p1 + n2 * p2)/ (n1 + n2)
z <- (p1 - p2) / sqrt(p * (1-p) * (1/n1 + 1/n2))

seP1 <- sqrt((p1*(1-p1))/n1)
seP2 <- sqrt((p2*(1-p2))/n2)

x <- barplot(c(p2,p1),col=c("Blue","Red"),main="Proportions of Aberrant Behavior",names.arg=c("Control","Mutant"),ylim=c(0,1.1))

lines(x[c(1,1)],c(p2+seP2,p2-seP2))
lines(x[c(2,2)],c(p1+seP1,p1-seP1))
lines(c(0.5,0.9),c(p2+seP2,p2+seP2))
lines(c(0.5,0.9),c(p2-seP2,p2-seP2))
lines(c(1.7,2.1),c(p1+seP1,p1+seP1))
lines(c(1.7,2.1),c(p1-seP1,p1-seP1))

lines(x[1:2],c(.95,.95))
lines(x[c(2,2)],c(.95,.90))
lines(x[c(1,1)],c(.95,.36))
text(x[1]+((x[2]-x[1])/2),1,"*")

pval = 2*pnorm(-abs(z))
