ct1=read.csv('crashTest_1.csv',row.names = 1)
ct1t=read.csv('crashTest_1_TEST.csv',row.names = 1)
library(caret)
#Logistic regression 
#use glm() function
logisfit=glm(formula=ct1$CarType~.,family = 'binomial',data=ct1)
#summary(logisfit)

logisTrain=predict(logisfit,type = 'response') 
plot(logisTrain)

tapply(logisTrain,ct1$CarType,mean)

logisPred=predict(logisfit,newdata = ct1t,type = 'response')
plot(logisPred)

ct1t[logisPred<=0.5,"LogisPred"]="Hatchback"
ct1t[logisPred>0.5,"LogisPred"]="SUV"

print(confusionMatrix(table(ct1t[,7],ct1t[,6]),positive='Hatchback'))


