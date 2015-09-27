#Course project from Coursera Getting and Cleaning Data Course

This repository contains my Coursera Course Project for Getting and Cleaning Data.

##About the data and files.

###Source of the UCI HAR Dataset

Download the data from the following site and extract to folder "UCI HAR Dataset":
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Files included in this repository

* run_analysis.R - the R script to transform the data to a tidy data set  
* readme.md - information about the repository and how to run the script  
* codebook.md - information about the data and transformation to the tidy data set  

###How to run the script

1. Set the folder "UCI HAR Dataset" to be the working directory.
2. Place script run_analysis.R into working directory (UCI HAR Dataset).
3. Script can be run using the following command  
    ```{r}
    source("run_analysis.R")
    ```
4. Once the script is run a file "TidyData.txt" will be generated into the working directory. To read the data into RStudio enter the following command  
    ```{r}
    read.table("TidyData.txt", header = TRUE)
    ```

##About the script

The script will perform the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##About the codebook

The codebook.md file included in this repository explains the variables and resulting data