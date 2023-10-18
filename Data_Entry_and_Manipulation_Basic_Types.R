# File:     Data_Entry_and_Manipulation.R
# Project:  BIS 581

# ARITHMETIC & PRINTING ###########################################

2+3  # Basic math; press cmd/ctrl enter

1:50  # Prints numbers 1 to 100 across several lines

print("Hello World!")  # Prints "Hello World"

# NUMBER ASSIGNMENTS #########################################

# Individual values
a <- 2            # Use <- and not =
2 -> b            # Can go other way, not recommended 
c <- d <- e <- 3  # Multiple assignments

# Multiple values
z <- c(1, 3, 5, 9)  # c = Combine/concatenate
z                  # Print z


#Ssequential data
0:15     # 0 through 10
15:0     # 10 through 0
seq(15)  # 1 to 10
seq(40, 0, by = -4)  # Count down by 3

# OPERATIONS ################################################

# Surround command with parentheses to also print
(y <- c(5, 12, 0, 11)) 
z + y       # Adds corresponding elements in x and y
x * 2       # Multiplies each element in x by 2
2^5         # Powers/exponents
sqrt(144)    # Squareroot
log(100)    # Natural log: base e 
log10(100)  # Base 10 log


# DATA TYPES #######################

# Built-in constants
LETTERS
letters
month.abb
month.name
pi


# Load datasets
library(help="datasets")

#How to use base R datasets
?data
data() # list all data sets
data(mtcars) # load a data set
help(mtcars) # general information on dataset
head(mtcars) # First 5 lines from start of data set

# use datasets to understand and playwith functions
plot(mtcars$disp,mtcars$mpg)



# how would you multiply each item in an array by two?
# first create a vector  - (generally, this is called vector in many languages)
test_vector <- c(1,2,3,4,5,6,7,8,9)
# Or...
test_vector <- c(1:9)

#How to print all these numbers?
# Most languages would do some sort of a loop
for (a_Number in test_vector) {
    print(aNumber*2)
} # Note a_Number is a variable that we created

# In R, we can simply do
test_vector * 2

# you can assign it to new vector variable
twice_original <- test_vector * 2

# other math operations work as well
test_vector / 2
test_vector + 2
test_vector - 2

# Vector operations
additional_vector <- c(2,4,1,2,8,5,0,8,9)
additional_vector
test_vector
test_vector + additional_vector
test_vector * additional_vector

# How can R handle two vectors of different length?
shorter_vector <- c(1,2,3)
test_vector
test_vector + shorter_vector
# shorter vector is "recycled"
# this can happen when they are multiples of each other 
# what happnes when they are not?
shorter_odd_vector <- c(1,2,3,4)
test_vector+ shorter_odd_vector

# basic math fucntions on vectors
sum(test_vector)
mean(test_vector)
min(test_vector)
max(test_vector)


# subsetting a simple vector
LETTERS[4] # LETTERS is a built-in R constant containing the upper-case alphabet.
LETTERS[4:6]
LETTERS[c(4,20:24)]
LETTERS[-c(4:6)]
LETTERS[c(10,7,3)]

#How to produce alternate letters? 

# rep(c(TRUE,FALSE),13)

#create a small data frame

data.frame(LETTERS,letters,position=1:length(letters))

test_data.frame<-data.frame(LETTERS,letters,position=1:length(letters))

# Sub-setting operations
test_data.frame[4,] 
test_data.fram[,4] 
test_data.fram["letters"] 
test_data.frame[5:10,2]
test_data.frame[5:10,1:3]
test_data.frame[test_data.frame$position > 12,"letters"]

# Integer
integer_test <- as.integer(5)
integer_test  <- 6L
class(integer_test)
is.integer(integer_test)
is.numeric(integer_test) # Numberic is a broader class
integer_test <- as.integer(500.55) #round off

# Character 
character_test <- "R is intersting"
as.numeric(character_test) # all NA
# as.character(3.14) == as.numeric(3.14) #not good practice
substr(character_test,start=3,stop=3) # use substr instead
nchar(character_test) 
length(character_test) 

# Logical #####
logical_test <- TRUE
is.logical(logical_test)
is.logical(TRUE)
is.logical(true) # TRUE, not true. FALSE, not false (or False)
is.logical(True)
is.logical(1) # 1 is an integer. Not logical
as.numeric(TRUE) # though revers coverts it into numbers

TRUE & FALSE # use & for and. 
TRUE | FALSE # use | for or.
! FALSE # use ! for negate
help("&")
logical_test<- c(TRUE,TRUE,FALSE)
any(logical_test)
all(logical_test)


# RESET #################################################

rm(list = ls()) 