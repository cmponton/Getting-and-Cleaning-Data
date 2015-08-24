# Getting-and-Cleaning-Data

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at this site where the data was obtained: 	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The purpose of this project is to demonstrate the collection, manipulation and cleaning of a data set, using R programming.
The goal is to prepare tidy data that can be used for later analysis.

##Data Set Information

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

##Files Required to Create Tidy Data Sets

* 'train/X_train.txt'- Training set with 561 Variables and 7352 Observations
* 'train/y_train.txt'- Training labels set with 1 Variable and 7352 Observations
* 'test/X_test.txt'- Test set with 561 Variables and 2947 Observations
* 'test/y_test.txt'- Test labels with 1 Variable and 2947 Observations
* 'features.txt'- List of all features with 2 Variables and 561 Observations
* 'activity_labels.txt'- Links the class labels with their activity name with 2 Variables and 6 Observations
* 'train/subject_test.txt'- Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 with 1 Variable and 2947 Observations
* 'train/subject_train.txt'- Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30 with 1 Variable and 7352 Observations
* 'README.txt' - Reference file with background Information
* 'features_info.txt'- Reference file that shows information about the variables used on the feature vector

## "run_analysis.R" Script - High Level Steps

* Merge the training and the test sets to create one data set
* Extract only the measurements on the mean and standard deviation for each measurement 
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names
* Create a second, independent tidy data set with the average of each variable for each activity and each subject 


##"run_analysis.R" Script - Detailed steps
* Load libraries
* Donload zip package from website source into local directory
* Unzip package in local directory
* Read into R features.txt to be used to name train and test dataset variables
* Read into R activity_lables to be used to map the activities names to the train and data sets observations
* Read into R test datasets: X_test.txt + y_test.txt + subject_test.txt
* Read into R train datasets: X_train.txt + y_train.txt + subject_train.txt
* Append X datasets to form a XMerged dataset
* Append Y datasets to form a YMerged dataset
* Append subject datasets to form a SubjectMerged dataset
* Name columns in Feature dataset to "FeatureID" and FeatureName"
* Add feature names to XMerged dataset
* Select all FeatureNames with mean and std deviation measurements
* Remove "()" string from column headers
* Name columns in the activity dataset to "ActivityID" and "ActivityName"
* Replace activity codes (1:6) in the YMerged dataset for the corresponding activity labels
* Create tidy data 1 set by appending SubjectMerged + XMerged + YMerged datasets
* Create tidy data 2 set with the average of each variable for each activity (6 total) and each subject (30 individuals for each activity -2nd dimension)
* Write tidy data set 1 to local directory using the txt format
* Write tidy data set 2 to local directory using the txt format

##Data Information Source Reference

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


