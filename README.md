# Getting and Cleaning Data
## Course Project for Getting and Cleaning Data

# Overview
This file explains the steps required for preparing and executing the run_analysis.R script.

# Preparation

1. Create a new directory to store all the source files and the run_analysis.R script.
2. Download the source data at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip in the directory created in step 1. The zip file will extract a directory named "UCI HAR Dataset"
3. Copy the file, run_analysis.R, into the directory created in step 1.
4. Execute run_analysis.R.

# Instruction List

## Input
- train/X_train.txt - train results
- train/y_train.txt - train labels
- train/subject_train.txt - train subjects
- test/X_test.txt - test results
- test/y_test.txt - test labels
- test/subject_test.txt - test subjects
- features.txt - variables from experiment
- activity_labels - descriptions of activities

## Output
- tidy_data: Dataset containing tidy data representation of original data.

## Script Steps

1. **Merge the training and the test sets to create one data set.** Bind all the columns from X_train, y_train and subject_train.txt. Then bind all columns from X_test, y_test and subject_test datasets. Bind the rows of both of the train and test data sets. Note: column names were changed to identify the subject and activity_id.
2. **Extracts only the measurements on the mean and standard deviation for each measurement.** Load the features data set. Use grep to only include mean() and std() measures. Filter columns from merged (step 1) dataset to only include subject, activity_id and the mean() and std() columns.
3. **Use descriptive activity names to name the activities in the data set.** Load the activity_labels dataset. Join the activity_id in the merged dataset to add descriptive activity column to the merged dataset.
4. **Appropriately labels the data set with descriptive variable names.** Take the included_measures. Use sub/gsub functions to eliminate parenthesis and change dashes to underscores. Update the associated columns in the main data set to these modified values.
5. **From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.** Use dplyr functions select (to select desired columns), group by (to group by activity and subject), and summarise_each (to apply mean function to each group). Add _avg to all the field columns so that it is known that the result is an average of the groups field values.
6. Finally, print the tidy_data data set to display the output.

