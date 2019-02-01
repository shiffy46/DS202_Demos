# Basic data types
1
# Numerics
pi
# pi numeric
# CTRL + ENTER  is run in console
'Hello World'

TRUE
FALSE

class(1)
# class is sort of like typeof
class(TRUE)

# -----Making Vectors----- (just like an array)
# can create vectors with command:
c(25,15)
# c stands for combine
# for loop for creating repeating value arrays use "rep":
rep(1,5)
rep(c(2,1),5)
rep(c(2,1), length.out=3) # how many characters/integers will be output : 2 1 2
# more information  -> "rep?"

seq(1,10) # incrementing vectors
seq(10,1,-2) # decrement/increment certain values


# assignment operators
numGender <- c(25,15)
numGender
names(numGender) <- c('male','female') # CAN MAKE 2D ARRAYS WITH THIS (MATRIX)
numGender
# CAN MAKE 2D ARRAYS WITH THIS (MATRIX)
str(numGender)
# can be used to print out structure of objects
# everything is an object, functions are as well
c <- 25
str(c)
# NEVER ASSIGN THINGS TO 'C'
rm(c) # if you do, then reassign the function to it like this
str(c)



#---- numeric operators and functions-----
1+1
1+2*3-4
2^3
5/2
5 %/% 2 # CAN DO THIS TO CUT: OFF DECIMALS
5 %% 2 # MODULO IS TWOOOOO PERCENT SIGNS



# ------vectorized operations-------
a <- 1:5
b <- 5:1
a+b
a + rep(1,5)
a ^ 2



# ---------some math stats----------
a
sqrt(a)
a^2
a ^ (1:5) # same as 1^1, 2^2, 3^3
sum(a)
mean(a)
sd(a)
range(a)



# ----------Extract all elements from a vector--------(Change, establish logic)

b <- c('sunny', ' windy', 'rainy', 'snowy')
b
b[1]
b[c(1:4)]
b[3] <- 'mixed'
b
b == 'sunny'


#___________ tests ___________

x <- c(4,1,3,9)
y <- c(1,2,3,5)

EuDist <- sqrt(sum((x-y)^2))
EuDist

x[-1] # NEGATIVE INDEXES LEAVE OUT CERTAIN POSITION IN VECTOR(ARRAY)

x[c(1,1,1,2,2,2,3,3,3)] #REPEATING INDEXES JUST RETURNS THE SAME VALUES IN A VECTOR(ARRAY)
