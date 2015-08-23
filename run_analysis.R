##run_analysis.R
##Load Libraries
library(data.table)
library(dplyr)

##Download Data from website into local directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
if (file.exists(SmartData) == FALSE) {
    download.file(fileUrl, destfile="C:/Users/EscapeForEver/Documents/SmartData.zip", mode="wb")
    }

##Unzip File in under same directory as where the DataSet.zip file exist
unzip ("SmartData.zip", exdir = ".")

##Read the data files found under the parent directory UCI HAR
Features <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/features.txt", header=F)
ActivityLabels <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/activity_labels.txt", header=F)

##Read the data files found under the test directory under the parent directory UCI HAR
TestX <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/test/X_test.txt", header=F)
TestY <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/test/y_test.txt", header=F)
SubjectTest <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/test/subject_test.txt", header=F)

##Read the data files found under the train directory under parent directory UCI HAR
TrainX <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/train/X_train.txt", header=F)
TrainY <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/train/y_train.txt", header=F)
SubjectTrain <- read.table("C:/Users/EscapeForEver/Documents/UCI HAR Dataset/train/subject_train.txt", header=F)

##Merging data files with same subject and number of variables
##X datasets and 1 variable in each file
XMerged <-rbind(TestX, TrainX)
##Y datasets and 561 variables in each file
YMerged <-rbind(TestY, TrainY)
##Subject Datasets and 1 variable in each file
SubjectMerged <-rbind(SubjectTest, SubjectTrain)

## Naming the Columns in the Features dataframe 
names(Features) <- c('FeatureID', 'FeatureName')
##Extracts only the measurements on the mean and standard deviation 
##for each measurement. 
Index_Features <- grep("-mean\\(\\)|-std\\(\\)", Features$FeatureName)
XMerged <- XMerged[, Index_Features] 
## merging it with the Xmerged dataset and removing the () string
##from the values
names(XMerged) <- gsub("\\(|\\)", "", (Features[Index_Features, 2]))

##Naming the activities in the ActivityLebels dataset and merging into the YMerged Dataset
names(ActivityLabels) <- c('ActivityID', 'ActivityName')
YMerged[, 1] = ActivityLabels[YMerged[, 1], 2]

## replacing the activity codes for the actual activity labels in the YMerged dataset  
names(YMerged) <-"Activity"
## Naming column in the SubjectMerged dataset
names(SubjectMerged) <-"Subject"

## Creating first tidy set combining all datasets by columns
TidyDataSet1 <- cbind(SubjectMerged, YMerged, XMerged)

## Creating a second tidy data set with the average of each 
## variable for each activity (6 total) and each subject (30 individuals for each
## activity -2nd dimension)
Datalevel <- TidyDataSet1[, 3:dim(TidyDataSet1)[2]] 
TidyDataSet2 <- aggregate(Datalevel,list(TidyDataSet1$Subject, TidyDataSet1$Activity), mean)
names(TidyDataSet2)[1] <- "Subject"
names(TidyDataSet2)[2] <- "Activity"
View(TidyDataSet2)
##Writing tidy sets into txt files
write.table(TidyDataSet1, file="tidyData1.txt", row.names = F)
write.table(TidyDataSet2, file="tidyData2.txt", row.names = F)
