nyc=read.csv("nyc.csv")
plot(nyc,main="Pairwise Scatter Plot")
print(round(cor(nyc),3)) #round indicates no of decimals points to be rounded upto

#model building

#nyc_mod1=lm(Price~Food+Decor+Service+East,data=nyc)
#or alternative is
nyc_mod1=lm(Price~.,data=nyc)
print(summary(nyc_mod1))

#drop service and building a new model 
nyc_mod2=lm(Price~Food+Decor+East,data=nyc)
print(summary(nyc_mod2))

#drop food and building a new model
nyc_mod3=lm(Price~Service+Decor+East,data=nyc)
print(summary(nyc_mod3))
