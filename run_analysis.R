# run_analysis.R. This script will perform the 5 steps listed below:
# 1 Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for 
#    each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data 
#    set with the average of each variable for each activity and each subject.

# Initialisation: Set up environment. Identify and download test 
# data set, then validate work:

################
# Initialisation
################

setwd("C:/Tech/Coursera/GettingCleaningData")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./Dataset.zip",method="internal")
unzip(zipfile="./Dataset.zip",exdir=".")

library(dplyr)

###############
# Preprocessing
###############

# Training Data
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Test Data
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Read list of all Features
features <- read.table("./UCI HAR Dataset/features.txt")
feature_names <- features[,2]

# Read Activity Labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Set Column Names for the lists of Subject IDs, Label IDs, and Activities
colnames(activity_labels) <- c("Activity ID", "Activity")

train_subjects <- rename(train_subjects, Subject_ID=V1)
test_subjects <- rename(test_subjects, Subject_ID=V1)

train_labels <- rename(train_labels, Activity_ID=V1)
test_labels <- rename(test_labels, Activity_ID=V1)

# Set Column Names for the test/training data frames
colnames(train_data)<- feature_names
colnames(test_data)<- feature_names

# We can now add Subjects and Activity IDs, with correct column names
train_data_full <- cbind(cbind(train_data, train_subjects),train_labels)
test_data_full <- cbind(cbind(test_data, test_subjects),test_labels)


#################
# Main Processing
#################

# 1. Merge the training and test sets to create one data set. It's effectively a
# concatenate operation so we can use rbind
merged_data <- rbind(train_data_full, test_data_full)

# 2. Extract only the measurements on the mean and standard deviation for 
#    each measurement.

# Column Names which contain "Mean" or "Std", and the Activity and Subject IDs
target_cols <- names(merged_data[, -1] %>% select (contains("Mean"), contains("std"), contains("Subject_ID"),  contains("Activity_ID")))

# This will reduce the DF to only those columns we need
merged_data <- merged_data [, c(target_cols)]

# 3. Use descriptive activity names to name the activities in the data set
merged_data <- merge(merged_data,activity_labels)


# 4. Appropriately label the data set with descriptive variable names. 

# We have the variables names as provided. Apply some transformations to make
# them more readable. Need to strike a balance versus making them too long either
names(merged_data) <- gsub("^t", "Time", names(merged_data))
names(merged_data) <- gsub("^f", "Frequency", names(merged_data))
names(merged_data) <- gsub("Acc", "Accum", names(merged_data))
names(merged_data) <- gsub("mean", "Mean", names(merged_data))
names(merged_data) <- gsub("std", "StdDev", names(merged_data))
names(merged_data) <- gsub("BodyBody", "Body", names(merged_data))
names(merged_data) <- gsub("-", "", names(merged_data))


# 5. From the data set in step 4, creates a second, independent tidy data 
#    set with the average of each variable for each activity and each subject.

merged_data %>%
  group_by(Subject_ID, Activity) %>%
  summarise_each(funs(mean)) %>%
  write.table("./tidy_data.txt",row.names=FALSE)
