## library(dplyr)
## library(tidyr)
source('getData.R')

## Merges the training and the test sets to create one data set.
## also renames the variable names and replaces the activity value with the activity label
activityData <- rbind(xTrain, xTest)
names(activityData) <- features$V2
subjectData <- rbind(subjectTest, subjectTrain)
names(subjectData) <- "Subject"
activityPerformed <- rbind(yTest, yTrain)
names(activityPerformed) <- "Activity"
activityPerformed$Activity <- factor(activityPerformed$Activity,levels=activityLabels$Activity_ID, 
                                     labels = activityLabels$Activity)
activityDataset <- cbind(subjectData, activityPerformed, activityData)

## Extracts only the measurements on the mean and standard deviation for each measurement.



## From the data set above, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
## not sure if I want to keep seperate means and standard deviations or put them into a long
##    dataset