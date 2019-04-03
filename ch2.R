p2.7 = read.table("C:/Temp/p2.7.txt")
colnames(p2.7) = c("y","x")
lm.result1 = lm(p2.7$y~p2.7$x)
summary(lm.result1)
anova(lm.result1)

p2.12 = read.table("C:/Temp/p2.12.txt")
colnames(p2.12) = c("Temp","Usage")
lm.result2 = lm(p2.12$Usage~p2.12$Temp)
summary(lm.result2)
anova(lm.result2)


install.packages("ggplot2")
library(ggplot2)


p2.14 = read.table("C:/Temp/p2.14.txt")
colnames(p2.14) = c("x","y")
lm.result3 = lm(p2.14$y~p2.14$x)
summary(lm.result3)
pred.res = predict(lm.result3,data.frame(x=sort(p2.14$x),level=0.9,interval="confidence"))
plot(p2.14$x,p2.14$y); abline(lm.result3)
ci.lwr = pred.res[,2]
prediction = predict(lm.result3,interval="prediction")
newdata = cbind(p2.14,prediction)
ggplot(newdata,aes(x,y)) + geom_smooth(method="lm",se=T)+geom_ribbon(aes(ymin=lwr,ymax=upr),alpha=0.2)




b0 = c()
b1 = c()
e5 = c()
std = c()
w = numeric()
b = numeric()
for(i in 1:500){
  x = seq(1,10,by=0.5)
  y = 50 + 10*x + rnorm(19,mean=0,sd=4)
  data = data.frame(x,y)
  b0[i] = coef(lm(data$y~data$x))[1]
  b1[i] = coef(lm(data$y~data$x))[2]
  e5[i] = b0[i] + b1[i]*5
  std[i] = coef(summary(lm(data$y~data$x)))[2,2]
  ci[i] = (b1[i]-10)/std[i]
  b = ci[i]
  if(b>-qt(1-alpha/2,19)&b<qt(1-alpha/2,19))w[i]=1 else w[i]=0
}
hist(b0)
hist(b1)
hist(e5)
sum(w)


alpha = 0.05
zstar = qnorm(1-alpha/2)
matplot(rbind(b1-zstar*std,b1+zstar*std),rbind(1:500,1:500),type="l",lty=1,col="black"); abline(v=mean(b1))








