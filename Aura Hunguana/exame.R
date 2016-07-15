#######################################
# 1. How many rows are in df?
#######################################
dim(BaseDados)
#1704
#######################################
# 2. How many columns are in df?
#######################################
dim(BaseDados)

#######################################
# 3. What are the column names of df?
#######################################
names(BaseDados)

#######################################
# 4. What are the different sport in BaseDados?
#######################################
# (Hint: use the unique() function)

unique(BaseDados$Desporto)
# 5. Create in object called fotbolista.
#    This should be all the observations for which
#    the Desporto is football .
#######################################
# (Hint: use the subset() function)
fotbolista<-subset(BaseDados,Desporto=='FootBall')
# 6. What was the maximum idade in fotbolista?
#######################################
max(fotbolista$idade)
#7. Create a plot of the relationship between 
#     idade and desporto
#     using only data from BaseDados
#######################################
plot(BaseDados$idade,BaseDados$Desporto)