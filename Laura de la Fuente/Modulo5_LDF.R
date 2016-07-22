# I love youuuuuuuuu

mydata <- read.delim("C:/Users/lfuente/Desktop/mydata.csv")
# ------------
# COMENTARIO FROM JOE: Can you send me this file?
# ------------

######################
# Database description
######################

ncol(mydata)
# 5
nrow(mydata)
# 10
mean(mydata$q1)
# 74 kg


plot(mydata$name, mydata$q1, pch=19, main='Weight of the CISM people')

# ------------
# COMENTARIO FROM JOE: For weights (or any continuous numeric variable)
# a histogram is generally a better way of showing it...
# ------------

plot(mydata$id, mydata$q1, type='l', main='Weight of the CISM people', xlab = 'Participants', ylab = 'weight', col= 'orange')

table(mydata$sex, mydata$q3)
# women do not like tuna!

mean(mydata$q1)

subset(mydata, sex==1)
