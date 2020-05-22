library(caret)
library(class)

ServiceTrain=read.csv('serviceTrainData.csv')
ServiceTest=read.csv('serviceTestData.csv')


predictedknn=knn(train=ServiceTrain[,-6],
                 test = ServiceTest[,-6],
                 cl=ServiceTrain$Service,
                 k=3)
#use confusion matrix to verify how good it is

#two methods to do this: manually and other using caret package

#confusion matrix
conf_matrix=table(predictedknn,ServiceTest[,6])

#a measure of accuracy 
knn_acc=sum(diag(conf_matrix))/nrow(ServiceTest)

#caret package
conf_mat=confusionMatrix(data=predictedknn,ServiceTest$Service)
