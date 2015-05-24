###############################################################################
# Dependencies
# 1. dplyr package
#
#   install.packages("dplyr")
library(dplyr)
# 2. Data downloaded and unzipped folder in same directory as this script from:
# 
#    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
###############################################################################
setwd("UCI HAR Dataset")

#------------------------------------------------------------------------------
# 1. Merges the training and the test sets to create one data set.
#------------------------------------------------------------------------------

# read Train Data
train_data <- read.table("train/X_train.txt")
train_labels <- read.table("train/y_train.txt")
colnames(train_labels) <- c("activity_id")
train_subjects <- read.table("train/subject_train.txt")
colnames(train_subjects) <- c("subject")
# combine label, subject and data columns for train data
train <- bind_cols(train_labels, train_subjects, train_data)
# clean up
rm(train_labels, train_subjects, train_data)

# read Test Data
test_data <- read.table("test/X_test.txt")
test_labels <- read.table("test/y_test.txt")
colnames(test_labels) <- c("activity_id")
test_subjects <- read.table("test/subject_test.txt")
colnames(test_subjects) <- c("subject")
# combine label, subject and data columns for test data
test <- bind_cols(test_labels, test_subjects, test_data)
# clean up
rm(test_labels, test_subjects, test_data)

#combine rows from train and test data
all_data <- tbl_df(bind_rows(train, test))
# clean up
rm(train, test)

#------------------------------------------------------------------------------
# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement. 
#------------------------------------------------------------------------------

# load features to use as basis for variable (column) names
features <- read.table("features.txt")
# include on measures that represent mean() or std()
included_measures <- features[grepl("mean\\(\\)|std\\(\\)", features$V2),]
# reduce data to include only measures that represent mean() or std()
all_data <- all_data[, c(1,2,included_measures$V1 + 2)]
# clean up
rm(features)


#------------------------------------------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data set
#------------------------------------------------------------------------------

# load activity labels
activity_labels <- read.table("activity_labels.txt")
# rename columns to make more descriptive
colnames(activity_labels) = c("activity_id", "activity")
#join activity labels to data (adds activity column to data)
all_data <- left_join(all_data, activity_labels)


#------------------------------------------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names. 
#------------------------------------------------------------------------------

# remove parenthesis
included_measures$V2 <- sub("\\(\\)", "", included_measures$V2)
# replace dashes with underscores
included_measures$V2 <- gsub("-", "_", included_measures$V2)
# set column names of variables from Vx to descriptive name
colnames(all_data)[3:(ncol(all_data) - 1)] = included_measures$V2
# clean up
rm(included_measures)
rm(activity_labels)


#------------------------------------------------------------------------------
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
#------------------------------------------------------------------------------

tidy_data <- all_data %>%
     select(activity, subject, tBodyAcc_mean_X:fBodyBodyGyroJerkMag_std) %>%
     group_by(activity, subject) %>%
     summarise_each(funs(mean))
colnames(tidy_data)[3:ncol(tidy_data)] <- paste0(colnames(tidy_data)[3:ncol(tidy_data)], "_avg")
rm(all_data)

#output data
print(tidy_data)

# Uncomment the following line to save the tidy data set to a file.
# write.table(tidy_data, "smartphone_tidy_data.txt", row.names = FALSE)
