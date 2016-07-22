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
nrow(df)
# 1704
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------
#######################################
# 2. How many columns are in df?
#######################################
ncol(df)
# 6
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------
#######################################
# 3. What are the column names of df?
#######################################
names(df)
# "country", "continent", "year", "lifeExp", "pop", "gdpPercap"
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------
#######################################
# 4. What are the different countries in df?
#######################################
# (Hint: use the unique() function)
unique(df$country)
# 142 countries: Afghanistan Albania Algeria Angola Argentina ... Zimbabwe
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------

#######################################
# 5. Create in object called df2007.
#    This should be all the observations for which
#    the year was 2007.
#######################################
# (Hint: use the subset() function)
df2007 <- subset(df, year=='2007')
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------

#######################################
# 6. What was the population of Mozambique in 2007?
#######################################
# (Hint: use the subset() function and the df2007 object)
subset(df2007, country=='Mozambique', pop)
# 19.951.656
# ------------
# COMENTARIO FROM JOE: Pefect (but I like commas better than periods)
# ------------
#######################################
# 7. What was the maximum life expectancy of any country in 2007?
#######################################
# (Hint: use the max() function and the df2007 object)
max(df2007$lifeExp)
# 82.603
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------
#######################################
# 8. What was the average life expectancy of all countries in 2007?
#######################################
# (Hint: use the mean() function and the df2007 object)
mean(df2007$lifeExp)
# 67.00742
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------
#######################################
# 9. Create a histogram of the populations of all countries
#    in 2007.
#######################################
hist(df2007$pop, main='Histogram of the populations of all countries in 2007', col='grey')
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------
#######################################
# 10. Create a plot of the relationship between 
#     life expectancy and GDP per capita
#     using only data from 2007
#######################################
plot(df2007$lifeExp, df2007$gdpPercap, main='Relationship between life expectancy and GDP per capita in 2007', col='blue')
# ------------
# COMENTARIO FROM JOE: Pefect (and pretty)!
# ------------
#######################################
# 11. Create an object called moz.
#     This will be only those observations for
#     which the country is Mozambique
#######################################
moz <- subset(df, country=='Mozambique')
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------

#######################################
# 12. Make a plot of the year and the life expectancy of Mozambique
#     (x axis = year, y axis = life expectancy)
#######################################
# (Hint: use the moz object)
plot(moz$year, moz$lifeExp, main='Life expectancy of Mozambique', col='dark green', pch=19)
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------
#######################################
# 13. Do the same as number 12, but add
#     a type = 'l' argument to make it a line chart
#     and change the title (main), the x label (xlab)
#     and the y label (ylab).
#     Also change the color of the line (col)
#######################################
plot(moz$year, moz$lifeExp, main='Life expectancy of Mozambique', col='dark red', type = 'l', xlab = 'Year', ylab = 'Life expectancy')
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------

#######################################
# 14. Make a plot of the year and population of Mozambique
#######################################
plot(moz$year, moz$pop, main='Population of Mozambique', col='dark red', pch=19, xlab = 'Year', ylab = 'Population')
# ------------
# COMENTARIO FROM JOE: Pefect!
# ------------


#######################################
# 15. When you are done with this exercise, 
#     save this script and email it to joebrew@gmail.com
#######################################

# I really love you Joe Breeeeeeeeeeeew
# ------------
# COMENTARIO FROM JOE: The feeling is mutual.
# ------------