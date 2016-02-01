
Coursera: Getting and Cleaning Data Course Project Assignment
=============================================================

This is the README for the project assignment for the above named
Coursera MOOC.

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set.

A full description of the data used for the project is available at the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

To run the script:
- Download run_analysis.R from this repository.
- Check and reset, if necessary, the Working Directory (see the "setwd" command) used in the script
- Run the script run_analysis.R. It should produce an output file tidy_data.txt.


The script runs as follows:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  This tidy data set is written to a file tidy_data.txt, in the current working directory

