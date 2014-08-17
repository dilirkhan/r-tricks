#hierarchical clustering
x=round(rnorm(36))
y=round(rnorm(36))
df1<- data.frame(x,y)
plot(df1)
text(x+5,y+5, labels=as.character(1:36))
disto<- dist(df1)
clusto <- hclust(disto)
plot(clusto)

#k-means clustering
x=rnorm(36)
y=rnorm(36)
df1<- data.frame(x,y)
km <- kmeans(df1,centers=3)
names(km)
km$cluster
km$centers
plot(x,y, col=km$cluster, cex=1,pch=2)
points(km$centers, pch=3, cex=3, col=1:3,lwd=3)
#+++++++++++++++++
heatmap(as.matrix(df1))
