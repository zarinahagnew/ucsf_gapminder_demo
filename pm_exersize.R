# LOAD THE DATAZ
gapM = read.table(file = "output/combined_gapMinder.tsv", sep = "\t", header = TRUE) # first line contains titles of our columns
# View(gapM)

# SUBSET THE DATZ: 
bolivia <- gapM[gapM$country == 'Bolivia', ]
argentina <- gapM[gapM$country == 'Argentina', ]
chile <- gapM[gapM$country == 'Chile', ]
country <- gapM[gapM$country == 'Bolivia'| gapM$country == 'Argentina' | gapM$country == 'Chile', ]


# PLOTZ YEAR AND GDP    
plot(x=bolivia$year, y=bolivia$lifeExp, main = "Year x Life Exp: Bolivia", xlab = "year", ylab = "life exp")
plot(x=argentina$year, y=argentina$lifeExp, main = "Year x Life Exp: Argentina", xlab = "year", ylab = "life exp")
plot(x=chile$year, y=chile$lifeExp, main = "Year x Life Exp: Chile", xlab = "year", ylab = "life exp")

#plot(country$year, country$lifeExp)
#plot(x=gapM$pop, y=gapM$lifeExp, main = "gapM", xlab = "popn", ylab = "life exp")

