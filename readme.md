Welcome to the final course project for Coursera's Johns Hopkin's Getting and Cleaning Data.

## summarize assignment here, be sure to include a link to the original dataset site

#Scripts included in this repository
* getData.R
* run_analysis.R

##getData.R 
* downloads the zip file from the link provided in the course 
* extracts the zip file to a folder and renames that folder Data
* reads the csv files and saves each in a dataframe

##run_analysis.R
* runs getData.R
* merges the training and test data measurements and assigns the appropriate names to the variables using the data frame created from activity_labels.txt
* extracts only the data regarding the mean and standard deviation
* merges the training and test subject list and renames the sole variable 'Subject'
* merges the activity list for the training and test data and converts the numerical value to the appropriate string
* merges the subject list, activity list, and measurement dataframe into one dataframe
* adjusts variable names to better descriptive names and converts activity strings to lower case
* creates a final dataset that groups by subject and activity and averages the mean and std measurements and then adds the string "Average " to the begining of each measurement variable name
* writes the tidy dataset to the file tidy.txt

