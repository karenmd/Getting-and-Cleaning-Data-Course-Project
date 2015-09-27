setwd("D:/Karen/Data Analytics/Data Science Coursera/Getting and Cleaning Data/Assignment data/UCI HAR Dataset")

#Read the training data files in
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

#Read the testing data files in
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

#Read the activity labels data file in
activity_labels <- read.table("activity_labels.txt")

#Add column name "SubjectID" to the file that lists the subject who performed the activity
names(subject_train) <- "SubjectID"
names(subject_test) <- "SubjectID"

#Read the features data file in
features <- read.table("features.txt")

#Tidy up the feature names for R
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])
features[,2] = gsub("BodyBody", "Body", features[,2])
features[,2] = gsub("Acc", "Accelerometer", features[,2])
features[,2] = gsub("Gyro", "Gyroscope", features[,2])
features[,2] = gsub("Mag", "Magnitude", features[,2])
features[,2] <-gsub("^t", "Time", features[,2])
features[,2] <-gsub("^f", "Frequency", features[,2])


#Add the features as coloumn names in the training and testing sets
names(x_train) <- features$V2
names(x_test) <- features$V2

#Add the column name "Activity" to the labels data
names(y_train) <- "Activity"
names(y_test) <- "Activity"

#Merge the two data sets
#First combine the data with the subject and the activity labels.
train <- cbind(subject_train, y_train, x_train )
test <- cbind(subject_test, y_test, x_test)

#Next combinine both sets into one
traintest <- rbind(train, test)

#Remove from R environement data that is no longer needed
rm(features, subject_test, subject_train, test, train, x_test, 
   x_train, y_test, y_train)

#Extract only the measurements on the mean and standard deviation for each measurement, 
#making sure to still include Subject ID and Activity columns (1 and 2)
traintest <- traintest[,c(1,2,grep("Mean|Std", names(traintest), ignore.case=TRUE))]

#Convert the Activity character and then match it with the appropriate activity label
traintest$Activity <- as.character(traintest$Activity)
for (i in 1:6){
    traintest$Activity[traintest$Activity == i] <- as.character(activity_labels[i,2])
}

#Remove from R environement data that is no longer needed
rm(i, activity_labels)

#Use aggregate function to create the tidy data as a set of variables for each subject and activity. 
#10299 instances are split into 180 groups (30 subjects and 6 activies). 
#The data has 88 mean and standard deviation features averaged. 
tidydata <- aggregate(. ~ SubjectID + Activity, data=traintest, mean)
tidydata <- tidydata[order(tidydata$SubjectID, tidydata$Activity),]

#Output the resulting tidy data
write.table(tidydata, file = "TidyData.txt", row.names = FALSE, sep="\t")

#for testing
readtidy <- read.table("TidyData.txt", header = TRUE)

#Just for making codebook - delete before uploading
extract <- sort(names(readtidy))
write.table(extract, file = "extract.txt", row.names = FALSE, sep="\t")
