CodeBook for the tidy dataset
=============================

Data source
-----------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Study design
-----------------
I refer you to the README and features_info.txt files in the original dataset to learn more about the feature selection for this dataset. And there you will find the follow description:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

For this derived dataset, these signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Codebook
-------------

The set of variables that were estimated (and kept for this assignment) from these signals are: 

* mean(): Mean value
* std(): Standard deviation

## Identifiers

* `subject` - The ID of the test subject
* `activity_label` - The type of activity performed when the corresponding measurements were taken

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## Measurements

Only the measurements on the mean and standard deviation were included in resulted data set.

The resulting variable names are of the following form: tbodyaccmeanx, which means the mean value of tBodyAcc-XYZ.

The values of measurements in the "tidy_dataset.txt" equals mean value on those measurements on each subject and on each activity.

* `tbodyaccmeanx`
* `tbodyaccmeany`
* `tbodyaccmeanz`
* `tbodyaccstdx`
* `tbodyaccstdy`
* `tbodyaccstdz`
* `tgravityaccmeanx`
* `tgravityaccmeany`
* `tgravityaccmeanz`
* `tgravityaccstdx`
* `tgravityaccstdy`
* `tgravityaccstdz`
* `tbodyaccjerkmeanx`
* `tbodyaccjerkmeany`
* `tbodyaccjerkmeanz`
* `tbodyaccjerkstdx`
* `tbodyaccjerkstdy`
* `tbodyaccjerkstdz`
* `tbodygyromeanx`
* `tbodygyromeany`
* `tbodygyromeanz`
* `tbodygyrostdx`
* `tbodygyrostdy`
* `tbodygyrostdz`
* `tbodygyrojerkmeanx`
* `tbodygyrojerkmeany`
* `tbodygyrojerkmeanz`
* `tbodygyrojerkstdx`
* `tbodygyrojerkstdy`
* `tbodygyrojerkstdz`
* `tbodyaccmagmean`
* `tbodyaccmagstd`
* `tgravityaccmagmean`
* `tgravityaccmagstd`
* `tbodyaccjerkmagmean`
* `tbodyaccjerkmagstd`
* `tbodygyromagmean`
* `tbodygyromagstd`
* `tbodygyrojerkmagmean`
* `tbodygyrojerkmagstd`
* `fbodyaccmeanx`
* `fbodyaccmeany`
* `fbodyaccmeanz`
* `fbodyaccstdx`
* `fbodyaccstdy`
* `fbodyaccstdz`
* `fbodyaccmeanfreqx`
* `fbodyaccmeanfreqy`
* `fbodyaccmeanfreqz`
* `fbodyaccjerkmeanx`
* `fbodyaccjerkmeany`
* `fbodyaccjerkmeanz`
* `fbodyaccjerkstdx`
* `fbodyaccjerkstdy`
* `fbodyaccjerkstdz`
* `fbodyaccjerkmeanfreqx`
* `fbodyaccjerkmeanfreqy`
* `fbodyaccjerkmeanfreqz`
* `fbodygyromeanx`
* `fbodygyromeany`
* `fbodygyromeanz`
* `fbodygyrostdx`
* `fbodygyrostdy`
* `fbodygyrostdz`
* `fbodygyromeanfreqx`
* `fbodygyromeanfreqy`
* `fbodygyromeanfreqz`
* `fbodyaccmagmean`
* `fbodyaccmagstd`
* `fbodyaccmagmeanfreq`
* `fbodybodyaccjerkmagmean`
* `fbodybodyaccjerkmagstd`
* `fbodybodyaccjerkmagmeanfreq`
* `fbodybodygyromagmean`
* `fbodybodygyromagstd`
* `fbodybodygyromagmeanfreq`
* `fbodybodygyrojerkmagmean`
* `fbodybodygyrojerkmagstd`
* `fbodybodygyrojerkmagmeanfreq`
* `angletbodyaccmean,gravity`
* `angletbodyaccjerkmean,gravitymean`
* `angletbodygyromean,gravitymean`
* `angletbodygyrojerkmean,gravitymean`
* `anglex,gravitymean`
* `angley,gravitymean`
* `anglez,gravitymean`

