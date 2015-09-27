#Coursera Course Project for Getting and Cleaning Data CodeBook

The original codebook can be found in the extracted data folder
* features_info.txt

This codebook describes the variables, data, transformations and work performed to clean up data. Refer to features_info.txt if interested in the unmodified data set.

##About
Data: Human Activity Recognition Using Smartphones Dataset

Experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities:

* WALKING  
* WALKING_UPSTAIRS  
* WALKING_DOWNSTAIRS  
* SITTING  
* STANDING  
* LAYING  

While performing activies a smartphone was worn on the waist. Using it's embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.

The dataset was randomly partitioned into two sets:  
    * training data:  70%  
    * testing data:   30%  

##Source data 

The dataset extracted from UCI HAR Dataset includes the following files:  
* README.txt  
* features_info.txt: Shows information about the variables used on the feature vector.  
* features.txt: List of all features.  
* activity_labels.txt: Links the class labels with their activity name.  
* train/X_train.txt: Training set.  
* train/y_train.txt: Training labels.  
* test/X_test.txt: Test set.  
* test/y_test.txt: Test labels.  

The following files are available for the train and test data. Their descriptions are equivalent.  
* train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.   
* train/Inertial Signals/total_acc_x_train.txt  
* train/Inertial Signals/body_acc_x_train.txt  
* train/Inertial Signals/body_gyro_x_train.txt  

Note: The Intertial Signals datasets were not used in this project.

##Feature Selection

Time domain and frequency domain mean and standard deviation were extracted for 79 variables

* Mean: Mean value
* Std: Standard deviation

The original labels were modifed to descriptive variable labels as shown in the table:

Original label | Descriptive label
-------------  | ------------- 
tBodyAcc.mean...X | TimeDomain_BodyAccelerometerMeanX
tBodyAcc.mean...Y | TimeDomain_BodyAccelerometerMeanY
tBodyAcc.mean...Z | TimeDomain_BodyAccelerometerMeanZ
tBodyAcc.std...X | TimeDomain_BodyAccelerometerStdX
tBodyAcc.std...Y | TimeDomain_BodyAccelerometerStdY
tBodyAcc.std...Z | TimeDomain_BodyAccelerometerStdZ
tGravityAcc.mean...X | TimeDomain_GravityAccelerometerMeanX
tGravityAcc.mean...Y | TimeDomain_GravityAccelerometerMeanY
tGravityAcc.mean...Z | TimeDomain_GravityAccelerometerMeanZ
tGravityAcc.std...X | TimeDomain_GravityAccelerometerStdX
tGravityAcc.std...Y | TimeDomain_GravityAccelerometerStdY
tGravityAcc.std...Z | TimeDomain_GravityAccelerometerStdZ
tBodyAccJerk.mean...X | TimeDomain_BodyAccelerometerJerkMeanX
tBodyAccJerk.mean...Y | TimeDomain_BodyAccelerometerJerkMeanY
tBodyAccJerk.mean...Z | TimeDomain_BodyAccelerometerJerkMeanZ
tBodyAccJerk.std...X | TimeDomain_BodyAccelerometerJerkStdX
tBodyAccJerk.std...Y | TimeDomain_BodyAccelerometerJerkStdY
tBodyAccJerk.std...Z | TimeDomain_BodyAccelerometerJerkStdZ
tBodyGyro.mean...X | TimeDomain_BodyGyroscopeMeanX
tBodyGyro.mean...Y | TimeDomain_BodyGyroscopeMeanY
tBodyGyro.mean...Z | TimeDomain_BodyGyroscopeMeanZ
tBodyGyro.std...X | TimeDomain_BodyGyroscopeStdX
tBodyGyro.std...Y | TimeDomain_BodyGyroscopeStdY
tBodyGyro.std...Z | TimeDomain_BodyGyroscopeStdZ
tBodyGyroJerk.mean...X | TimeDomain_BodyGyroscopeJerkMeanX
tBodyGyroJerk.mean...Y | TimeDomain_BodyGyroscopeJerkMeanY
tBodyGyroJerk.mean...Z | TimeDomain_BodyGyroscopeJerkMeanZ
tBodyGyroJerk.std...X | TimeDomain_BodyGyroscopeJerkStdX
tBodyGyroJerk.std...Y | TimeDomain_BodyGyroscopeJerkStdY
tBodyGyroJerk.std...Z | TimeDomain_BodyGyroscopeJerkStdZ
tBodyAccMag.mean.. | TimeDomain_BodyAccelerometerMagnitudeMean
tBodyAccMag.std.. | TimeDomain_BodyAccelerometerMagnitudeStd
tGravityAccMag.mean.. | TimeDomain_GravityAccelerometerMagnitudeMean
tGravityAccMag.std.. | TimeDomain_GravityAccelerometerMagnitudeStd
tBodyAccJerkMag.mean.. | TimeDomain_BodyAccelerometerJerkMagnitudeMean
tBodyAccJerkMag.std.. | TimeDomain_BodyAccelerometerJerkMagnitudeStd
tBodyGyroMag.mean.. | TimeDomain_BodyGyroscopeMagnitudeMean
tBodyGyroMag.std.. | TimeDomain_BodyGyroscopeMagnitudeStd
tBodyGyroJerkMag.mean.. | TimeDomain_BodyGyroscopeJerkMagnitudeMean
tBodyGyroJerkMag.std.. | TimeDomain_BodyGyroscopeJerkMagnitudeStd
fBodyAcc.mean...X | FrequencyDomain_BodyAccelerometerMeanX
fBodyAcc.mean...Y | FrequencyDomain_BodyAccelerometerMeanY
fBodyAcc.mean...Z | FrequencyDomain_BodyAccelerometerMeanZ
fBodyAcc.std...X | FrequencyDomain_BodyAccelerometerStdX
fBodyAcc.std...Y | FrequencyDomain_BodyAccelerometerStdY
fBodyAcc.std...Z | FrequencyDomain_BodyAccelerometerStdZ
fBodyAccJerk.mean...X | FrequencyDomain_BodyAccelerometerJerkMeanX
fBodyAccJerk.mean...Y | FrequencyDomain_BodyAccelerometerJerkMeanY
fBodyAccJerk.mean...Z | FrequencyDomain_BodyAccelerometerJerkMeanZ
fBodyAccJerk.std...X | FrequencyDomain_BodyAccelerometerJerkStdX
fBodyAccJerk.std...Y | FrequencyDomain_BodyAccelerometerJerkStdY
fBodyAccJerk.std...Z | FrequencyDomain_BodyAccelerometerJerkStdZ
fBodyGyro.mean...X | FrequencyDomain_BodyGyroscopeMeanX
fBodyGyro.mean...Y | FrequencyDomain_BodyGyroscopeMeanY
fBodyGyro.mean...Z | FrequencyDomain_BodyGyroscopeMeanZ
fBodyGyro.std...X | FrequencyDomain_BodyGyroscopeStdX
fBodyGyro.std...Y | FrequencyDomain_BodyGyroscopeStdY
fBodyGyro.std...Z | FrequencyDomain_BodyGyroscopeStdZ
fBodyAccMag.mean.. | FrequencyDomain_BodyAccelerometerMagnitudeMean
fBodyAccMag.std.. | FrequencyDomain_BodyAccelerometerMagnitudeStd
fBodyBodyAccJerkMag.mean.. | FrequencyDomain_BodyAccelerometerJerkMagnitudeMean
fBodyBodyAccJerkMag.std.. | FrequencyDomain_BodyAccelerometerJerkMagnitudeStd
fBodyBodyGyroMag.mean.. | FrequencyDomain_BodyGyroscopeMagnitudeMean
fBodyBodyGyroMag.std.. | FrequencyDomain_BodyGyroscopeMagnitudeStd
fBodyBodyGyroJerkMag.mean.. | FrequencyDomain_BodyGyroscopeJerkMagnitudeMean
fBodyBodyGyroJerkMag.std.. | FrequencyDomain_BodyGyroscopeJerkMagnitudeStd


Note: the requirement was to extract only the measurements on the mean and standard deviation for each measurement, therefore the MeanFrequency measurements have not been included.

##Tidydata set

The resulting tidydata set contains 68 variables and 180 rows made up of the following:  
* A variable for the ID of each of the 30 subjects who participated in the experiment  
* A variable for the activity label, one of 6.
* 66 feature variables with time and frequency domain signal variables  

