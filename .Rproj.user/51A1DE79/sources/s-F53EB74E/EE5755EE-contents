Train_Data=read.csv('Titanic_Train.csv')
Test_Data=read.csv('Titanic_Test.csv')
library(caret)
log_model=glm(formula =Survived~.,data=Train_Data,family = 'binomial')

log_predict=predict(log_model,newdata=Test_Data,type = 'response')
Test_Data[log_predict<=0.5,"log_predict"]="0"
Test_Data[log_predict>0.5,"log_predict"]="1"
Test_Data$ï..Survived=as.factor(Test_Data$ï..Survived)
Test_Data$log_predict=as.factor(Test_Data$log_predict)

print(confusionMatrix(Test_Data$log_predict,Test_Data$ï..Survived,positive='1'))