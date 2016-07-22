# Load the gapminder package
library(gapminder)
# If you got an error on the above line, 
# run the following:
# install.packages('gapminder')

# Create a dataset called df. You will use the 
# gapminder package to get data about countries over time
df <- gapminder

#######################################
# 1. How many rows are in df? 1704
#######################################
dim(df)

#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 2. How many columns are in df? 6
#######################################
dim(df)
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 3. What are the column names of df? country, continent, year, lifeExp, pop, gdpPercap
#######################################
head(df)
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 4. What are the different countries in df?
#######################################
# (Hint: use the unique() function)

unique(df$country)
#-------------------
# JOE SAYS: Correct!
#-------------------

#######################################
# 5. Create in object called df2007.
#    This should be all the observations for which
#    the year was 2007.
#######################################
# (Hint: use the subset() function)
df2007 <- subset(df, year == 2007)
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 6. What was the population of Mozambique in 2007?
#######################################
# (Hint: use the subset() function and the df2007 object)
pop_moz <- subset(df2007, country == "Mozambique")
pop_moz 
  #IS there any other way?
#-------------------
# JOE SAYS: Yes. You could select only the column of interest:
pop_moz$pop
# You could also select that from the main database
df$pop[df$country == 'Mozambique' & df$year == 2007]
#-------------------
#######################################
# 7. What was the maximum life expectancy of any country in 2007?
#######################################
# (Hint: use the max() function and the df2007 object)
max(df2007$lifeExp)
#-------------------
# JOE SAYS: Correct!
#-------------------

#######################################
# 8. What was the average life expectancy of all countries in 2007?
#######################################
# (Hint: use the mean() function and the df2007 object)
mean(df2007$lifeExp)
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 9. Create a histogram of the populations of all countries
#    in 2007.
#######################################
hist(df2007$pop)
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 10. Create a plot of the relationship between 
#     life expectancy and GDP per capita
#     using only data from 2007
#######################################
plot(df2007$lifeExp, df2007$gdpPercap)
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 11. Create an object called moz.
#     This will be only those observations for
#     which the country is Mozambique
#######################################

moz <- subset(df, country == "Mozambique")
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 12. Make a plot of the year and the life expectancy of Mozambique
#     (x axis = year, y axis = life expectancy)
#######################################
# (Hint: use the moz object)
plot(moz$year, moz$lifeExp)
#-------------------
# JOE SAYS: Correct!
#-------------------

#######################################
# 13. Do the same as number 12, but add
#     a type = 'l' argument to make it a line chart
#     and change the title (main), the x label (xlab)
#     and the y label (ylab).
#     Also change the color of the line (col)
#######################################
plot(moz$year, moz$lifeExp, type = 'l', main = "Life expectancy in Mozambique", col = "blue", xlab = "year", ylab = "life expectancy")
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 14. Make a plot of the year and population of Mozambique
#######################################

plot(moz$year, moz$pop, type = 'l', main = "Population in Mozambique", col = "blue", xlab = "year", ylab = "population")
#-------------------
# JOE SAYS: Correct!
#-------------------
#######################################
# 15. When you are done with this exercise, 
#     save this script and email it to joebrew@gmail.com
#######################################