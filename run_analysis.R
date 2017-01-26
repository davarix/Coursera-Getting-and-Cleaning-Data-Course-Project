setwd("/Users/dariagan/Documents/COURSERA/cleaning-data/HAR/download-raw/")
rm(list = ls())

# Load all necessary packages

library(dplyr)

# Check whether the data is present in the current work directory

data.dir.name <- "UCI HAR Dataset"
files <- list.files()
if (data.dir.name %in% files == TRUE) {
        files.path <- list.files(pattern = ".txt$", recursive = TRUE)
        fns <- file.path(getwd(), files.path)
        list2env(setNames(lapply(fns, read.table, fill = TRUE), basename(tools::file_path_sans_ext(fns))), globalenv())
        
} else {
        filename <- "getdata_dataset.zip"
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, filename, method="curl")
        unzip(filename)
        files.path <- list.files(pattern = ".txt$", recursive = TRUE)
        fns <- file.path(getwd(), files.path)
        list2env(setNames(lapply(fns, read.table, fill = TRUE), basename(tools::file_path_sans_ext(fns))), globalenv())
}

# Check whether all required data sets were loaded into R

data.to.load <- c("activity_labels", "features", "subject_test", "subject_train", "X_test", "X_train", "y_test", "y_train")
variables <- ls()
cond <- data.to.load %in% variables
if (all(cond) == FALSE) {
        stop("Error loading data into R")
}

# Merges the training and the test sets to create one data set.
	
	## merges both data sets into one dataset

xdata <- tbl_df(rbind(X_test, X_train))

# Extracts only the measurements on the mean and standard deviation for each measurement.

	## Load data on data labels in dplyr

testnames <- tbl_df(features)

	## Name the resulting dataframe

colnames(testnames) <- c("n", "testname")

	## Selecting labels with mean and std measurements 
testnames_meanstd <- filter(testnames, grepl(".*[Mm]ean.*|.*[Ss]td.*", testname))

        ## Renaming the measurement labels
testnames_meanstd.names <- testnames_meanstd$testname
testnames_meanstd.names <- gsub("-mean", "Mean", testnames_meanstd.names)
testnames_meanstd.names <- gsub("-std", "Std", testnames_meanstd.names)
testnames_meanstd.names <- gsub("[()-]", "", testnames_meanstd.names)
testnames_meanstd.names <- tolower(testnames_meanstd.names)

	## Creating a vector with # of columns to select in xdata
select_col <- as.numeric(testnames_meanstd$n)

	## Selecting those columns from xdata
colnames(xdata) <- sprintf("x%d", 1:ncol(xdata))
xdatasel <- select(xdata, num_range("x", select_col))

	## Renaming the xdatasel dataframe to original variable names

rename_col <- as.vector(testnames_meanstd.names)
colnames(xdatasel) <- rename_col

#Uses descriptive activity names to name the activities in the data set

activity <- rbind(y_test, y_train)
colnames(activity) <- c("activity_id")
activity$id<-seq.int(nrow(activity))

	## Name activity_labels data frame

colnames(activity_labels) <- c("activity_id", "activity_name")

	## Merge activity data and activity labels

activity2 <- merge(activity, activity_labels, by="activity_id", all = TRUE, sort = FALSE)
activity3 <- tbl_df(activity2)
activity3 <- arrange(activity2, id)
activity_label <- activity3$activity_name

	# Merge subject_test and subject_train

subject <- rbind(subject_test, subject_train)
colnames(subject) <- c("subject")


# Appropriately labels the data set with descriptive variable names.

final_dataset <- cbind(subject, activity_label, xdatasel)

# From the final data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

by_act_sub <- group_by(final_dataset, subject, activity_label)
tidy_groupped <- summarise_each(by_act_sub, funs(mean))

# Output in the current working directory

output <- file.path(getwd(), "tidy_dataset.txt")
write.table(tidy_groupped, output, row.names = FALSE)





