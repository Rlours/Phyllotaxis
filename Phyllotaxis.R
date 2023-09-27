#patterns in nature

library(tidyverse)
library(dplyr)

# Set plot images to a size
options(repr.plot.width = 4, repr.plot.height = 4)


#1. Create circle data to plot
t<-seq(0,2*pi,length.out=50)
x<-sin(t)
y<-cos(t)
df<-data.frame(t,x,y)
# Make a scatter plot of points in a circle
p<-ggplot(df,aes(x,y))
p+geom_point()

# 2. Make it harmonious with the Golden Angle

points<-600
# Define the Golden Angle
angle<-pi*(3-sqrt(5))
t<-(1:points)*angle
x<-sin(t)
y<-cos(t)
df<-data.frame(t,x,y)

# Make a scatter plot of points in a spiral
p<-ggplot(df ,aes(x*t,y*t))
p+geom_point()+theme(panel.background = element_rect(fill = "white"),axis.text.x = element_blank(),
                     axis.text.y = element_blank(),axis.title.x = element_blank(),
                     axis.title.y = element_blank(),panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(),axis.ticks=element_blank())



  
  
  
  




