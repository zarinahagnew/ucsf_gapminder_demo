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
plot(x=gapM$pop, y=gapM$lifeExp, main = "gapM", xlab = "popn", ylab = "life exp")

# subset the data: trying to see populations over 10,000 people in population
# gapM$pop >=10000
gapM$pop >=10000
gapMlargepop <- gapM[gapM$pop >=100000000,]
plot(x=gapMlargepop$pop, y=gapMlargepop$lifeExp, main = "gapMlargepop", xlab = "popn", ylab = "life exp")

# take subset of the data
?subset
testdata=read.csv(file = "data/testdata.csv", sep = "\t", header = TRUE)


# pivot tables
agg_data <- aggregate(.~country, data=gapM, FUN = mean) # . is short hand for 'everything
View(agg_data)

agg_data_country <- aggregate(pop + lifeExp~country, data=gapM, FUN = mean) # . is short hand for 'everything

# cbind and rbind (coloum and row bind)
agg_data_country_b <- aggregate(cbind(pop,lifeExp)~country, data=gapM, FUN = mean) # . is short hand for 'everything
View(agg_data_country)

plot(agg_data_country$year)

##
zdata=read.csv(file = "output/testdata.txt")
View(zdata)

z <- read.csv(file = "output/testdataz.csv")

filez <- read.csv(file = "output/testdataz.csv", header=TRUE)


