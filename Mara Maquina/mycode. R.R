###show titlles
names(modulo5activity.R.Mara)

##show header
head(modulo5activity.R.Mara)

##show names
modulo5activity.R.Mara$Names

##show sex
modulo5activity.R.Mara$sex


##show age
modulo5activity.R.Mara$Age


##show maximal age
max(modulo5activity.R.Mara$Age)

##show dimension, rows and colunms
dim(modulo5activity.R.Mara)
dim(modulo5activity.R.Mara)[1]
dim(modulo5activity.R.Mara)[2]

##create in object called age, this should be all the observations for which the age was 25.
#######################################
# (Hint: use the subset() function)
age <- subset(modulo5activity.R.Mara, modulo5activity.R.Mara$Age=="25",)
##plot age and name
age <-(age, age$female)
plot(modulo5activity.R.Mara$Names)
plot(modulo5activity.R.Mara$Age, modulo5activity.R.Mara$sex,xlab = 'age', ylab = 'sex')
