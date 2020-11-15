library(tidyverse)
library(rjson)
library(lubridate)

# Import data
CAcat <- fromJSON(file="data/CA_category_id.json")
CAvid <- read.csv("data/CAvideos.csv", header=TRUE)

DEcat <- fromJSON(file="data/DE_category_id.json")
DEvid <- read.csv("data/DEvideos.csv", header=TRUE)

FRcat <- fromJSON(file="data/FR_category_id.json")
FRvid <- read.csv("data/FRvideos.csv", header=TRUE)

GBcat <- fromJSON(file="data/GB_category_id.json")
GBvid <- read.csv("data/GBvideos.csv", header=TRUE)

INcat <- fromJSON(file="data/IN_category_id.json")
INvid <- read.csv("data/INvideos.csv", header=TRUE)

JPcat <- fromJSON(file="data/JP_category_id.json")
JPvid <- read.csv("data/JPvideos.csv", header=TRUE)

KRcat <- fromJSON(file="data/KR_category_id.json")
KRvid <- read.csv("data/KRvideos.csv", header=TRUE)

MXcat <- fromJSON(file="data/MX_category_id.json")
MXvid <- read.csv("data/MXvideos.csv", header=TRUE)

RUcat <- fromJSON(file="data/RU_category_id.json")
RUvid <- read.csv("data/RUvideos.csv", header=TRUE)

UScat <- fromJSON(file="data/US_category_id.json")
USvid <- read.csv("data/USvideos.csv", header=TRUE)

# Add category columns
CAcatn <- length(CAcat[[3]])
CAcatIndex <- cbind(1:CAcatn, 1:CAcatn)
for(i in 1:CAcatn){
  CAcatIndex[i,1] <- CAcat[[3]][[i]]$id
  CAcatIndex[i,2] <- CAcat[[3]][[i]]$snippet$title
}
CAcatIndex <- as.data.frame(CAcatIndex)
colnames(CAcatIndex) <- c("category_id","category")
CAtrend <- merge(x=CAvid, y=CAcatIndex, by="category_id", all.x=TRUE)

DEcatn <- length(DEcat[[3]])
DEcatIndex <- cbind(1:DEcatn, 1:DEcatn)
for(i in 1:DEcatn){
  DEcatIndex[i,1] <- DEcat[[3]][[i]]$id
  DEcatIndex[i,2] <- DEcat[[3]][[i]]$snippet$title
}
DEcatIndex <- as.data.frame(DEcatIndex)
colnames(DEcatIndex) <- c("category_id","category")
DEtrend <- merge(x=DEvid, y=DEcatIndex, by="category_id", all.x=TRUE)

FRcatn <- length(FRcat[[3]])
FRcatIndex <- cbind(1:FRcatn, 1:FRcatn)
for(i in 1:FRcatn){
  FRcatIndex[i,1] <- FRcat[[3]][[i]]$id
  FRcatIndex[i,2] <- FRcat[[3]][[i]]$snippet$title
}
FRcatIndex <- as.data.frame(FRcatIndex)
colnames(FRcatIndex) <- c("category_id","category")
FRtrend <- merge(x=FRvid, y=FRcatIndex, by="category_id", all.x=TRUE)

GBcatn <- length(GBcat[[3]])
GBcatIndex <- cbind(1:GBcatn, 1:GBcatn)
for(i in 1:GBcatn){
  GBcatIndex[i,1] <- GBcat[[3]][[i]]$id
  GBcatIndex[i,2] <- GBcat[[3]][[i]]$snippet$title
}
GBcatIndex <- as.data.frame(GBcatIndex)
colnames(GBcatIndex) <- c("category_id","category")
GBtrend <- merge(x=GBvid, y=GBcatIndex, by="category_id", all.x=TRUE)

INcatn <- length(INcat[[3]])
INcatIndex <- cbind(1:INcatn, 1:INcatn)
for(i in 1:INcatn){
  INcatIndex[i,1] <- INcat[[3]][[i]]$id
  INcatIndex[i,2] <- INcat[[3]][[i]]$snippet$title
}
INcatIndex <- as.data.frame(INcatIndex)
colnames(INcatIndex) <- c("category_id","category")
INtrend <- merge(x=INvid, y=INcatIndex, by="category_id", all.x=TRUE)

JPcatn <- length(JPcat[[3]])
JPcatIndex <- cbind(1:JPcatn, 1:JPcatn)
for(i in 1:JPcatn){
  JPcatIndex[i,1] <- JPcat[[3]][[i]]$id
  JPcatIndex[i,2] <- JPcat[[3]][[i]]$snippet$title
}
JPcatIndex <- as.data.frame(JPcatIndex)
colnames(JPcatIndex) <- c("category_id","category")
JPtrend <- merge(x=JPvid, y=JPcatIndex, by="category_id", all.x=TRUE)

KRcatn <- length(KRcat[[3]])
KRcatIndex <- cbind(1:KRcatn, 1:KRcatn)
for(i in 1:KRcatn){
  KRcatIndex[i,1] <- KRcat[[3]][[i]]$id
  KRcatIndex[i,2] <- KRcat[[3]][[i]]$snippet$title
}
KRcatIndex <- as.data.frame(KRcatIndex)
colnames(KRcatIndex) <- c("category_id","category")
KRtrend <- merge(x=KRvid, y=KRcatIndex, by="category_id", all.x=TRUE)

MXcatn <- length(MXcat[[3]])
MXcatIndex <- cbind(1:MXcatn, 1:MXcatn)
for(i in 1:MXcatn){
  MXcatIndex[i,1] <- MXcat[[3]][[i]]$id
  MXcatIndex[i,2] <- MXcat[[3]][[i]]$snippet$title
}
MXcatIndex <- as.data.frame(MXcatIndex)
colnames(MXcatIndex) <- c("category_id","category")
MXtrend <- merge(x=MXvid, y=MXcatIndex, by="category_id", all.x=TRUE)

RUcatn <- length(RUcat[[3]])
RUcatIndex <- cbind(1:RUcatn, 1:RUcatn)
for(i in 1:RUcatn){
  RUcatIndex[i,1] <- RUcat[[3]][[i]]$id
  RUcatIndex[i,2] <- RUcat[[3]][[i]]$snippet$title
}
RUcatIndex <- as.data.frame(RUcatIndex)
colnames(RUcatIndex) <- c("category_id","category")
RUtrend <- merge(x=RUvid, y=RUcatIndex, by="category_id", all.x=TRUE)

UScatn <- length(UScat[[3]])
UScatIndex <- cbind(1:UScatn, 1:UScatn)
for(i in 1:UScatn){
  UScatIndex[i,1] <- UScat[[3]][[i]]$id
  UScatIndex[i,2] <- UScat[[3]][[i]]$snippet$title
}
UScatIndex <- as.data.frame(UScatIndex)
colnames(UScatIndex) <- c("category_id","category")
UStrend <- merge(x=USvid, y=UScatIndex, by="category_id", all.x=TRUE)

# Merge these data frames into one
CAtrend$country <- rep("CA", nrow(CAtrend))
DEtrend$country <- rep("DE", nrow(DEtrend))
FRtrend$country <- rep("FR", nrow(FRtrend))
GBtrend$country <- rep("GB", nrow(GBtrend))
INtrend$country <- rep("IN", nrow(INtrend))
JPtrend$country <- rep("JP", nrow(JPtrend))
KRtrend$country <- rep("KR", nrow(KRtrend))
MXtrend$country <- rep("MX", nrow(MXtrend))
RUtrend$country <- rep("RU", nrow(RUtrend))
UStrend$country <- rep("US", nrow(UStrend))

YoutubeTrending <- rbind(CAtrend, DEtrend, FRtrend, GBtrend, INtrend, JPtrend, KRtrend, MXtrend, RUtrend, UStrend)

# Change date column into yyyy-mm-dd form
YoutubeTrending$trending_date <- gsub("\\.","-",YoutubeTrending$trending_date)
YoutubeTrending$trending_date <- ydm(YoutubeTrending$trending_date)
YoutubeTrending$publish_time <- gsub("T", " ", YoutubeTrending$publish_time)
YoutubeTrending$publish_time <- gsub(".000Z", "", YoutubeTrending$publish_time)

# omit the variables that not going to use
YoutubeTrending <- YoutubeTrending[,c(17,18,2,3,5,6,7,8,9,10,11,13,14,15)]

# Save cleaned data frame as csv file
write.csv(YoutubeTrending, "data/YoutubeTrending.csv")

