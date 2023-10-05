#fastR Lesson 4
sum(c(5,12,13))
#c function builds a vector of 5, 12, and 13
sum(Nile>1200)
x <- c(5,12,13)
x
x>8 #responds with whether each value is >8 with TRUE or FALSE
sum(x>8)#returns with total numbers greater than 8, in this case 2
sum(Nile[1:25])
which12sum(2,1,1,6,8,5)
Nile[1:25]

which(Nile>1200)#shows which years are over 1200
which1200 <- which(Nile > 1200)
which1200
length(which1200)
Nile[which1200]
Nile[Nile>1200]
x <- c(5,12,13,8)
x[-1]# asking for all values except the first, negative removes value

#fastR Lesson 5
?ToothGrowth
head(ToothGrowth)#shows the first 6 data points
tg <-ToothGrowth
mean(tg$len)# $ denote individual columns
tg[3,1]#3rd row, 1st column
tg$len[3]#does the same thing
tg[3,3]# d['row','column'], d=data set
mean(tg[,1])
z <- tg[2:5, c(1,3)]#can extract sustrates from data frame
z
y <-tg[,c(1,3)]#extract colums but keep all rows
nrow(tg)#shows number of rose in data
length(tg$len)#these also show # of rows
length(tg$supp)
length(tg$dose)
head(tg$len)#can do head function with this
head(tg$len, 10)
x <- c(420,69,666)#make your own dataframe
y <- c("cat", "dog", "fish")
d <- data.frame(x,y)
d
y[2]
z <- tg[,-2]
head(z)

#lesson 6
class(tg)# to find classes
class(tg$supp)

levels(tg$supp)#find list of categories

#Lesson 7
whichOJ <- which(tg$supp == 'OJ')
whichVC <- which(tg$supp == 'VC')
mean(tg[whichOJ,1])
mean(tg[whichVC,1])
tgoj <- tg[tg$supp == 'OJ',]
tgvc <- tg[tg$supp == 'VC',]
mean(tgoj$len)
mean(tgvc$len)

#Lesson 8
tg[tg$supp=='OJ'&tg$len<8.8,]#if you want to extract two values use&
tg[tg$len>28 | tg$dose == 1.0,]#if you want to satisfy at least 1 condition use |(its basically or)
w <- tg[tg$len>28 | tg$dose==1.0, ]
head(w)
nrow(w)
lendose <- tg[,c(1,3)]
head(lendose)
lendose <- tg[,c('len','dose')]
head(lendose)
exts <- Nile[Nile<800 |Nile>1300]
head(exts)
length(exts)
length(Nile[Nile<800 | Nile>1300])

#lesson 11
mtmpg <- mtcars$mpg
mt4 <- mtmpg[mtcars$cyl == 4]
mtl <- split(mtmpg,mtcars$cyl)#splits into multiple vectors
mtl
class(mtl)
mtl$'4'
mtl[[1]]#double brackets will access  list
head(mtcars$cyl)
m4 <- mtl[[1]]
m6 <- mtl[[2]]
m8 <- mtl[[3]]
names(mtl) <- c('four', 'six', 'eight')
mtl
mtl[[2]][3]
mtl$six[3]
mtcars[[1]]
