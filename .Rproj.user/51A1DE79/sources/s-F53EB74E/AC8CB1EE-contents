a=read.csv('Titanic_Train.csv')
b=read.csv('Titanic_Test.csv')
library(caret)
log1=glm(formula = a$Survived~.,family = 'binomial',data = a)

log2=predict(log1,type = 'response')
plot(log2)

print(tapply(log2,a$Survived, mean))

log3=predict(log1,newdata = b,type='response')
plot(log3)

b[log3<=0.5,"log3"]='0'
b[log3>0.5,"log3"]='1'
b$ï..Survived=as.factor(b$ï..Survived)
b$log3=as.factor(b$log3)
print(confusionMatrix(b$log3,b$ï..Survived,positive='1'))
