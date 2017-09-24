1+3
2*8
2^2
pi
'pi'
"pi"
str(pi)
str('pi')
str(letters)
letters
str(letters)
c(1,10)
letters[c(1,10)] #comment
str(c)
?c
c(1,7:9)
c(1:5, 10.5, "next")
# variables

x <- 2
str(x)
## TODO square root of x
sqrt(x)
x^0.5
## random numbers

set.seed(42)
runif(1)
?runif
runif(2)
round(runif(5),x)
?round
## TODO generate 1000 rnd nr btween 0 10 digits=2 and visualise
## My solution
plot(round(runif(1000)*10,2))
## teacher solution
x<- runif(1000, min=0,max=10)
plot(round(runif(1000)*10,2))
hist(round(runif(1000)*10,2))
boxplot(round(runif(1000)*10,2))
f <- function(x)2*x+1
f(5)
x
f(x)
x<-1:5
hist(x)
plot(x,f(x), type = 'l') #lovercase l for line
##TODO 1 period of sine
x<- seq(0,pi*2,by=0.1)
plot(x,sin(x), type = 'l')
h<- c(174,170,160)
w<- c(90,80,70)
cor(h,w)
lm(w~h)
fit <- lm(w ~ h)
summary(fit)
abline(fit)
plot(w,h)
abline(fit)
plot(h,w)
abline(fit)
predict(fit, list(h=180))
fit
x
x<- runif(10, min=-1,max=1)
mean(x)
rounded <- round(x,2)
plot(x,rounded)
