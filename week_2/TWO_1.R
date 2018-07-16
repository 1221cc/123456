library(ggplot2)

#單變數:類別型
ggplot(data = iris,aes(x= Species)) + geom_bar(fill = "lightblue", colour = "black")
                                              

#單變數:連續型
ggplot(data = iris,aes(x = Petal.Length)) + geom_histogram()

#雙變數:連續V.S.連續
ggplot(data = iris,aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

#雙變數:離散V.S.連續
ggplot(iris,aes(x = Species, y = Petal.Width)) + geom_boxplot(colour = "black")






