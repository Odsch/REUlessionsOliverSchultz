#Lesson 4: Playing cards
#Lesson 5:
die <- c (1,2,3,4,5,6)
die
is.vector(die)
# tests whether object is an atomic vector -> true if yes, False if no
five <- 5
five
is.vector(five)
length(five)
length(die)
#vector can just have length of 1: >length() returns length of atomic vector
int <- 1L
text <- "ace"
int <- c(1L, 5L)
text <- c("ace", "hearts")
sum(int)
sum(text)#not valid yet
typeof(die)#tells you what type of object you are working with
int <-c(-1L, 2L, 4L)
int
typeof(int)#R wont save number as integer unless L is included, otherwise its doubles
sqrt(2)^2 - 2
#since the sqare root cannot be expressed in 16 digits, R rounds, causing the result not to be zero
#These are floating-point errors and can be cause of weird results
#Floating-point errors can be avoided by no decimals and only using integer but not a good option for science
#usually floating point errors are insignificant, so not super important
text <- c("hey", "yall")
text
typeof(text)
typeof("hey")
#anything surrounded in quotes will be treated as a character string
3>4
logic <- c(TRUE, FALSE, TRUE)
logic
typeof(logic)
typeof(F)
#TRUE and FALSE are always treated as logical data
#T and F are considered shorthand for TRUE and FALSE
comp <- c(1+1i, 1+2i, 1+3i)
comp
typeof(comp)
#complex vectors store complex numbers, add an imaginary term 'i'
raw(3)
typeof(raw(3))
hand <- c("ace", "king", "queen", "jack", "ten")
hand
typeof(hand)#created one-dimensional group of card names
attributes(die)
names(die)
names(die) <- c("one", "two", "three", "four", "five", "six")
names(die)
attributes(die)
die #now the dice have names displayed above the numbers
die +1 # the names won't affect the values of the vector, and will not be affected when values change
names(die) <- c("uno", "dos", "tres", "quatro", "cinco", "seis")
die
names(die) <- NULL
die
#can transform atomic vector into an n-dimentional array with dim
dim(die) <- c(2,3)
die
dim(die) <- c(3,2)
die
dim(die) <- c(1,2,3)
die
#to have more controll of array, use matrix
m <- matrix(die, nrow=2)#'nrow' defines how many rows and 'ncol' defines how many columns
m
m <- matrix(die, nrow=2, byrow=TRUE)#can tell R to fill by row with 'byrow=true' otherwise its by column
m
ar <- array(c(11:14, 21:24, 31:34), dim= c(2,2,3))
ar
hand1 <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
matrix(hand1, nrow= 5)
matrix(hand1, ncol=2)
dim(hand1) <-c(5, 2)
dim
dim(hand1)
hand2 <- c("ace", "spades", "king", "spades", "queen", "spades", "jack", "spades", "ten", "spades")
matrix(hand2, nrow = 5, byrow = TRUE)
dim(die) <- c(2, 3)
typeof(die)
class(die)
attributes(die)
class("hey")#use class to find objects atomic type
class(5)# can also use it to set class attribute but BAD IDEA
now <- Sys.time()
now
typeof(now)
class(now)
unclass(now)
mil <- 1000000
mil
class(mil) <- c("POSIXct", "POSIXt")
mil
gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
gender
as.character(gender)
card <- c("ace", "hearts", 1)
card
sum(c(TRUE, TRUE, FALSE, FALSE))# will become sum(c(1,1,0,0)) since TRUE=1 FALSE=0
as.character(1)
as.logical(1)
as.numeric(FALSE)
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1
#'list' creates list in same way 'c' creates a vector
card <- list ("ace", "hearts", 1)
card
#Data frames are used for storage structure for data analysis, like excel spreadsheet
df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"), value= c(1,2,3))
df
typeof(df)
class(df)
str(df)
deck#dont do large data sets, saves you time and heartache, download files when possible
head(deck)#returns just the first 6 rows 'tails' lets you view the last 6
deck
write.csv(deck, file= "cards.csv", row.names = FALSE)# saves copy as a new .csv file
getwd()#see working directory
#row.names = FALSE prevents R from assuming that the row names are the first column of data in data frame
#no idea why, but that will prevent this from happening, so always do it
# Summary: save data in 5 different types:
   #single_Type  multiple_types
#1D   Vector      List
#2D   Matrix      Data FRame
#nD   Array

#Lesson6 R Notation
deal(deck)
deck [ , ] # the brackets tell R what values to return
head(deck)
deck[1, 1]
deck[1, c(1, 2, 3)]# will now return the first row and the 3 columns
new <- deck[1, c(1, 2, 3)]
new
deck[c(1,2), c(1, 2, 3)]
vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]
deck[1:2, 1:2]# create a new data frame
deck[1:2, 1]# create a vector
deck[1:2, 1, drop = FALSE]#drop = FALSE creates a data frame
#Negative integer will return everyting except the elements in the index
deck[-(2:52), 1:3] #only returns the first row because I told it not to show rows 2:52
deck [-(3:52), 1:3]
deck[c(-1,1),1]# cannot put negative integer with positive integer in same index
deck[-1,1]# can use it to subset an object if they are in different indexes
deck[c(1,2), -c(3, 2)]
deck[0, 0] #lol
deck[1, ]#if left blank, it shows every value in that row or column
deck[ , 1:3]
deck [1, c(TRUE, TRUE, FALSE)]
rows <- c(TRUE,  F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 
          F, F, F, F, F, F, F, F, F, F, F, F, F, F)
deck[rows, ] #you can also use true and false to tell R what to extract (not useful for this scenario)
deck[1, c("face", "suit", "value")]
deck[ ,"value"] # you can also ask for elements by name
deal <- function(cards)
{cards[1, ]
}
deal#dont forget the (deck)!!
deal(deck)

deck2 <- deck [1:52, ]
head(deck2)
deck3 <- deck[c(2, 1, 3:52), ]
head(deck3)
random <- sample(1:52, size= 52)
random
deck4 <- deck[random, ]
head(deck4)
shuffle <- function(cards) {
  random <- sample(1:52, size= 52) 
  cards[random, ]
}
deal(deck)
deck2 <- shuffle(deck)
deal(deck2)
#to select a column from a data frame use $
deck$value
mean(deck$value)#can use to just use that data frame
median(deck$value)
lst <- list(numbers= c(1,2), logical= TRUE, strings= c("a", "b", "c"))
lst
lst[1]
sum(lst[1])#cannot work with list, use $ instead
lst$numbers
sum(lst$numbers)
#if theres no name then extra brackets will do the same
lst[[1]]
lst["numbers"]#return a smaller list
lst[["numbers"]]#return the values imside element
