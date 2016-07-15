# Load the gapminder package
library(gapminder)
# If you got an error on the above line, 
# run the following:
# install.packages('gapminder')

# Create a dataset called df. You will use the 
# gapminder package to get data about countries over time
df <- gapminder

#######################################
# 1. How many rows are in df?
#######################################
dim(df)

#! Good work. You can also use nrow(df)

#######################################
# 2. How many columns are in df?
head(df)
#######################################

#! This works - you can also use ncol(df)


#######################################
# 3. What are the column names of df?
#######################################
head(df)

#! Good job. You could also use names(df)

#######################################
# 4. What are the different countries in df
df$country

#! This is good, but it prints repeats too.
#! To see only one of each country, run unique(df$country)

#######################################
# (Hint: use the unique() function)


#######################################
# 5. Create in object called df2007.
#    This should be all the observations for which
#    the year was 2007.
#######################################
# (Hint: use the subset() function)
df2007 <- subset(df, year == "2007")

#! Bem feito!

#######################################
# 6. What was the population of Mozambique in 2007?
#######################################
# (Hint: use the subset() function and the df2007 object)
subset(df2007, country == "Mozambique")

#! Muito bem.

#######################################
# 7. What was the maximum life expectancy of any country in 2007?
#######################################
# (Hint: use the max() function and the df2007 object)
max(df2007$lifeExp, na.rm = TRUE)

#! Bem feito!

#######################################
# 8. What was the average life expectancy of all countries in 2007?
#######################################
# (Hint: use the mean() function and the df2007 object)
mean(df2007$lifeExp, na.rm = TRUE)

#######################################
# 9. Create a histogram of the populations of all countries
#    in 2007.
#######################################
hist(df2007$pop)

#######################################
# 10. Create a plot of the relationship between 
#     life expectancy and GDP per capita
#     using only data from 2007
#######################################
plot(df2007$lifeExp, df2007$gdpPercap)

#######################################
# 11. Create an object called moz.
#     This will be only those observations for
#     which the country is Mozambique
#######################################
moz <- subset(df2007, country = "Mozambique")

#! Aqui um problema. You are subsetting df2007;
#! instead you should subset df - that way you get observations
#! for all years (and not just 2007)

#######################################
# 12. Make a plot of the year and the life expectancy of Mozambique
#     (x axis = year, y axis = life expectancy)
#######################################
# (Hint: use the moz object)
plot(moz$year, moz$lifeExp)

#! This code will work better if you fix the problem in number 11

#######################################
# 13. Do the same as number 12, but add
#     a type = 'l' argument to make it a line chart
#     and change the title (main), the x label (xlab)
#     and the y label (ylab).
#     Also change the color of the line (col)
#######################################
plot(moz$year, moz$lifeExp, type = "l", col = 'pink')

#! This code will work better if you fix the problem in number 11


#######################################
# 14. Make a plot of the year and population of Mozambique
#######################################
plot(moz$year)

#! This code will work better if you fix the problem in number 11


#######################################
# 15. When you are done with this exercise, 
#     save this script and email it to joebrew@gmail.com
#######################################



dim(df)
head(df)
head(df)
df$country
df2007 <- subset(df, year == "2007")
subset(df2007, country == "Mozambique")
max(df2007$lifeExp, na.rm = TRUE)
mean(df2007$lifeExp, na.rm = TRUE)
hist(df2007$pop)
plot(df2007$lifeExp, df2007$gdpPercap)
moz <- subset(df2007, country = "Mozambique")
plot(moz$year, moz$lifeExp)
plot(moz$year, moz$lifeExp, type = "l", col = 'pink')
plot(moz$year)