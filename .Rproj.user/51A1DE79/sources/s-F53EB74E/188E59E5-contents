pd=data.frame("Name"=c("Senthil","Senthil","Sam","Sam"),
              "Month"=c("Jan","Feb","Jan","Feb"),
              "BS"=c(141.2,139.3,135.2,160.1),
              "BP"=c(90,78,80,81))
print("a") 
print(pd)
library(reshape2)
Df=melt(pd,id.vars=c("Name","Month"),measure.vars=c("BS","BP"))
#print(Df)
Df2=dcast(Df,variable+Month~Name,value.var = "value")
#print(Df2)
library(dplyr)
# pd2<-mutate(pd,log_BP=log(BP))
# print(pd2)
pd2=data.frame("Name"=c("Senthil","Ramesh","Sam"),
               "Department"=c("PSE","Data Analytics","PSE"))
print("b")
print(pd2)
pd_lfj<-right_join(pd2,pd,by="Name")
print("New one by joining/merge")
print(pd_lfj)