
if(!file.exists("Data/README.txt")){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile = 'dataset.zip', mode = 'wb')
  unzip("dataset.zip")
  file.rename("UCI HAR Dataset","Data")
  file.remove("dataset.zip")
}

if(!("activityLabels" %in% ls())){
  activityLabels <- read.table("./Data/activity_labels.txt", sep=" ")
  names(activityLabels) <- c("Activity_ID","Activity")
}

if(!("features" %in% ls())){
  features <- read.table("./Data/features.txt", sep=" ")
}

if(!("subjectTest" %in% ls())){
  subjectTest <- read.table("./Data/test/subject_test.txt", sep=" ")
}

if(!("xTest" %in% ls())){
  xTest <- read.table("./Data/test/X_test.txt")
}

if(!("yTest" %in% ls())){
  yTest <- read.table("./Data/test/y_test.txt", sep=" ")
}

if(!("subjectTrain" %in% ls())){
  subjectTrain <- read.table("./Data/train/subject_train.txt", sep=" ")
}

if(!("xTrain" %in% ls())){
  xTrain <- read.table("./Data/train/X_train.txt")
}

if(!("yTrain" %in% ls())){
  yTrain <- read.table("./Data/train/y_train.txt", sep=" ")
}

