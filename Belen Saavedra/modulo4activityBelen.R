# Load the gapminder package
library(gapminder)
# If you got an error on the above line, 
# run the following:
install.packages('gapminder')
library(gapminder)
# Create a dataset called df. You will use the 
# gapminder package to get data about countries over time
df <- gapminder


#######################################
# 1. How many rows are in df?
#######################################
nrow(df)1704
#-----------------
# COMENTARIO DE JOE: Good, but you should be a "hashtag" (#)
# before the number (1704) so that it doesn't get processed
#-----------------
#######################################
# 2. How many columns are in df?
#######################################
ncol(df)6
#-----------------
# COMENTARIO DE JOE: Good, but again you should be a "hashtag" (#)
# before the number (1704) so that it doesn't get processed
#-----------------
#######################################
# 3. What are the column names of df?
#######################################
head(gapminder) country continent year lifeExp      pop gdpPercap
#-----------------
# COMENTARIO DE JOE: Good, but you should be a "hashtag" (#)
# before the column names so that they don't get processed: For exapmle:
head(gapminder) #country continent year lifeExp      pop gdpPercap
#-----------------

#-----------------
#######################################
# 4. What are the different countries in df?
#######################################
# (Hint: use the unique() function)
gapminder$country


#-----------------
# COMENTARIO DE JOE: Good. But again, your code
# should be with no hashtag, and your comments (and responses)
# should have a hashtag before them.
# To do multiple lines at once, run ctrl+alt+c
#-----------------

142 Levels: Afghanistan Albania Algeria Angola Argentina Australia ... Zimbabwe
unique(gapminder$country)[1] Afghanistan              Albania                  Algeria                 
[4] Angola                   Argentina                Australia               
[7] Austria                  Bahrain                  Bangladesh              
[10] Belgium                  Benin                    Bolivia                 
[13] Bosnia and Herzegovina   Botswana                 Brazil                  
[16] Bulgaria                 Burkina Faso             Burundi                 
[19] Cambodia                 Cameroon                 Canada                  
[22] Central African Republic Chad                     Chile                   
[25] China                    Colombia                 Comoros                 
[28] Congo, Dem. Rep.         Congo, Rep.              Costa Rica              
[31] Cote d'Ivoire            Croatia                  Cuba                    
[34] Czech Republic           Denmark                  Djibouti                
[37] Dominican Republic       Ecuador                  Egypt                   
[40] El Salvador              Equatorial Guinea        Eritrea                 
[43] Ethiopia                 Finland                  France                  
[46] Gabon                    Gambia                   Germany                 
[49] Ghana                    Greece                   Guatemala               
[52] Guinea                   Guinea-Bissau            Haiti                   
[55] Honduras                 Hong Kong, China         Hungary                 
[58] Iceland                  India                    Indonesia               
[61] Iran                     Iraq                     Ireland                 
[64] Israel                   Italy                    Jamaica                 
[67] Japan                    Jordan                   Kenya                   
[70] Korea, Dem. Rep.         Korea, Rep.              Kuwait                  
[73] Lebanon                  Lesotho                  Liberia                 
[76] Libya                    Madagascar               Malawi                  
[79] Malaysia                 Mali                     Mauritania              
[82] Mauritius                Mexico                   Mongolia                
[85] Montenegro               Morocco                  Mozambique              
[88] Myanmar                  Namibia                  Nepal                   
[91] Netherlands              New Zealand              Nicaragua               
[94] Niger                    Nigeria                  Norway                  
[97] Oman                     Pakistan                 Panama                  
[100] Paraguay                 Peru                     Philippines             
[103] Poland                   Portugal                 Puerto Rico             
[106] Reunion                  Romania                  Rwanda                  
[109] Sao Tome and Principe    Saudi Arabia             Senegal                 
[112] Serbia                   Sierra Leone             Singapore               
[115] Slovak Republic          Slovenia                 Somalia                 
[118] South Africa             Spain                    Sri Lanka               
[121] Sudan                    Swaziland                Sweden                  
[124] Switzerland              Syria                    Taiwan                  
[127] Tanzania                 Thailand                 Togo                    
[130] Trinidad and Tobago      Tunisia                  Turkey                  
[133] Uganda                   United Kingdom           United States           
[136] Uruguay                  Venezuela                Vietnam                 
[139] West Bank and Gaza       Yemen, Rep.              Zambia                  
[142] Zimbabwe    
#######################################
# 5. Create in object called df2007.
#    This should be all the observations for which
#    the year was 2007.
#######################################
# (Hint: use the subset() function
df2007<-subset(df,year=='2007')
#-----------------
# COMENTARIO DE JOE: GOOD!
#-----------------

  

#######################################
# 6. What was the population of Mozambique in 2007?
#######################################
# (Hint: use the subset() function and the df2007 object)
sub
#-----------------
# COMENTARIO DE JOE: What is the above line for? 
#-----------------

subset(df2007,country=='Mozambique')
#-----------------
# COMENTARIO DE JOE: THE ABOVE LINE IS CORRECT 
#-----------------

19951656
#-----------------
# COMENTARIO DE JOE: THIS SHOULD HAVE A HASHTAG BEFORE IT.
#-----------------

#######################################
# 7. What was the maximum life expectancy of any country in 2007?
#######################################
# (Hint: use the max() function and the df2007 object)

max.col('lifeExp')
#-----------------
# COMENTARIO DE JOE: THE ABOVE LINE IS INCORRECT 
#-----------------


max(df2007$lifeExp) 82.603
#-----------------
# COMENTARIO DE JOE: THE ABOVE LINE IS CORRECT, BUT YOU
# SHOULD HAVE A HASHTAG BEFORE THE NUMBER SO AS TO
# "COMMENT IT OUT"
#-----------------


#######################################
# 8. What was the average life expectancy of all countries in 2007?
#######################################
# (Hint: use the mean() function and the df2007 object)
mean(df2007$lifeExp)
#-----------------
# COMENTARIO DE JOE: Correct. 
#-----------------

#######################################
# 9. Create a histogram of the populations of all countries
#    in 2007.
#######################################
hist(df2007$pop)
#-----------------
# COMENTARIO DE JOE: Correct
#-----------------


#######################################
# 10. Create a plot of the relationship between 
#     life expectancy and GDP per capita
#     using only data from 2007
#######################################
plot(x='lifeExp',y='gdpPercap')
#-----------------
# COMENTARIO DE JOE: The above is incorrect
#-----------------

plot(df2007$lifeExp,df2007$gdpPercap)
#-----------------
# COMENTARIO DE JOE: The above is correct 
#-----------------

#######################################
# 11. Create an object called moz.
#     This will be only those observations for
#     which the country is Mozambique
#######################################
moz<- subset(df,country=='Mozambique')

#-----------------
# COMENTARIO DE JOE: Correct
#-----------------


#######################################
# 12. Make a plot of the year and the life expectancy of Mozambique
#     (x axis = year, y axis = life expectancy)
#######################################
# (Hint: use the moz object)
plot(moz$year,moz$lifeExp)

#-----------------
# COMENTARIO DE JOE: Correct
#-----------------


#######################################
# 13. Do the same as number 12, but add
#     a type = 'l' argument to make it a line chart
#     and change the title (main), the x label (xlab)
#     and the y label (ylab).
#     Also change the color of the line (col)
###################################
plot(moz$year,moz$lifeExp,type='l')
plot(moz$year,moz$lifeExp,type='l',main='Manhicafire',xlab='years',ylab='Life Expect')
plot(moz$year,moz$lifeExp,type='l',main='Manhicafire',xlab='years',ylab='Life Expect',col='red')
#-----------------
# COMENTARIO DE JOE: The above is correct
#-----------------


#######################################
# 14. Make a plot of the year and population of Mozambique
#######################################

plot(moz$year,moz$population)
#-----------------
# COMENTARIO DE JOE: Correct
#-----------------


#######################################
# 15. When you are done with this exercise, 
#     save this script and email it to joebrew@gmail.com
#######################################