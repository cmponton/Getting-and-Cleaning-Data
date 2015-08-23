
##Experimental Design 
2 
 
3 The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.  
4 
 
5 ##Raw Data 
6 
 
7 The sensor signals (accelerometer and gyroscope) recorded were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  
8 For each record in the dataset it is provided:  
9 * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
10 * Triaxial Angular velocity from the gyroscope.  
11 * A 561-feature vector with time and frequency domain variables.  
12 * Its activity label.  
13 * An identifier of the subject who carried out the experiment 
14 
 
15 ##Processed Data 
16 
 
17 Subject = The Individual’s participant ID (count of 1-30) 
18 
 
19 Activity = Category of action performed when the measurements were taken transformed from Factor of 1-6 to following naming convention: 
20 *	WALKING (value 1) 
21 *	WALKING_UPSTAIRS (value 2) 
22 *	WALKING_DOWNSTAIRS (value 3) 
23 *	SITTING (value 4) 
24 *	STANDING (value 5) 
25 *	LAYING (value 6) 
26 
 
27 Features  = Transformed from 561 to 66 Variables/Signals by selecting only the mean and std deviation Features signal measurements reading the average per Activity and Subject.  Transformed the names by omiting the () string in their names.  
28 General Description of the Features 
29 * XYZ Features - denotes 3-axial signals in the X, Y and Z directions 
30 * tAcc-XYZ and tGyro-XYZ - accelerometer and gyroscope 3-axial raw signals with prefix t to denote time 
31 * tBodyAcc-XYZ and tGravityAcc-XYZ – Acceleration signals separated into body and gravity acceleration signals 
32 * tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ – Jerk signals derived from body linear acceleration and angular velocity  
33 * tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag  - Euclidean norm measurements to calculate the magnitude of the 3 dimensional Jerk signals described above 
34 * fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag – Produced after aplying Fast Fourier Transform (FFT) to some of the above signals. Note the prefix f to denote frequency domain signals 
35 * gravityMean, tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean – angle() variable  
36 Features Signals Measurements 
37 mean: Mean value 
38 std: Standard deviation  
 



 

Status
 API
 Training
 Shop
 Blog
 About
 Pricing
 
