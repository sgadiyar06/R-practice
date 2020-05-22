setwd('E:/RStudio')
bonds=read.delim("bonds.txt",row.names = 1)
print(str(bonds))
print(summary(bonds))


#bondsmod=lm(bonds$BidPrice~bonds$CouponRate)
bondsmod=lm(BidPrice~CouponRate,data=bonds)

# 
# plot(bonds$CouponRate,bonds$BidPrice,
#      main = "BidPrice vs CouponRate",
#      xlab = "Coupon rate",
#      ylab = "BidPrice")
# abline(bondsmod)
# print(summary(bondsmod))

#t test calculations
# aplha=0.05
# n=35
# p=1
# aq=qt(p = 1-(alpha/2),df=n-p-1)
# print(aq)

#F statistic caluctions
# SSE=sum((bonds$BidPrice-bondsmod$fitted.values)^2)
# print(SSE)
# SSR=sum((bondsmod$fitted.values-mean(bonds$BidPrice))^2)
# print(SSR)
# print((SSR/SSE)*(n-2))

#plot when outliers exist in the data
# plot(bondsmod$fitted.values,rstandard(bondsmod),
#      main = "Residual plot",
#      xlab = "Predicted value for Bid Price",
#      ylab = "Standarized values")
# abline(h=2,lty=2)
# abline(h=-2,lty=2)

#from the plot we can see outliers exist above and below the lines
#identify(bondsmod$fitted.values,rstandard(bondsmod))

#remove the outliers one at a time and continue iterations, so now
bonds_new<-bonds[-13,]
bondsmod1=lm(bonds_new$BidPrice~bonds_new$CouponRate)
plot(bondsmod1$fitted.values,rstandard(bondsmod1),
     main = "Residual plot",
     xlab = "Predicted value for Bid Price",
     ylab = "Standarized values")
abline(h=2,lty=2)
abline(h=-2,lty=2)

bonds_new1<-bonds_new[-35,]
bondsmod2=lm(bonds_new1$BidPrice~bonds_new$CouponRate)
plot(bondsmod2$fitted.values,rstandard(bondsmod2),
     main = "Residual plot",
     xlab = "Predicted value for Bid Price",
     ylab = "Standarized values")
abline(h=2,lty=2)
abline(h=-2,lty=2)

print(summary(bondsmod2))
