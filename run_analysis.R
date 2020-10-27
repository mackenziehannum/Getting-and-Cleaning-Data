#############################
## load necessary packages ##
#############################

library(tidyverse)
library(stringr)

###############
## Load data ##
###############

# load features and activity labels data
features <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/features.txt", quote="\"", comment.char="")
features # check work
str(features) # check work
activity_label <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="")
View(activity_label) # check work

# load training data set
train_df <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
train_labels <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/train/Y_train.txt", quote="\"", comment.char="")
train_subjects <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")

## check training values
str(train_df)
str(train_labels)
table(train_labels)
head(train_subjects)
dim(train_subjects)
table(train_subjects)

## rename columns of all data sets so easier to follow along later
colnames(train_df) = features[,2]
str(train_df) # check work
colnames(train_labels) = "activity"
str(train_labels) # check work
colnames(train_subjects) = "subject"
str(train_subjects) # check work


# load test data set
test_df <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
test_labels <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/test/Y_test.txt", quote="\"", comment.char="")
test_subjects <- read.table("G:/My Drive/Coursera/datasciencecoursera/UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")

## check test data values
str(test_labels)
table(test_labels)
str(test_df)
head(test_subjects)
dim(test_subjects)
table(test_subjects)

## rename columns of all data sets so easier to follow along later
colnames(test_df) = features[,2]
str(test_df) # check work
colnames(test_labels) = "activity"
str(test_labels) # check work
colnames(test_subjects) = "subject"
str(test_subjects) # check work

##################################################################
## Merges the training and the test sets to create one data set.##
##################################################################

### Merge training set together (df, labels, subjects)
train <- cbind(train_subjects, train_labels, train_df)
str(train) # check work
### Merge test set together (df, labels, subjects)
test <- cbind(test_subjects, test_labels, test_df)
str(test) # check work
# Merge training and test set together
data <- rbind(train, test)
str(data) # check work

############################################################################################
## Extracts only the measurements on the mean and standard deviation for each measurement.##
############################################################################################

# create a vector of the column names
col_names <- colnames(data)
# find the variables that have a mean or std 
mean_std_var <- grepl("mean", col_names, ignore.case = TRUE) | grepl("std", col_names, ignore.case = TRUE)
# add subject and activity back into the vector
mean_std_var[1:2] <- TRUE

# check work
mean_std_var
col_names[mean_std_var]

# extract only the measurements on the mean and the standard deviation for each measurement
data_mean_std <- data[,mean_std_var]
# check work
str(data_mean_std)

############################################################################ 
## Uses descriptive activity names to name the activities in the data set ##
############################################################################

data_mean_std$activity <- factor(data_mean_std$activity, labels = activity_label$V2)
str(data_mean_std$activity) # check work

#######################################################################
## Appropriately labels the data set with descriptive variable names.##
#######################################################################

names(data_mean_std)<-gsub("^t", "time", names(data_mean_std))
names(data_mean_std)<-gsub("^f", "frequency", names(data_mean_std))
names(data_mean_std)<-gsub("Acc", "Accelerometer", names(data_mean_std))
names(data_mean_std)<-gsub("Gyro", "Gyroscope", names(data_mean_std))
names(data_mean_std)<-gsub("Mag", "Magnitude", names(data_mean_std))
names(data_mean_std)<-gsub("BodyBody", "Body", names(data_mean_std))

##############################################################################
## From the data set in step 4, creates a second, independent tidy data set ##
## with the average of each variable for each activity and each subject. #####
##############################################################################

data_tidy <- aggregate(. ~subject + activity, data_mean_std, mean)
head(data_tidy) # check to see if the previous code worked is correct
write.table(data_tidy, "Subject_activity_averages.txt", row.name=FALSE)
