wine=read.csv('wine.csv')
set.seed(1234)
wine=scale(wine[-1])

winecluster=kmeans(wine,3,nstart = 25)