##load required libraries
library(plyr)
library(dplyr)
library(tidyr)

## load test data into variables
test <- read.table("UCI HAR Dataset/test/X_test.txt")
testsubj <- read.table("UCI HAR Dataset/test/subject_test.txt")
testy <- read.table("UCI HAR Dataset/test/y_test.txt")

## Load measurement names and extract unique names
feat <- read.table("UCI HAR Dataset/features.txt")
feat2 <- make.names(feat[[2]], unique=TRUE)

## Add descriptive names to activities
act_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
testy = join(testy, act_labels)

## Add measurement names to test data
colnames(test) <- feat2

## Add subject and activity id to test data
test$activity <- testy[[2]]
test$subject <- testsubj[[1]]

## load train data into variables and add descriptive names
train <- read.table("UCI HAR Dataset/train/X_train.txt")
trainsubj <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainy <- read.table("UCI HAR Dataset/train/y_train.txt")
trainy = join(trainy, act_labels)

## Add measurement names to train data
colnames(train) <- feat2

## Add subject and activity id to train data
train$activity <- trainy[[2]]
train$subject <- trainsubj[[1]]

## Merge data and load into df for use of dplyr
## extract only mean and stdev data columns
## create data set with average of each variable per subject and activity
AllData <- rbind(train,test)
DF <- tbl_df(AllData)
DF2 <- select(DF,subject, activity,contains(".std"),contains(".mean."))
by_DF <- group_by(DF2,subject,activity)
summarise_each(by_DF,funs(mean))