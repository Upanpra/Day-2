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