h<- c(174,170,160)
w<- c(90,80,70)
cor(h,w)
plot(h,w)

df <- data.frame(weight = w, height = h)
df
str(df)
df[rows,cols]
df[1,1]
##df[rows,cols]
df[1,]
df[,1]
df[3,]
df$weight
cor(df)
plot(df)
## TODO BMI = weight/ height(m)^2 

df$bmi <- df$weight / (df$height/ 100)^2
df
plot(df)
summary(df$bmi)
summary(df bmi)

df <- read.csv('http://bit.ly/CEU-R-heights')
str(df)
plot(df)
df$height <- df$height*2.54
df$weight <- df$weight*0.45
str(df)
df$bmi <- df$weight / (df$height/100)^2
str(df)
df$heightcm <- df$height
df$height <- df$height*2.54
df$weightKg <- df$weight
head(df
     )
str(df)
## Analyze bmi
min(df$bmi)
plot(df$bmi)
boxplot(df$bmi)
boxplot(df$weightKg)
boxplot(df$heightcm)
df$height <- NULL
df$weight <- NULL
str(df)
summary(df$bmi)
summary(df)
min(df$bmi)
max(df$bmi)
range(df$bmi)
diff(range(df$bmi))
nrow(df)
?nrow
hist(df$bmi)
## from wikipedia: normal values for bmi are between 18 and 25
abline(v=c(18,25),col='red')
## seems many underweight students
summary(df$ageYear)
## right it is because many young adults

## plot the different sexes
boxplot(bmi~ sex, df)

library(beanplot)

install.packages('beanplot')
library(beanplot)

beanplot(bmi~sex,df)
?beanplot
rnorm(1e3,.5,0.75)
hist(rnorm(1e3,.5,0.75)

pie(table(df$sex))
table(df$sex)
barplot(table(df$sex))
dotchart(table(df$sex), xlim =c(0,150))

pairs(df)

install.packages('ggplot2')
ggpairs(df)
install.packages('GGally')
library('GGally')
ggpairs(df)

## intro to stats => t-test

t.test(heightcm ~ sex,data = df)
install.packages('Ggplot2')

## analysis of variance
aov(heightcm ~ sex, data=df)
summary(aov(heightcm ~ sex, data=df))
