#Lesson 12
plot(Nile)#plots data
which(Nile<600)
which(Nile>1200)
which(Nile>1300)
plot(mtcars$wt,mtcars$mpg)
is.numeric(Nile)
class(Nile)
Nile[55]
Nile[1+1925-1871]
#Lesson 14
head(prgeng)
plot(prgeng$age, prgeng$wageinc)#too many results
indxs <- sample(1:nrow(prgeng), 2500)#allows you to take a random sample of 2500
prgeng2500 <- prgeng[indxs,]
prgeng2500 <- prgeng[sample(1:nrow(prgeng),2500),]
plot(prgeng2500$age,prgeng2500$wageinc) #plot with 2500 samples
plot(prgeng2500$age,prgeng2500$wageinc,col=prgeng2500$sex)#use color coding to break things down by gender  
plot(prgeng2500$age,prgeng2500$wageinc, col=as.factor(prgeng2500$sex),xlab='age',ylab='wage',cex=0.6)
#make smaller dots with 'cex='(in a scale of 0 to 1) and label axes with 'xlab=' and 'ylab='
plot(prgeng2500$wageinc,prgeng2500$age,col=1+(pregNum>9), xlab = 'Age', ylab= 'Wage', cex=0.5)
pregNum=as.numeric(prgeng2500$educ)
#Lesson 15: More on Base GRaphics

wagebygender <- split(prgeng$wageinc,prgeng$sex)
dm <- density(wagebygender[[1]])#vector of men's wages
dw <- density(wagebygender[[2]])#vector of women's wages
plot(dw,col='pink')
points(dm,cex=0.2)

#Activity 2:
install.packages("mgcv")
library(mgcv) #load package
plot(prgeng2500$age,prgeng2500$wageinc,xlab='Age',ylab='Wage')
smoothModel=gam(prgeng2500$wageinc ~ s(prgeng2500$age))
points(prgeng2500$age, smoothModel$fitted.values, col=6)
#smooths out unruly plots, so that it shows

#Activity 3:

library(ggplot2)
data("EuStockMarkets")
data("msleep")
matplot(stockTime, EuStockMarkets, type="l", lty=1)# graph 1

plot(log=(msleep$brainwt), log=(msleep$bodywt), col='blue')#bad
logBrainWeight_kg <- log(msleep$brainwt)#created a log(not nessisary) 
logBodyWeight_kg <- log(msleep$bodywt)
plot(logBodyWeight_kg,logBrainWeight_kg, col='blue')#prototype
plot(msleep$bodywt, msleep$brainwt, xlab= 'Brain Weight, kg', ylab = 'Body Weight, kg',pch=20, col=4, xlim = c(0,100), ylim = c(0.0,0.5), main = "Body vs Brain Weights") 
legend(x="topright",legend = 'one mammal species', pch = 19, col=4, cex=0.7)#graph2 final
?legend
 par(mfrow=c(2,2))#multiple graphs can be shown (2x2 grid)

plot(msleep$brainwt, msleep$sleep_total, xlab = "Brain Weight, kg", ylab = "Total Sleep, hrs", pch=20, col=3, xlim= c(0,5), ylim = c(1,20))#graph3 final

plot(logBrainWeight_kg, msleep$sleep_total, xlab= "log Brain Weight, kg", ylab = "Total sleep, hrs", pch= 19, col='2')
par(new=TRUE)
plot(log(msleep$brainwt), msleep$sleep_rem,pch=16,col=5,yaxt="n",xaxt="n",xlab="",ylab="")#xaxt,yaxt get rid of labels; xlab,ylab="" adds blank labels so that only the originals are shown
axis(4)
legend("topright",c("Total sleep","REM sleep"),pch=16,col=c(2,5))#graph4 final

