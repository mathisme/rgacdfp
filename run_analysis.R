library(dplyr)
library(stringr)

source('getData.R')

## merges the training and test data and assigns the appropriate names to the variables
activityData <- rbind(xTrain, xTest)
names(activityData) <- features$V2

## extract only data regarding mean and standard deviation

containsMean <- sapply(names(activityData), str_detect, "mean\\(\\)") 
containsSTD <- sapply(names(activityData), str_detect, "std\\(\\)")
activityData <- activityData[,containsMean|containsSTD]

## merges the training and test subject list and renames the sole variable 'Subject'
subjectData <- rbind(subjectTest, subjectTrain)
names(subjectData) <- "Subject"

## merges the activity list for the training and test data
##      and converts the numerical value to the appropriate string
activityPerformed <- rbind(yTest, yTrain)
names(activityPerformed) <- "Activity"
activityPerformed$Activity <- factor(activityPerformed$Activity,levels=activityLabels$Activity_ID, 
                                     labels = activityLabels$Activity)
 

## combines datasets into one dataset
activityDataset <- cbind(subjectData, activityPerformed, activityData)

## changing the activities listed to lower case
## may want to move this up 
activityDataset$Activity <- sapply(activityDataset$Activity, tolower)


## need to create better variable names

## create a final dataset that groups by subject and activity and averages the 
##     mean and std measurements
summaryDataset <- activityDataset %>% group_by(Subject, Activity) %>% summarise_all(mean)

## adjust the data names to start with Average
x<-names(summaryDataset)[3:length(names(summaryDataset))]
names(summaryDataset)[3:length(names(summaryDataset))] <- paste("Average",x,sep=" ")

## writes the summaryDataset to the file 'tidy.txt'
write.table(summaryDataset, file =  "tidy.txt", quote = F, row.names = F)