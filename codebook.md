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


The following variables were extracted:

angletBodyAccelerometerJerkMean.gravityMean
angletBodyAccelerometerMean.gravity
angletBodyGyroscopeJerkMean.gravityMean
angletBodyGyroscopeMean.gravityMean
angleX.gravityMean
angleY.gravityMean
angleZ.gravityMean
FrequencyBodyAccelerometerJerkMagnitudeMean
FrequencyBodyAccelerometerJerkMagnitudeMeanFreq
FrequencyBodyAccelerometerJerkMagnitudeStd
FrequencyBodyAccelerometerJerkMeanFreqX
FrequencyBodyAccelerometerJerkMeanFreqY
FrequencyBodyAccelerometerJerkMeanFreqZ
FrequencyBodyAccelerometerJerkMeanX
FrequencyBodyAccelerometerJerkMeanY
FrequencyBodyAccelerometerJerkMeanZ
FrequencyBodyAccelerometerJerkStdX
FrequencyBodyAccelerometerJerkStdY
FrequencyBodyAccelerometerJerkStdZ
FrequencyBodyAccelerometerMagnitudeMean
FrequencyBodyAccelerometerMagnitudeMeanFreq
FrequencyBodyAccelerometerMagnitudeStd
FrequencyBodyAccelerometerMeanFreqX
FrequencyBodyAccelerometerMeanFreqY
FrequencyBodyAccelerometerMeanFreqZ
FrequencyBodyAccelerometerMeanX
FrequencyBodyAccelerometerMeanY
FrequencyBodyAccelerometerMeanZ
FrequencyBodyAccelerometerStdX
FrequencyBodyAccelerometerStdY
FrequencyBodyAccelerometerStdZ
FrequencyBodyGyroscopeJerkMagnitudeMean
FrequencyBodyGyroscopeJerkMagnitudeMeanFreq
FrequencyBodyGyroscopeJerkMagnitudeStd
FrequencyBodyGyroscopeMagnitudeMean
FrequencyBodyGyroscopeMagnitudeMeanFreq
FrequencyBodyGyroscopeMagnitudeStd
FrequencyBodyGyroscopeMeanFreqX
FrequencyBodyGyroscopeMeanFreqY
FrequencyBodyGyroscopeMeanFreqZ
FrequencyBodyGyroscopeMeanX
FrequencyBodyGyroscopeMeanY
FrequencyBodyGyroscopeMeanZ
FrequencyBodyGyroscopeStdX
FrequencyBodyGyroscopeStdY
FrequencyBodyGyroscopeStdZ
TimeBodyAccelerometerJerkMagnitudeMean
TimeBodyAccelerometerJerkMagnitudeStd
TimeBodyAccelerometerJerkMeanX
TimeBodyAccelerometerJerkMeanY
TimeBodyAccelerometerJerkMeanZ
TimeBodyAccelerometerJerkStdX
TimeBodyAccelerometerJerkStdY
TimeBodyAccelerometerJerkStdZ
TimeBodyAccelerometerMagnitudeMean
TimeBodyAccelerometerMagnitudeStd
TimeBodyAccelerometerMeanX
TimeBodyAccelerometerMeanY
TimeBodyAccelerometerMeanZ
TimeBodyAccelerometerStdX
TimeBodyAccelerometerStdY
TimeBodyAccelerometerStdZ
TimeBodyGyroscopeJerkMagnitudeMean
TimeBodyGyroscopeJerkMagnitudeStd
TimeBodyGyroscopeJerkMeanX
TimeBodyGyroscopeJerkMeanY
TimeBodyGyroscopeJerkMeanZ
TimeBodyGyroscopeJerkStdX
TimeBodyGyroscopeJerkStdY
TimeBodyGyroscopeJerkStdZ
TimeBodyGyroscopeMagnitudeMean
TimeBodyGyroscopeMagnitudeStd
TimeBodyGyroscopeMeanX
TimeBodyGyroscopeMeanY
TimeBodyGyroscopeMeanZ
TimeBodyGyroscopeStdX
TimeBodyGyroscopeStdY
TimeBodyGyroscopeStdZ
TimeGravityAccelerometerMagnitudeMean
TimeGravityAccelerometerMagnitudeStd
TimeGravityAccelerometerMeanX
TimeGravityAccelerometerMeanY
TimeGravityAccelerometerMeanZ
TimeGravityAccelerometerStdX
TimeGravityAccelerometerStdY
TimeGravityAccelerometerStdZ


Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
