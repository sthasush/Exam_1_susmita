e <-read.csv("eggs_CUFES.csv")
View(e)

library(stringr)
str(e)
year <- as.character(str_sub(string= e$cruise, start=1, end=4))
head(year)

e$Year <- year
View(e)

write.csv(x=e,file="egg_cufes_fixed.csv")
