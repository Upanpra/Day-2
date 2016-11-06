# assignment variable
x<- 3
x=3

#plotting in R
x<- c(1,2,3)
y<- c(3,4,5)
plot(x,y)

# class of variables
class(x)
class(y)

#strings
str<-"This is string"
class(str)
length(str)

"This is string"-> str2

#clear all variables from the environment
ls()
rm(list=ls())

#functions
# total function
# name of the function
# function statement
# Argument
# body
# return statement (optional)

my_sum<-function(input_1, input_2){
  total= input_1 + input_2
  return(total)
}

input_1= 4
input_2= 5

my_sum(input_1 = 4, input_2 = 5)

my_sum(input_1 = 6, input_2 = 7)

my_sum(input_1, input_2)

# Convert fah to kelvin

fah_to_Kelvin<-function(temp){
  Kelvin<-((temp-32)*(5/9))+ 273.15
  return(Kelvin)
}

fah_to_Kelvin(temp = 45)
fah_to_Kelvin(45)
#fah_to_Kelvin("45")

# covert kelvin to celsius

kel_to_cel <-function(temp){
  celsius<- temp- 273.15
  return(celsius)
}

kel_to_cel(0)

# convert far to cel

fah_to_cel<-function(temp){
  kel<-fah_to_Kelvin(temp)
  cels<-kel_to_cel(kel)
  return(cels)
}

fah_to_cel(45)


#fah_to_cels<-function(temp){
#  cel <- (temp-32)*(5/9)
#  return(cel)
#}


# Exercise 2
best_practice <-c("write", "programs", "for", "people")
asterix <-"***"

test_function<-function(a, b, c){
  words<- c(a, b, c)
  return(words)
}
test_function(asterix, best_practice, asterix)

test_function1<-function(a, b){
  words<- c(a, b)
  return(words)
}

test_function1(asterix, best_practice)

# remove function
rm(test_function1)
rm(test_function1)
rm(fah_to_cels)

# after removing function: we can still use it from source using source function
source("function.R")
fah_to_cel(45)
