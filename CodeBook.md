
Purpose:
========
The purpose of this repository is to produce a script that will collect, work with, and clean a data set. 

The data were obtained from a group of 30 volunteers within an age bracket of 19-48 years. Each person 
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing 
a smartphone (Samsung Galaxy S II) on the waist. The data set represents a set of observations from 
from the Samsung Galaxy S accelerometers while performing the activities.

The data set contains mean data for a list of Accelerometer Variables Names (see "Variable List" below), 
grouped by Subject ID, and Activity type.


Transformations:
================
- The source data set was separated into training and the test sets. Merge these to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement.
- Use descriptive activity names to name the activities in the data set
- Appropriately label the data set with descriptive variable names.
- From the data set in step 4, create a second, independent tidy data set with the average of each variable 
for each activity and each subject.


Variables / Feature Selection:
==============================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ 
and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency 
of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration 
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using 
the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation



Variable List:
==============
The following is the list of Accelerometer Data Variable Names provided in the Tidy Data Set:

-TimeBodyAccumMean()Y
-TimeBodyAccumMean()Z
-TimeGravityAccumMean()X
-TimeGravityAccumMean()Y
-TimeGravityAccumMean()Z
-TimeBodyAccumJerkMean()X
-TimeBodyAccumJerkMean()Y
-TimeBodyAccumJerkMean()Z
-TimeBodyGyroMean()X
-TimeBodyGyroMean()Y
-TimeBodyGyroMean()Z
-TimeBodyGyroJerkMean()X
-TimeBodyGyroJerkMean()Y
-TimeBodyGyroJerkMean()Z
-TimeBodyAccumMagMean()
-TimeGravityAccumMagMean()
-TimeBodyAccumJerkMagMean()
-TimeBodyGyroMagMean()
-TimeBodyGyroJerkMagMean()
-FrequencyBodyAccumMean()X
-FrequencyBodyAccumMean()Y
-FrequencyBodyAccumMean()Z
-FrequencyBodyAccumMeanFreq()X
-FrequencyBodyAccumMeanFreq()Y
-FrequencyBodyAccumMeanFreq()Z
-FrequencyBodyAccumJerkMean()X
-FrequencyBodyAccumJerkMean()Y
-FrequencyBodyAccumJerkMean()Z
-FrequencyBodyAccumJerkMeanFreq()X
-FrequencyBodyAccumJerkMeanFreq()Y
-FrequencyBodyAccumJerkMeanFreq()Z
-FrequencyBodyGyroMean()X
-FrequencyBodyGyroMean()Y
-FrequencyBodyGyroMean()Z
-FrequencyBodyGyroMeanFreq()X
-FrequencyBodyGyroMeanFreq()Y
-FrequencyBodyGyroMeanFreq()Z
-FrequencyBodyAccumMagMean()
-FrequencyBodyAccumMagMeanFreq()
-FrequencyBodyAccumJerkMagMean()
-FrequencyBodyAccumJerkMagMeanFreq()
-FrequencyBodyGyroMagMean()
-FrequencyBodyGyroMagMeanFreq()
-FrequencyBodyGyroJerkMagMean()
-FrequencyBodyGyroJerkMagMeanFreq()
-angle(tBodyAccumMean,gravity)
-angle(tBodyAccumJerkMean),gravityMean)
-angle(tBodyGyroMean,gravityMean)
-angle(tBodyGyroJerkMean,gravityMean)
-angle(X,gravityMean)
-angle(Y,gravityMean)
-angle(Z,gravityMean)
-TimeBodyAccumStdDev()X
-TimeBodyAccumStdDev()Y
-TimeBodyAccumStdDev()Z
-TimeGravityAccumStdDev()X
-TimeGravityAccumStdDev()Y
-TimeGravityAccumStdDev()Z
-TimeBodyAccumJerkStdDev()X
-TimeBodyAccumJerkStdDev()Y
-TimeBodyAccumJerkStdDev()Z
-TimeBodyGyroStdDev()X
-TimeBodyGyroStdDev()Y
-TimeBodyGyroStdDev()Z
-TimeBodyGyroJerkStdDev()X
-TimeBodyGyroJerkStdDev()Y
-TimeBodyGyroJerkStdDev()Z
-TimeBodyAccumMagStdDev()
-TimeGravityAccumMagStdDev()
-TimeBodyAccumJerkMagStdDev()
-TimeBodyGyroMagStdDev()
-TimeBodyGyroJerkMagStdDev()
-FrequencyBodyAccumStdDev()X
-FrequencyBodyAccumStdDev()Y
-FrequencyBodyAccumStdDev()Z
-FrequencyBodyAccumJerkStdDev()X
-FrequencyBodyAccumJerkStdDev()Y
-FrequencyBodyAccumJerkStdDev()Z
-FrequencyBodyGyroStdDev()X
-FrequencyBodyGyroStdDev()Y
-FrequencyBodyGyroStdDev()Z
-FrequencyBodyAccumMagStdDev()
-FrequencyBodyAccumJerkMagStdDev()
-FrequencyBodyGyroMagStdDev()
-FrequencyBodyGyroJerkMagStdDev()


Data Set
========
A full description of the data used for this project is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data set for this project was obtained at this link
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


License:
========
Use of the dataset referred above in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.