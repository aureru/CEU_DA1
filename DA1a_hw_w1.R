
## specify a seed for the random number generator
set.seed(42)

## generate 15 random numbers between 0 and 5, then assign to x
x <- runif(15,0,5)

## Compute the arithmetic mean of the random numbers you generated in the previous exercise.
mean(x)

## Plot these numbers on a histogram with the main title being "Histogram of 15 random numbers"!
hist(x, main = 'Histogram of 15 random numbers')

## Generate a sequence between 0 and 4*pi with a step of 0.1. Store the resulting vector as x.
x <- seq(0, 4*pi, by = 0.1)

## Compute the cosine of x and store the resulting vector as y.
## Plot these values by the original x values with a red line using the x vector from the previous exercise.
y<-cos(x)
plot(x,y,type = 'l',col = 'red')

## Redraw the previous plot using the curve function.
curve(cos, from = 0, to = 4*pi, type = 'l', col = 'red')
