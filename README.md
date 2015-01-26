==================================================================
This repository contains the work for the course project of “Getting and Cleaning data". 
This README.md file explains how all of the work function and are connected.
==================================================================

The raw data
Source dataset come from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

==================================================================

The script
The R script “run_analysis.R” does the following:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

==================================================================

Tidy dataset
 A tidy dataset was created by running “run_analysis.R”, and was then saved as “tidy.txt” file created with write.table() using row.names=FALSE.
 Descriptions about the tidy dataset is in the Code Book.
 
==================================================================

Code Book
The “CodeBook.md” describes the variables in the tidy dataset.

==================================================================

Running condition
- Windows 7
- R i386 version 3.0.0
- Assumes the dataset is unzipped in the current working directory (./UCI HAR Dataset)
- Requires the reshape2 packages
