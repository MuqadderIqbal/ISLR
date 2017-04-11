library(ISLR)
x <- c(1,4,6)
y <- c(2,3,5)
x + y
length(x)
length(y)
rm(list = ls())
x= matrix ( data=c(1 ,2 ,3 ,4) , nrow =2, ncol =2)
x
matrix ( data=c(1 ,2 ,3 ,4) , nrow =2, ncol =2 , byrow = TRUE)
sqrt(x)
x^2
x= rnorm (50)
y=x+ rnorm (50, mean =50, sd =.1)
cor (x,y)
?cor
set.seed (1303) #necessary to get same output from rnorm every time.
rnorm (50)

 set.seed(3)
 y= rnorm (100)
 mean(y)
 var (y)
 sqrt(var (y))
 sd(y)
 
x= rnorm (100)
y= rnorm (100)
plot(x,y)
plot(x,y, xlab =" this is the x- axis", ylab =" this is the y-axis ",
      main =" Plot of X vs Y")
x=seq (-pi ,pi ,length =50)
x 
y=x
f= outer (x,y, function (x,y)cos (y)/(1+x ^2) )
contour (x,y,f)
contour (x,y,f, nlevels =45, add =T)
fa=(f-t(f))/2
contour (x,y,fa , nlevels =15)

image (x,y,fa)
persp (x,y,fa)
persp (x,y,fa ,theta =30)
persp (x,y,fa ,theta =30, phi =20)
persp (x,y,fa ,theta =30, phi =70)
persp (x,y,fa ,theta =30, phi =40)

A= matrix (1:16 ,4 ,4)
A
A[c(1 ,3) ,c(2 ,4) ]
dim(A)
fix(Auto)
names(Auto)

attach(Auto)
plot(cylinders,mpg)
cylinders <- as.factor(cylinders)
plot(cylinders, mpg) # convert quantitative to qualitative
                     #if x-axis qualitative, default box plot
plot(cylinders , mpg , col =" red ")
plot(cylinders , mpg , col =" red ", varwidth =T)
plot(cylinders , mpg , col =" red ", varwidth =T, horizontal =T)
plot(cylinders , mpg , col =" red ", varwidth =T, xlab =" cylinders ",
     ylab =" MPG ")

hist(mpg )
hist(mpg ,col =2) #same as col = "red"
hist(mpg ,col =2, breaks =15)

pairs ( Auto)
pairs (~ mpg + displacement + horsepower + weight +
          acceleration , Auto)

plot( horsepower ,mpg )
identify ( horsepower ,mpg , name)

summary(Auto)
summary(mpg)
#---------------------------------------------------------------------
#EXERCISES
#---------------------------------------------------------------------
#8:
library(ISLR)
College
fix(College)
summary(College)
pairs(College[,1:10])

attach(College)
plot(Outstate,Private)

Elite <- rep("No", nrow(College))
Elite[College$Top10perc > 50] = "Yes"
Elite = data.frame(Elite)
summary(Elite)
plot(Outstate, Elite$Elite)

par(mfrow=c(2,2)) #divide the print window into four regions so that four
                  #plots can be made simultaneously
hist(PhD, col = 2, breaks = 15)
hist(Enroll, col = 2, breaks = 15)
hist(Accept, col = 2, breaks = 15)
