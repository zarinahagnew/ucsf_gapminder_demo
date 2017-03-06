gapM=read.csv(file = "output/combined_gapMinder.tsv")
View(gapM)
read.table(file = "output/combined_gapMinder.tsv")
read.table(file = "output/combined_gapMinder.tsv", sep = "\t") # first line contains titles of our columns

gapM = read.table(file = "output/combined_gapMinder.tsv", sep = "\t", header = TRUE) # first line contains titles of our columns
View(gapM)

gapM$year
str(gapM$year)

# plotting
plot(gapM)
plot(gapM$pop)

plot(gapM$pop, gapM$lifeExp)
plot(x=gapM$pop, y=gapM$lifeExp, main = "this is the title", xlab = "popn", ylab = "life exp")

# subset the data: trying to see populations over 10,000 people in population
# gapM$pop >=10000



testdata=read.csv(file = "data/testdata.csv", sep = "\t", header = TRUE)
