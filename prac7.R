tripDetails=read.csv('tripDetails.csv',row.names = 1)

tripCluster=kmeans(tripDetails,3)

# Method to calculate optimal no of k
k.max=10
wss=rep(NA,k.max)
nClust=list()
for(i in 1:k.max)
  {driveClasses=kmeans(tripDetails,i)
  wss[i]=driveClasses$tot.withinss
  nClust[i]=driveClasses$size
}
plot(1:k.max,wss,
     type = "b",
     pch=19,
     xlab = "Number of cluster",
     ylab = "Total within clusters sum of squares:Trips")