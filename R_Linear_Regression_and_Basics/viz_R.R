library(tidyverse)

data <-read_csv('C:/Users/Alastair Tyson/Documents/M4/gapminder_data.csv')

ggplot(data = data, aes(x=pop,y=lifeExp)) + geom_point()

ggplot(data = data, aes(x=continent)) + geom_bar()

#Scales
ggplot(data=data,aes(x=pop,y=lifeExp)) + geom_line() + scale_x_log10()

#Subplots
ggplot(data=data,aes(x=pop,y=lifeExp)) + geom_line() + scale_x_log10() + facet_wrap(vars(continent))


#labels
ggplot(data=data,aes(x=pop,y=lifeExp)) + geom_line() + scale_x_log10() +
  labs(x='Population',y='Life Expectancy',title='Pop vs LifeExp')
