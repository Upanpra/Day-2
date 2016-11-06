# project 1

df<-read.csv("data/gapminder.csv")
head(df)


country_list<-c("Iran","Nepal","Cuba")

country_list
plot_function<-function(df1,country1){
  
  country_name<-subset(df1, df1$country== country1)
  #country_name<-df1$country==country1
  year1<-country_name$year
  gdp<-country_name$gdpPercap
  dev.new()
  plot(year1, gdp, title(main = country1))
  
}

for(country in country_list){
  plot_function(df,country)
}

#second problem
#Calculate the mean, min, and max life expectancies for each continent (hint: you use aggregate() 
#if you like). Describe what you see in the results using a markdown text.
#Commit your changes using git and push them to github.
head(df)
list_cont_lifeExp<-df[,c("continent","lifeExp")]
list_cont_lifeExp


list_cont<-df$continent
list_life<-df$lifeExp


cont_lifeExp<-function(data,continent1){
  continent=data$continent==continent1
  lifeExp=data$lifeExp
  #aggregate(lifeExp, by(continent), mean)
  print(continent1)
  print(paste0("mean life exp: ", mean(lifeExp)))
  print(paste0("max: ",max(lifeExp)))
  print(paste0("min: ",min(lifeExp)))
}

list_cont<-continent<-c("Asia", "Americas", "Africa", "Europe", "Oceania")

for(contry in list_cont){
  cont_lifeExp(df, contry)
}











