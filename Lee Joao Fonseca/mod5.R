nrow(mydata)
ncol(mydata)
str(mydata)
mean(mydata$q1, na.rm = TRUE)
min(mydata$q1)
max(mydata$q1)
range(mydata$q1)
ls(mydata)
data <- subset(mydata, q3 == 'No')
datafamele <- subset(data, q2 == 'Famele')
plot(data$q1)
plot(data$q1, type = 'l', col = 'blue')
data$q2
data$name
subset(data, q2 == 'Famele')
unique(data$q2)
table(data$name, data$q1, data$q2 == 'Famele')

# ------------
# COMENTARIO FROM JOE: 
# Bon trebahlo, Lee!  The only comments I have are
# 1. Where is the data coming from? Can you send me the file
# and the code you use to read it in?
# 2. Any interpretations? It's good to mix both code and comments
# (ie, results, questions, thoughts) etc in an analysis script.
# ------------