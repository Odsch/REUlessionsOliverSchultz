#Lession 2:fastR
1+1
mean(Nile)
print(mean(Nile))
Nile
length(Nile)
hist(Nile) # creates Histograms
hist(Nile,break=20)#allows you to draw a certain number of bins for the dataset
hist(Nile,break=100)# YOur Turn
hist(Nile,break=5)
?hist
#Lession 3: fastR
Nile[2]
Nile[c(2,5,6)]
Nile[c(2,3,4)]
Nile[2:4]# shortcut for consecutive numbers
mean(Nile[81:100])
n81100 <- Nile [81:100]# how to make a shortcut
mean(n81100)
sd(n81100) #sd: standard deviation
n81100[1]
Nile[81]
Nile[45:60] # Your Turn
n4560 <- Nile[45:60]
mean(n4560)
mean(Nile[45:60])
length(Nile)
length(n81100)
#Lession 1: Hands-on R
1+1
100:130#the number before the result is the number of the value that is first on that line
#If the command is incomplete a + will appear to fill the remainder
5-
+1
3%5#if R doesnt recognize, R will give an error message
2*3#multiply
4-1#subtract
5+2#add
6/3#divide
6/(4-1) # follows order of operations
#if you do ## it will make it easier to copy paste
7+2
9*3
27-6
21/3
#It ended up with the same number, I should have realized haha
1:6#Virtual Dice!
a <- 1
a+2
die <- 1:6
die
#you can nickname an object almost anything but a few rules:
# 1: Name cannot start w/ a number
# 2: cannot use special symbols like- ^, !, $, @, +, -, /, or *
# 3: R is case sensitive so name and Name would give you different objects
# 4: R will overwrite previous info
my_number <- 1
my_number <- 999
1s ()
1s
ls()
die-1 #will subtract 1 from each element of die
die/2
die*die #will match up vectors and then manipulates them (in this case multiply them together)
1:2
1:4
die
die+1:2# will repeat 1&2 to match up to all 6 sides (so 1 w/ 1, 2 w/ 2, 3 w/ 1, 4 w/ 2, ect..)
die+1:4 # will make error message because not multiple of shorter length
die%%die
die %% die
die %*% die #inner multiplication
die %o% die #outer multiplication
round(3.1415)
factorial(3)
mean(1:6)
mean(die)
round(mean(die))#translate nickname->mean of value -> round that value
sample(x = 1:4, size = 2) # random selection X=total #of values, size is # of rolls
sample(x=die, size=1)

sample(die, size = 1)
#using x is optional, but good for not confusing things, this same will apply to names for more complicated data
round(3.1415, corners=2)
args(round)# will show you what names apply to that function
round(3.1415, digits=2)#will round to 2 digits
sample(die, 1)#it will go in order that R has assigned, naming them will prevent R from assuming order
sample(die, size=2)#the second # will never have same value as first number
sample(die, size=2, replace= TRUE)
#replace=TRUE (must be capatalized) allows numbers to be reused
#creates independent random samples
dice <- sample(die, size=2, replace=TRUE)
dice
sum(dice)
dice # does not reroll the sample
roll
roll()
roll <- function() {
die <- 1:6
dice <- sample (die, size=2, replace=TRUE)
sum(dice)
}# function for dice roll sum, what is triggered by the roll function
roll()
roll()#parentheses are trigger that cause R to run the function
dice
1+1
sqrt(2)
die <- sample(die, size=2, replace=TRUE)
roll2 <- function(bones) {
  dice <- sample(bones, size=2, replace=TRUE)
  sum(dice)
}
#bones acts as a new object, as long as its defined it will work
roll2(bones=1:4)
roll2(bones=1:6)
roll2(bones=1:20)
roll2()
roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size=2, replace=TRUE)
  sum(dice)
}
roll2
roll2()
roll2()
