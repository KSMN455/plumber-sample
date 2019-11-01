#* @get /hello
hw <- function() {
    return("Hello, world!")
}

#* @get /hello/<name>/<age>
hw <- function(name, age) {
    return(paste("Hello", name, "You're", age, "years old" seq=" "))
}

#* @get /fn
hw <- function(x) {
    x <- as.numeric(x)
    y <- 2 * x + 1
    return(y)
}

#irisを読み込み
df <- iris

#* @get /plot
#* @png
hw <- function() {
    p <- plot(df$Sepal.Length, df$Sepal.Width, 
        main="Sample plot", sub="Iris", xlab="Sepal.Length"，ylab="Sepal.Width")
    print(p)
}