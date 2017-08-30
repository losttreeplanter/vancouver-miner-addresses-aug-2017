# working basic ######################

library(readr)
library(ggmap)
library(ggplot2)
vanaddresstwo <- read_csv("~/R/vanaddresstwo.csv")

#vanaddresstwo<- as.numeric(vanaddresstwo$lat, vanaddresstwo$lon)


qmap(location = "Vancouver", zoom = 9, source="stamen", maptype="watercolor")

qmplot(x=lon, y=lat, data = vanaddresstwo, colour = I('green'), size = I(3), darken = .3)



# using get_map works #######################

library(readr)
library(ggmap)
library(ggplot2)
vanaddresstwo <- read_csv("~/R/vanaddresstwo.csv")

myMap<-get_map(location = "Vancouver", zoom = 12, source="google", maptype="roadmap")

ggmap(myMap)+
  geom_point(data = vanaddresstwo, aes(x=lon, y=lat),alpha = .5, color="darkred")

# add heatmaps works #######################

library(readr)
library(ggmap)
library(ggplot2)
vanaddresstwo <- read_csv("~/R/vanaddresstwo.csv")

myMap<-get_map(location = "Vancouver", zoom = 15, source="google", maptype="roadmap")

ggmap(myMap)+
  geom_point(data = vanaddresstwo, aes(x=lon, y=lat),alpha = .5, color="darkred") +
  stat_density2d(data = vanaddresstwo, aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, bins = 16, geom = "polygon") +
  scale_fill_gradient(low = "green", high = "red", guide = FALSE) + 
  scale_alpha(range = c(0, 0.3), guide = FALSE)

# add heatmaps works #######################

library(readr)
library(ggmap)
library(ggplot2)
vanaddresseleven <- read_csv("C:/Users/mmccrae/Downloads/vanaddresseleven.csv")


myMap<-get_map(location = "Vancouver", zoom = 14, source="google", maptype="roadmap")

ggmap(myMap)+
  geom_point(data = vanaddresseleven, aes(x=lon, y=lat),alpha = .5, color="darkred") +
  stat_density2d(data = vanaddresseleven, aes(x = lon, y = lat, fill = ..level.., alpha = ..level..), size = 0.01, bins = 11, geom = "polygon") +
  scale_fill_gradient(low = "green", high = "red", guide = FALSE) + 
  scale_alpha(range = c(0, 0.5), guide = FALSE)




