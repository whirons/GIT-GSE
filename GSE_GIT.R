#GSE and GIT set up
#git test
#test2
#pull test

#install packages
install.packages("move")
install.packages("mapview")
install.packages("dplyr")
install.packages("Amt")
install.packages("tidyverse")

#libary 
library(move)
library(mapview)
library(dplyr)
library(amt)
library(knitr)
library(lubridate)
library(maptools)
library(raster)
library(ggmap)
library(tibble)
library(leaflet)
library(tidyverse)

#Get movebank data for required time stamps
loginStored <- movebankLogin(username="WillHirons", password="Cricket3219")

GSE.move <- getMovebankData(study="Great Spotted Eagle - Belarus", 
                               login=loginStored,  timestamp_start="20190425193000000",
                            timestamp_end="20190729180000000")
head(GSE.move) 

#create dataframe
GSE.dat <- as(GSE.move, "data.frame")


#Clean data


GSE.dat$timestamp<-as.POSIXct(GSE.dat$timestamp, format="%Y-%m-%d %H:%M:%OS", tz="UTC")


#Read in 2019 Camtrap dataset
data <- read.csv()