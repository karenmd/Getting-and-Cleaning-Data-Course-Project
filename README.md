Course project from Coursera Getting and Cleaning Data Course

This repository contains my Coursera Course Project for Getting and Cleaning Data.

About the data and files.

Source of the UCI HAR Dataset:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files included in this repository

run_Analysis.R - the R script to transform the data to a tidy data set
readme.md - information about the repository and how to run the script
codebook.md - information about the data and transformation to the tidy data set

How to run the script

Set the folder "UCI HAR Dataset" to be the working directory.

Place script run_Analysis.R into working directory (UCI HAR Dataset).

Script can be run using the following command:
    source("run_analysis.R")

Once the script is run a file "TidyData.txt" will be generated into the working directory. To read the data into RStudio enter the following command:
    read.table("TidyData.txt", header = TRUE)

About the script

The script will perform the following:
- Testing and training data is merged into one data set
Labels are added with descriptions
Columns related to mean and standard deviation only are extracted
Tidy data set named tidydata.txt is generated containing the means of all columns per subject and activity


About the codebook

The codebook.md file explains the variables and resulting data