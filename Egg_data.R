e <-read.csv("eggs_CUFES.csv")
View(e)

library(stringr)
str(e)
year <- as.character(str_sub(string= e$cruise, start=1, end=4))
head(year)

e$Year <- year
View(e)

write.csv(x=e,file="egg_cufes_fixed.csv")

E <- e[-1:-5]
View(E)
E <- E[-3:-15]
View(E)
E <- E[-5:-10]
View(E)

write.csv(x=E,file="egg_cufes_fixed2.csv",row.names=F)
