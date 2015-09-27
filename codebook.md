Coursera Course Project for Getting and Cleaning Data CodeBook

This codebook describes the variables, data, transformations and work performed to clean up data.


About
Data: Human Activity Recognition Using Smartphones Dataset

Experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities:
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING
While performing activies a smartphone was worn on the waist. Using it's embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.

The dataset was randomly partitioned into two sets:
    training data:  70%
    testing data:   30%

Source data 

The dataset extracted from UCI HAR Dataset includes the following files:
    - README.txt
    - features_info.txt: Shows information about the variables used on the feature vector.
    - features.txt: List of all features.
    - activity_labels.txt: Links the class labels with their activity name.
    - train/X_train.txt: Training set.
    - train/y_train.txt: Training labels.
    - test/X_test.txt: Test set.
    - test/y_test.txt: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 
    - train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
    - train/Inertial Signals/total_acc_x_train.txt
    - train/Inertial Signals/body_acc_x_train.txt
    - train/Inertial Signals/body_gyro_x_train.txt
    Note: The Intertial Signals datasets were not used in this project.


Feature Selection
The following 79 variables were extracted:

Time domain signals:

TimeDomain_BodyAccelerometerMeanX
TimeDomain_BodyAccelerometerMeanY
TimeDomain_BodyAccelerometerMeanZ
TimeDomain_BodyAccelerometerStdX
TimeDomain_BodyAccelerometerStdY
TimeDomain_BodyAccelerometerStdZ
TimeDomain_GravityAccelerometerMeanX
TimeDomain_GravityAccelerometerMeanY
TimeDomain_GravityAccelerometerMeanZ
TimeDomain_GravityAccelerometerStdX
TimeDomain_GravityAccelerometerStdY
TimeDomain_GravityAccelerometerStdZ
TimeDomain_BodyAccelerometerJerkMeanX
TimeDomain_BodyAccelerometerJerkMeanY
TimeDomain_BodyAccelerometerJerkMeanZ
TimeDomain_BodyAccelerometerJerkStdX
TimeDomain_BodyAccelerometerJerkStdY
TimeDomain_BodyAccelerometerJerkStdZ
TimeDomain_BodyGyroscopeMeanX
TimeDomain_BodyGyroscopeMeanY
TimeDomain_BodyGyroscopeMeanZ
TimeDomain_BodyGyroscopeStdX
TimeDomain_BodyGyroscopeStdY
TimeDomain_BodyGyroscopeStdZ
TimeDomain_BodyGyroscopeJerkMeanX
TimeDomain_BodyGyroscopeJerkMeanY
TimeDomain_BodyGyroscopeJerkMeanZ
TimeDomain_BodyGyroscopeJerkStdX
TimeDomain_BodyGyroscopeJerkStdY
TimeDomain_BodyGyroscopeJerkStdZ
TimeDomain_BodyAccelerometerMagnitudeMean
TimeDomain_BodyAccelerometerMagnitudeStd
TimeDomain_GravityAccelerometerMagnitudeMean
TimeDomain_GravityAccelerometerMagnitudeStd
TimeDomain_BodyAccelerometerJerkMagnitudeMean
TimeDomain_BodyAccelerometerJerkMagnitudeStd
TimeDomain_BodyGyroscopeMagnitudeMean
TimeDomain_BodyGyroscopeMagnitudeStd
TimeDomain_BodyGyroscopeJerkMagnitudeMean
TimeDomain_BodyGyroscopeJerkMagnitudeStd

Frequency domain signals: 

FrequencyDomain_BodyAccelerometerMeanX
FrequencyDomain_BodyAccelerometerMeanY
FrequencyDomain_BodyAccelerometerMeanZ
FrequencyDomain_BodyAccelerometerStdX
FrequencyDomain_BodyAccelerometerStdY
FrequencyDomain_BodyAccelerometerStdZ
FrequencyDomain_BodyAccelerometerMeanFrequencyX
FrequencyDomain_BodyAccelerometerMeanFrequencyY
FrequencyDomain_BodyAccelerometerMeanFrequencyZ
FrequencyDomain_BodyAccelerometerJerkMeanX
FrequencyDomain_BodyAccelerometerJerkMeanY
FrequencyDomain_BodyAccelerometerJerkMeanZ
FrequencyDomain_BodyAccelerometerJerkStdX
FrequencyDomain_BodyAccelerometerJerkStdY
FrequencyDomain_BodyAccelerometerJerkStdZ
FrequencyDomain_BodyAccelerometerJerkMeanFrequencyX
FrequencyDomain_BodyAccelerometerJerkMeanFrequencyY
FrequencyDomain_BodyAccelerometerJerkMeanFrequencyZ
FrequencyDomain_BodyGyroscopeMeanX
FrequencyDomain_BodyGyroscopeMeanY
FrequencyDomain_BodyGyroscopeMeanZ
FrequencyDomain_BodyGyroscopeStdX
FrequencyDomain_BodyGyroscopeStdY
FrequencyDomain_BodyGyroscopeStdZ
FrequencyDomain_BodyGyroscopeMeanFrequencyX
FrequencyDomain_BodyGyroscopeMeanFrequencyY
FrequencyDomain_BodyGyroscopeMeanFrequencyZ
FrequencyDomain_BodyAccelerometerMagnitudeMean
FrequencyDomain_BodyAccelerometerMagnitudeStd
FrequencyDomain_BodyAccelerometerMagnitudeMeanFrequency
FrequencyDomain_BodyAccelerometerJerkMagnitudeMean
FrequencyDomain_BodyAccelerometerJerkMagnitudeStd
FrequencyDomain_BodyAccelerometerJerkMagnitudeMeanFrequency
FrequencyDomain_BodyGyroscopeMagnitudeMean
FrequencyDomain_BodyGyroscopeMagnitudeStd
FrequencyDomain_BodyGyroscopeMagnitudeMeanFrequency
FrequencyDomain_BodyGyroscopeJerkMagnitudeMean
FrequencyDomain_BodyGyroscopeJerkMagnitudeStd
FrequencyDomain_BodyGyroscopeJerkMagnitudeMeanFrequency


The set of variables that were estimated from these signals are: 

Mean: Mean value
Std: Standard deviation

Tidydata set

The resulting tidydata set contains 81 variables and 180 rows made up of the following:
A variable for the ID of each of the 30 subjects who participated in the experiment
A variable for the activity label, one of 6
79 feature variables with time and frequency domain signal variables

