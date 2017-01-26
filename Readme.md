Getting and Cleaning Data: Course Project
=========================================

Introduction
------------
This is the course project for the Getting and Cleaning Data Coursera course.

About the raw data
------------------

The features (561 of them) are unlabeled and can be found in the x_test.txt. 
The activity labels are in the y_test.txt file.
The test subjects are in the subject_test.txt file.

The same holds for the training set.

About the script and the tidy dataset
-------------------------------------
I created a script called run_analysis.R which will merge the test and training sets together.

Prerequisites for this script:

1. The package dplyr needs to be installed to run the script
2. If the data is not present in the working directory, the script downloads and unzips the data to the current working directory.

The R script, `run_analysis.R`, does the following:

1. Downloads the dataset if it does not exist in the working directory
2. Loads all ".txt" files into R with file names as variables names
3. Checks whether all needed data sets were loaded
4. Merges the training and the test sets to create one data set.
5. With dplyr package extracts only the measurements on the mean and standard deviation for each measurement.
6. Formats measurement names
7. Merges the training and the test sets on activity and subjects
8. Applies descriptive activity names to name the activities in the data set
9. Append activity label and subject data to the data set
10. Creates a tidy data set with the average of each variable for each activity and each subject.
11. Saves the end result in the "tidy_dataset.txt"

About the Code Book
-------------------
The CodeBook.md file explains the transformations performed and the resulting data and variables.

