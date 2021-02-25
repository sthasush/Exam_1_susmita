A <- read.csv(file="195101-201404_Zoop.csv")
View(A)
library(stringr)
str(A)
deg<- as.numeric(str_sub(string= A$Lat_Deg, start=1, end=2))
min<- as.numeric(str_sub(string= A$Lat_Min, start=1, end=4))
tail(min)

lat <- deg + min/60
A$Latitude <- lat

deg2 <-as.numeric(str_sub(string= A$Lon_Deg, start=1, end=3))
min2 <-as.numeric(str_sub(string= A$Lon_Min, start=1, end=4))

long <- (deg2 + min2/60)*-1
A$longitude <- long

Cruise_year <- as.character(str_sub(string= A$Cruise, start=1, end=4))
head(Cruise_year)
A$Cruise_Year <- Cruise_year
View(A)

a <- A[-1]
View(a)
a <- a[-2:-8]
View(a)
a <- a[-3:-11]
View(a)
a <- a[-7:-9]
View(a)

year <- as.integer(str_extract(a$Tow_Date,"[0-9]*$"))
head(year)
a$Year <- year
View(a)

a <- a[-9]
View(a)
write.csv(x=a, file="zoop_fixed.csv",row.names=F)
