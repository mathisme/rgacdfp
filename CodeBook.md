# Codebook for the summaryDataset in tidy.txt
After merging all test and training sets, extracting measures on mean and standard deviations, and merging the subject, activity, and measurements datasets, summaryDataset was createdGrouping the data frame by subject and activity and then taking a summary of the means of the measured data
Afterwords the word 'Average ' was added to the beginning of the variable names for the measured variables.

## Description of variables
* Subject -- an integer from 1 to 30 that identifies one of the thrity subjects
* Activity -- the activity the subject was performing at the time of the recording.
Activities have the following labeled values
1. walking
2. walking_upstairs
3. walking_downstairs
4. sitting
5. standing
6. laying
* For a description of the measured data please see the original codebook [features_info.txt](https://github.com/mathisme/rgacdfp/blob/master/Data/features_info.txt)

## Adjustment to original variable names for the measured data
The list of original variables can be found [here](https://github.com/mathisme/rgacdfp/blob/master/Data/features.txt)

To make the variable names more readable, the following steps were completed
* 't' was replaced with 'time' for all variables with names starting with t
* 'f' was replaced with 'frequency' for all variables starting with 'f'
* parenthasis were removed from variable names
* for the one dimensional measurements the hyphen before the 'X', 'Y' or 'Z' was replaced by a period


| Variable Name | Variable Type |
| ----- | ----- |
| Subject | integer |
| Activity | character |
| Average timeBodyAcc-mean.X | double |
| Average timeBodyAcc-mean.Y | double | 
| Average timeBodyAcc-mean.Z | double |
| Average timeBodyAcc-std.X | double |
| Average timeBodyAcc-std.Y | double |
| Average timeBodyAcc-std.Z | double |
| Average timeGravityAcc-mean.X | double |
| Average timeGravityAcc-mean.Y | double |
| Average timeGravityAcc-mean.Z | double |
| Average timeGravityAcc-std.X | double |
| Average timeGravityAcc-std.Y | double |
| Average timeGravityAcc-std.Z | double |
| Average timeBodyAccJerk-mean.X | double |
| Average timeBodyAccJerk-mean.Y | double |
| Average timeBodyAccJerk-mean.Z | double |
| Average timeBodyAccJerk-std.X | double |
| Average timeBodyAccJerk-std.Y | double |
| Average timeBodyAccJerk-std.Z | double |
| Average timeBodyGyro-mean.X | double |
| Average timeBodyGyro-mean.Y | double |
| Average timeBodyGyro-mean.Z | double |
| Average timeBodyGyro-std.X | double |
| Average timeBodyGyro-std.Y | double |
| Average timeBodyGyro-std.Z | double |
| Average timeBodyGyroJerk-mean.X | double |
| Average timeBodyGyroJerk-mean.Y | double |
| Average timeBodyGyroJerk-mean.Z | double |
| Average timeBodyGyroJerk-std.X | double |
| Average timeBodyGyroJerk-std.Y | double |
| Average timeBodyGyroJerk-std.Z | double |
| Average timeBodyAccMag-mean | double |
| Average timeBodyAccMag-std | double |
| Average timeGravityAccMag-mean | double |
| Average timeGravityAccMag-std | double |
| Average timeBodyAccJerkMag-mean | double |
| Average timeBodyAccJerkMag-std | double |
| Average timeBodyGyroMag-mean | double |
| Average timeBodyGyroMag-std | double |
| Average timeBodyGyroJerkMag-mean | double |
| Average timeBodyGyroJerkMag-std | double |
| Average frequencyBodyAcc-mean.X | double |
| Average frequencyBodyAcc-mean.Y | double |
| Average frequencyBodyAcc-mean.Z | double |
| Average frequencyBodyAcc-std.X | double |
| Average frequencyBodyAcc-std.Y | double |
| Average frequencyBodyAcc-std.Z | double |
| Average frequencyBodyAccJerk-mean.X | double |
| Average frequencyBodyAccJerk-mean.Y | double |
| Average frequencyBodyAccJerk-mean.Z | double |
| Average frequencyBodyAccJerk-std.X | double |
| Average frequencyBodyAccJerk-std.Y | double |
| Average frequencyBodyAccJerk-std.Z | double |
| Average frequencyBodyGyro-mean.X | double |
| Average frequencyBodyGyro-mean.Y | double |
| Average frequencyBodyGyro-mean.Z | double |
| Average frequencyBodyGyro-std.X | double |
| Average frequencyBodyGyro-std.Y | double |
| Average frequencyBodyGyro-std.Z | double |
| Average frequencyBodyAccMag-mean | double |
| Average frequencyBodyAccMag-std | double |
| Average frequencyBodyBodyAccJerkMag-mean | double |
| Average frequencyBodyBodyAccJerkMag-std | double |
| Average frequencyBodyBodyGyroMag-mean | double |
| Average frequencyBodyBodyGyroMag-std | double |
| Average frequencyBodyBodyGyroJerkMag-mean | double |
| Average frequencyBodyBodyGyroJerkMag-std | double |


