library(ggplot2)

#Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
#1            5.1         3.5          1.4         0.2     setosa
#2            4.9         3.0          1.4         0.2     setosa
#3            4.7         3.2          1.3         0.2     setosa
#4            4.6         3.1          1.5         0.2     setosa
#5            5.0         3.6          1.4         0.2     setosa
#6            5.4         3.9          1.7         0.4     setosa
#7            4.6         3.4          1.4         0.3     setosa
#8            5.0         3.4          1.5         0.2     setosa
#9            4.4         2.9          1.4         0.2     setosa
#10           4.9         3.1          1.5         0.1     setosa
## # ... with 140 more rows

#單變數:類別型
##每一種個數各有幾個
ggplot(data = iris,aes(x= Species)) + geom_bar(fill = "lightblue", colour = "black")

##花瓣長度各有幾個
ggplot(data = iris,aes(x= Petal.Length)) + geom_bar(fill = "lightyellow", colour = "black")

##花瓣寬度各有幾個
ggplot(data = iris,aes(x= Petal.Width)) + geom_bar(fill = "lightpink", colour = "black")

##花萼長度各有幾個
ggplot(data = iris,aes(x= Sepal.Length)) + geom_bar(fill = "white", colour = "black")

##花萼寬度各有幾個
ggplot(data = iris,aes(x= Sepal.Width)) + geom_bar(fill = "violet", colour = "black")                                              

#單變數:連續型
##花瓣長度連續圖
ggplot(data = iris,aes(x = Petal.Length)) + geom_histogram()

##花瓣寬度連續圖
ggplot(data = iris,aes(x = Petal.Width)) + geom_histogram()

##花萼長度連續圖
ggplot(data = iris,aes(x = Sepal.Length)) + geom_histogram()

##花萼寬度連續圖
ggplot(data = iris,aes(x = Sepal.Width)) + geom_histogram()

#雙變數:連續V.S.連續

##花瓣的長度與寬度分布
ggplot(data = iris,aes(x = Petal.Length, y = Petal.Width)) + geom_point()

##花萼的長度與寬度分布
ggplot(data = iris,aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

##種類與花瓣長分布
ggplot(data = iris,aes(x = Species, y = Petal.Length)) + geom_point()

##種類與花瓣寬分布
ggplot(data = iris,aes(x = Species, y = Petal.Width)) + geom_point()

##種類與花萼長分布
ggplot(data = iris,aes(x = Species, y = Sepal.Length)) + geom_point()

##種類與花萼寬分布
ggplot(data = iris,aes(x = Species, y = Sepal.Width)) + geom_point()


#雙變數:離散V.S.連續
##各種之花瓣長度箱型圖
ggplot(iris,aes(x = Species, y = Petal.Length)) + geom_boxplot(colour = "black")

##各種之花瓣長度小提琴圖
ggplot(iris,aes(x = Species, y = Petal.Length)) + geom_violin()

#分割多圖
##以種類分割成小圖，x為花瓣的長度，y為花瓣的寬度
ggplot(data = iris,aes(x = Petal.Length, y = Petal.Width)) + geom_point() + facet_wrap(~Species)




