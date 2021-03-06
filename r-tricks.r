aggregate(data=iris, cbind(Sepal.Length,Sepal.Width)~Species,FUN=mean)
table(x$a, x$b, useNA="ifany") #to include NA values in the count

#rows with missing values

any(is.na(x$a))

attach(iris)
by(iris[,-5], Species, colSums)
tapply(iris$Sepal.Length, Species, sum)

# Get the class of all the variables of iris dataset
sapply(iris,class)

# Calculate sum of Sepal.Width for all Species
tapply(iris$Sepal.Width,iris$Species, sum)

library(ggplot2)
 
qplot(x=as.factor(year), y=Emissions, facets= .~ city,fill=city,
                       data=bothNEI, geom="bar", stat="identity",
                       position="dodge")+
                       labs(title="Motor Vehicle Emissions in Baltimore and LA\n")
