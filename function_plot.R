
#now doing something with real dataset
#creat a directory call data
dir.create("data")
# for downloading data
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "data/gapminder.csv")

# default is header is true
data1<-read.csv("data/gapminder.csv", header = TRUE)
head(data1)
summary(data1)
str(data1)

#write a functions that takes country as argument and display statistics summary of lifeExp of that country

#subsetting dataset
country_name<-subset(data1, data1$country== "Uganda")
head(country_name)
summary(country_name)

# calculate mean, min and max
mean(country_name$lifeExp)
mean(country_name[,5])
max(country_name[,5])
min(country_name[,5])

# Modify the above function to generate plot with "Year" on x-axis and "lifeExp" on y-axis

# function for summary statistics
stat_summary<-function(country1){
  country_name<-subset(data1, data1$country==country1)
  print(mean(country_name$lifeExp))
  print(max(country_name$lifeExp))
  print(min(country_name$lifeExp))
  out_put<-c("mean_1"=mean(country_name$lifeExp),"max1"=max(country_name$lifeExp),"min1"=mean(country_name$lifeExp))
  print(out_put)
  year1=country_name$year
  lifeEx=country_name$lifeExp
  plot(year1,lifeEx, xlab = "Year", ylab = "Life Expectancy", main = country1)
  
}

stat_summary("Uganda")
stat_summary("Iran")
stat_summary("Nepal")
stat_summary("Japan")

#loops

####
#this is the equivalent of the for loop
best_practice<-c("test", "test1", "test2")
best_practice_fun <-function(some_argument){
  print(some_argument[1])
  print(some_argument[2])
  print(some_argument[3])
  print(some_argument[4])
  print(some_argument[5])
  print(some_argument[6])
}
best_practice_fun(best_practice)
##instead of the method "best practices" above you can make a loop, so you don't have to print
# each line separately
#w is the iterator 
for(w in best_practice){
  print(w)
}

best_practice_fun2 <- function(some_argument){
  for(w in some_argument) {
    print(w)
  }
}

best_practice_fun2(best_practice)

# using dataset generate a file that contains year 1952 and 1997
#another file that contains year 1966 and 2007

gapminder_52_97<-subset(data1, data1$year== 1952 | data1$year== 1997)
gapminder_66_07<-subset(data1, data1$year== 1967 | data1$year==2007)

gapminder_52_97
gapminder_66_07

# rbind(a,b)

#writing a dataset

write.csv(file = "data/gapminder_52_97.csv", gapminder_52_97, row.names = FALSE, quote = FALSE)
write.csv(file = "data/gapminder_66_07.csv", gapminder_66_07, row.names = FALSE, quote = FALSE)

#listing the files with a pattern in a directory

name<-list.files(path = "data", pattern = ".csv", full.names = TRUE)

#write a for loop to print each filename on a different line for the above output
for(w in name){
  print(w)
}

#Excercise
# using the function your wrote this morning to print out
# the results from multiple data_sets

stat_summary2<-function(filname, country1){
    file_input<-read.csv(filname, header = TRUE)
    country_name<-subset(file_input, file_input$country==country1)
    print(mean(country_name$lifeExp))
    print(max(country_name$lifeExp))
    print(min(country_name$lifeExp))
    out_put<-c("mean_1"=mean(country_name$lifeExp),"max1"=max(country_name$lifeExp),"min1"=mean(country_name$lifeExp))
    print(out_put)
    year1=country_name$year
    lifeEx=country_name$lifeExp
    plot(year1,lifeEx, xlab = "Year", ylab = "Life Expectancy", main = country1)
  
}

analyse_all<-function(pattern1, countr){
  filenames<-list.files(path = "data", pattern = pattern1, full.names = TRUE)
  for(names in filenames){
    stat_summary2(names,countr)
  }
}
analyse_all(".csv", "Uganda")














