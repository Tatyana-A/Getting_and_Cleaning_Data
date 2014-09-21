library(reshape2)
library(plyr)

# read all data from files
# data folder "UCI HAR Dataset" is placed in working directory

setwd("UCI HAR Dataset")
xtrain <- read.table("./train/X_train.txt")
ytrain <- read.table("./train/y_train.txt")
subjecttrain<-read.table("./train/subject_train.txt")
xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/y_test.txt")
subjecttest<-read.table("./test/subject_test.txt")
features<-read.table("./features.txt")
activity_labels<-read.table("./activity_labels.txt")

# Step1. Merge the training and the test sets to create one data set.

alldata<-rbind(xtrain,xtest)
alllabels<-rbind(ytrain,ytest)
allsubjects<-rbind(subjecttrain,subjecttest)

# Step 2. Extract only the measurements on the mean and standard
#         deviation for each measurement.

selected_columns<-sapply(features[,2], function(x) (strsplit(paste(as.character(x),"-0",sep=""),"-")[[1]] %in% c("mean()","std()"))[2])
ds<-alldata[,selected_columns]

# Step 3. Use descriptive activity names to name the activities in the data set
# and
# Step 4. Appropriately labels the data set with descriptive variable names.

# add subjects and activity columns to dataset

ds<-cbind(allsubjects, alllabels, ds)

# reset names to columns

names(ds)<-c("subject","activity",as.vector(features[selected_columns,2]))

# replace activity IDs by names

ds<-merge(activity_labels, ds, by.x="V1",by.y="activity")

# arrange columns

ds[,1]<-ds[,3]
ds<-ds[,-3]

# reset names to columns

names(ds)<-c("subject","activity",as.vector(features[selected_columns,2]))

# Step 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject

# reshape data to create new "meltds" dataset, having 4 columns "subject", "activity", "variable", "value"

meltds <- melt(ds, id=c("subject", "activity"))

# group "subject", "activity" and "variable" columns and calculate averages of value column
# place the result into new tidy dataset

tidyds <- ddply(meltds, .(subject, activity, variable), summarize, meanvalue = mean(value))

# save dataset to a file

write.table(tidyds, file = "TidyDataSet.txt", row.name=FALSE)

