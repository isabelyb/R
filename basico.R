#GETTING HELP
  #Accessing the help files
?mean
help.search("weighted mean")
help(package = "dplyr")

  #More about an object
str(iris)
class(iris)

#USING LIBRARIES
install.packages(dplyr)
library(dplyr)
dplyr::select #use a particular function from dplyr
data(iris) #load a built-in dataset

#WORKING DIRECTORY
getwd()  #get directory
setwd("C://file/path") #change the current working directory

#VARIABLE ASSIGNMENT
x <- 100
x

y <- "cien"
y

#VECTORS
  #creating vectors
c(2,4,6)            #join elements into a vector
2:6                 #an integer sequence
seq(2,3, by=0.5)    #a sequence from 2 to 3, by 0.5
rep(1:2, times=3)   #repeat a vector x time
rep(1:2, each=3)    #repeat x time elements of a vector 

  #vector functions
sort(x)     #return x sorted  ??
rev(x)      #return x reversed ??
table(x)    #see counts of values
unique(x)   #see unique values

sort(y)
rev(y)
table(y)
unique(y)

  #selecting vector elements
list <- c(3,6,9,12,15,18,21) #for examples below


    #by position
list[4]       #the fourth element
list[-4]      #all but the fourth
list[2:4]     #elements two to four
list[-(2:4)]  #all elements exept two to four
list[c(1,5)]  #elements one and five

    #by value
list[list == 12]   #elements wich are equal to twelve
list[list < 12]    #elements less than twelve
list[list %in% 
       c(3, 15, 5)] #elements in the set 3,15, 5

  #named vectors
birds_503A <- c("tangaritas", "carpinteri", "azuleji", "palmeri", "colibrito", "lori", "euphonia")
birds_503A
x["apple"] # element with name "apple"  ???


#PROGRAMMING
  #for loop: for (variable in sequence){Do something}

for (i in 1:4){
  j <- i + 10
  print(j)
}

for (i in birds_503A){
  print(i)
}
  

  #while loop: while (condition){Do something}

i <- 1
while (i < 5){
  print(i)
  i <- i + 1}

  #if statements: if (condition) {Do something} else {Do something different}

if (i > 3){
  print("Yes")
} else {
  print("No")
}

  #functions: function_name <- function(var){Do something  return(new_variable)}

square <- function(x){
  squared <- x*x
  return(squared)
}

square(10)

fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}

fahrenheit_to_celsius(77)


#READING AND WRITING DATA

  #input_1
df <- read.table("file.txt")
  #output_1
write.table(df, "file.txt")
  #description_1: Read and write a delimited text file

#input_2
df <- read.csv("file.csv")
#output_2
write.csv(df, "file.csv")
#description_2: Read and write a comma separated value file. This is a special case of read.table/write.table

#input_3
load("file.RData")
#output_3
save(df, file = "file.rData")
#description_3:Read and write an R data file, a file type special for R. 



#TYPES: converting between common data types in R. Can always go from a higher value in the table to a lower value.

as.logical # TRUE, FALSE, TRUE

as.numeric # 1, 0, 1

as.character # '1', '0', '1'

as.factor # '1', '0', '1', # levels: '1', '0' 


#MATHS FUNCTIONS

log(x) # Natural log
sum(x) # Sum
exp(x) # Exponential
mean(x) # Mean
max(x) # Largest element
median(x) # Median
min(x) # Smallest element
quantile(x) # Percentage quantiles (0,25,50,75,100)
round(x, n) # Round to n decimal places
rank(x) # Rank of elements
signif(x, n) # Round to n significant figures
var(x) # The variance
cor(x, y) # Correlation 
sd(x) # The standard deviation


#THE ENVIRONMENT

ls () # list  all variables in the environment
rm(x) # remove x from environment
rm(list = ls()) # remove all variables from the environment

#MATRIXES

  # create a matrix from x
x <- c(1,2,3,4,5,6,7,8,9)
x
m <- matrix(x, nrow = 3, ncol = 3)
View(m) # see the m matrix

m[2, ] #select a row
m[ ,1] #select a column
m[2,3] #select an element

t(m) #transpose

m %*% n # matrix multiplication ??
m %*% 2

solve(m, n) # find m * x = n ??
solve(m, 1)


# LISTS: collection of elements which can be of different types

l <- list(x = 1:5, y = c("a", "b"))
l

l[[2]] # second element of l

l[1] # new list with only the first element

l$x # element named x

l ["y"] #new list with only element named y


#DATA FRAMES: a especial case of a list where all elements are the same length

df <- data.frame(x = 1:3, y = c('a', 'b', 'c'))

  #matrix subsetting

df[ ,2] # a b c     levels: a, b, c
df[ ,1] # 1 2 3

df[2, ] # x y    2 2 b
df[3, ] # x y    3 3 3

df[2,2] # b    levels: a b c
df[3,1] # 3
df[3,2] # c    levels: a b c

  # list subsetting

df$x #  1 2 3
df[[2]] # a b c    levels: a b c

View(df)  # see the full data frame
head(df)  # see the first six rows

nrow(df)  # number of rows
ncol(df)  # number of columns
dim(df)  # number of rows and columns

cbind(df, df) # bind columns
rbind(df, df) # bind rows

#STRINGS

paste(x, y, sep = " ") # Join multiple vectors together
paste(x, collapse = ' ') # Join elements of a vector together 
grep(pattern, x) # Find regular expression matches in x  ??
gsub(pattern, replace, x) # Replace matches in x with a string
toupper(y) # Convert to uppercase
tolower(y) # Convert to lowercase
nchar(x) # Number of characters in a string

#FACTORS ??

factor(x) # Turn a vector into a factor. Can set the levels of the factor and the order
cut(x, breaks = 4) # Turn a numeric vector into a factor but ‘cutting’ into sections



#STATISTICS

lm(x ~ y, data=df) # linear model

glm(x ~ y, data=df)  #Generalised linear model

summary # Get more detailed information out a model

t.test(x, y) # Preform a t-test for difference between means

pairwise.t.test # Preform a t-test for paired data

prop.test # Test for a difference between proportions

aov # Analysis of variance


#DISTRIBUTIONS

 # normal (random variates, density function, cumulative distribution, quantile)

 # poison (random variates, density function, cumulative distribution, quantile)

 # binomial (random variates, density function, cumulative distribution, quantile)

 # uniform (random variates, density function, cumulative distribution, quantile)


#PLOTTING

x <- seq(1, 100, by=2)
x
y <- seq(100, 1000, by=20)
y

plot(x) # values of x in order

plot(x, y) # Values of x against y

hist(x) # Histogram of x