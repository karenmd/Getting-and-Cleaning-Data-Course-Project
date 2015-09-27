setwd("D:/Karen/Data Analytics/Data Science Coursera/Getting and Cleaning Data/Assignment data/UCI HAR Dataset")

#1. Merges the training and the test sets to create one data set

#Read the training data files in
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

#Read the testing data files in
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

#Add column name "SubjectID" to the subject files
names(subject_train) <- "SubjectID"
names(subject_test) <- "SubjectID"

#Add the column name "Activity" to the labels data
names(y_train) <- "Activity"
names(y_test) <- "Activity"

#Read the features data file in
features <- read.table("features.txt")

#Add the features as coloumn names
names(x_train) <- features$V2
names(x_test) <- features$V2

#Merge the two data sets
#First combine the data with the subject and the activity labels.
train <- cbind(subject_train, y_train, x_train )
test <- cbind(subject_test, y_test, x_test)

#Next combinine both sets into one
mergeddata <- rbind(train, test)

#Remove from R environement data that is no longer needed
rm(subject_test, subject_train, test, train, x_test, 
   x_train, y_test, y_train, features)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.

#Extract only the measurements on the mean and standard deviation for each measurement, 
#making sure to still include Subject ID and Activity columns (1 and 2)
mergeddata <- mergeddata[,c(1,2,grep("-mean()|-std()", names(mergeddata), ignore.case=TRUE))]

#3. Uses descriptive activity names to name the activities in the data set

#Read the activity labels data file in
activity_labels <- read.table("activity_labels.txt")

#Convert the Activity character and then match it with the appropriate activity label
mergeddata$Activity <- as.character(mergeddata$Activity)
for (i in 1:6){
    mergeddata$Activity[mergeddata$Activity == i] <- as.character(activity_labels[i,2])
}

#Remove from R environement data that is no longer needed
rm(i, activity_labels)

#4. Appropriately labels the data set with descriptive variable names. 

#Label the features with descriptive variable names
names(mergeddata) <- gsub('-mean', 'Mean', names(mergeddata))
names(mergeddata) <- gsub('-std', 'Std', names(mergeddata))
names(mergeddata) <- gsub('[-()]', '', names(mergeddata))
names(mergeddata) <- gsub('Acc', "Accelerometer", names(mergeddata))
names(mergeddata) <- gsub('BodyBody', "Body", names(mergeddata))
names(mergeddata) <- gsub('Freq', "Frequency", names(mergeddata))
names(mergeddata) <- gsub('Gyro', "Gyroscope", names(mergeddata))
names(mergeddata) <- gsub('Mag', "Magnitude", names(mergeddata))
names(mergeddata) <- gsub('^t', "TimeDomain_", names(mergeddata))
names(mergeddata) <- gsub('^f', "FrequencyDomain_", names(mergeddata))

#5. From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

#Use aggregate function to create the tidy data as a set of variables for each subject and activity. 
#10299 instances are split into 180 groups (30 subjects and 6 activies). 
#The data has 88 mean and standard deviation features averaged. 
tidydata <- aggregate(. ~ SubjectID + Activity, data=mergeddata, mean)
tidydata <- tidydata[order(tidydata$SubjectID, tidydata$Activity),]

#Output the resulting tidy data
write.table(tidydata, file = "TidyData.txt", row.names = FALSE, sep="\t")

#for testing
readtidy <- read.table("TidyData.txt", header = TRUE)

#Just for making codebook - delete before uploading
extract <- names(readtidy)
write.table(extract, file = "extract.txt", row.names = FALSE, sep="\t")
