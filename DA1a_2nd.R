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
hist(rnorm(1e3,.5,0.75))

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


##BREAK

df <- read.csv('http://bit.ly/CEU-R-hotels-2017')
head(df
     )
str(df)

hotels <- df

## TODO price -> plot summary, frequency table

plot(hotels$price_HUF)
summary(hotels$price_HUF)
frequency(df$price_HUF)
hist(hotels$price_HUF)
table((hotels$price_HUF))

boxplot(hotels$price_HUF)
table(hotels$city)
table(cut(hotels$price_HUF, breaks = 10))
table(cut(hotels$price_HUF, breaks = 10, dig.lab = 8))

hotels$price_HUF_cat <- cut(hotels$price_HUF, breaks = 20, dig.lab = 8)
tab_priceHUF_cat <- table(hotels$price_HUF_cat)
dotchart(tab_priceHUF_cat)

which.max(hotels$price_HUF)

## Find cheapest
hotels[1374,'hotel_name']
which.min(hotels$price_HUF)
hotels[which.min(hotels$price_HUF),'hotel_name']

## list hotels over 100k huf

hotels[hotels$price_HUF > 100000,]
pricey <- hotels[hotels$price_HUF > 100000,]
novalue <- pricey[pricey$rating <3,]
## Returns a lot of NAs
pricey[which(pricey$rating < 3),]

hotels[which(hotels$price_HUF>100000 & hotels$rating <3),]

novalue[which(novalue$rating < 3),'hotel_name']

install.packages('data.table')
library(data.table)
str(hotels)
str(novalue)
str(novalue[which(novalue$rating < 3),'hotel_name'])
novalue[which(novalue$rating < 3),'hotel_name']
list(novalue[which(novalue$rating < 3),'hotel_name'])
novalue <- novalue[which(novalue$rating < 3),]
str(hotels)

## dt[i] <-> df[i,]

hotels[1]
hotels[price_HUF > 100000]

## FILTERING a DATA TABLE
## TODO hotels: price < 10000 & rating>4, list the cities

hotels[price_HUF<10000 & rating>4]

hotels[price_HUF<10000 & rating>4, 'city']
hotels[price_HUF<10000 & rating>4 & city == 'Budapest, Hungary', 'hotel_name']

## just return the numebr of rows

hotels[price_HUF<10000 & rating>4 & city == 'Budapest, Hungary', .N]
hotels[price_HUF<10000 & rating>4, .N]

hotels[price_HUF<25000, mean(stars,na.rm =TRUE)]

## dt[i, j , by = ...]

hotels[price_HUF>250000, mean(stars,na.rm =TRUE), by = city]

## TODO average price per nr of stars 

hotels[,mean(price_HUF,na.rm =TRUE), by = stars]

hotels[,list(avg_price = mean(price_HUF)), by = stars]

price_per_stars <- hotels[,list(avg_price = mean(price_HUF)), by = stars]
setorder(price_per_stars)
price_per_stars
plot(price_per_stars)

hotels[,list(
  avg_price = mean(price_HUF), 
  avg_stars = mean(stars, na.rm = TRUE),
  .N,
  with5stars = sum(stars == 5)
  ), by = city]
