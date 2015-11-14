# Getting and Cleaning Data Project Code Book

This codebook describes the data used and generated for the course project in the COursera/Johns Hopkins course, _Getting and Cleaning Data_

The data for the project were downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and unzipped into a subdirectory of project directory. The code book for that dataset is included in that archive as 'features_info.txt` and a description of the data set is in `README.txt`

The tidy data set is generated using the R script `run_analysis.R` and the output file is saved in a data file called tidy_data.txt

The first two columns are a vector of descriptive names for the activity (`activity`), and a numeric vector of human subjects (`subject').

The remaining columns are selected from the columns in the original data, containing the strings mean or std (not case-sensitive) and represent the means of these values, grouped by activity and subject.

Label                        | Label
---------------------------- | --------------------------------
activity                     |          subject
tBodyAcc-mean()-X            |         tBodyAcc-mean()-Y
tBodyAcc-mean()-Z          |          tGravityAcc-mean()-X
tGravityAcc-mean()-Y       |          tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X      |          tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z      |          tBodyGyro-mean()-X
tBodyGyro-mean()-Y         |          tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X     |          tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z     |          tBodyAccMag-mean()
tGravityAccMag-mean()      |          tBodyAccJerkMag-mean()
tBodyGyroMag-mean()        |          tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X          |          fBodyAcc-mean()-Y
fBodyAcc-mean()-Z          |          fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y      |          fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X      |          fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z       |         fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y    |       fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X            |       fBodyGyro-mean()-Y
fBodyGyro-mean()-Z           |        fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y       |        fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()           |        fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()   |        fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()      |        fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()  |        fBodyBodyGyroJerkMag-meanFreq()
angle(tBodyAccMean,gravity)  |        angle(tBodyAccJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean)   |  angle(tBodyGyroJerkMean,gravityMean)
angle(X,gravityMean)               |  angle(Y,gravityMean)
angle(Z,gravityMean)               |  tBodyAcc-std()-X
tBodyAcc-std()-Y                   |  tBodyAcc-std()-Z
tGravityAcc-std()-X                |  tGravityAcc-std()-Y
tGravityAcc-std()-Z                |  tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y               |  tBodyAccJerk-std()-Z
tBodyGyro-std()-X                  |  tBodyGyro-std()-Y
tBodyGyro-std()-Z                  |  tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y              |  tBodyGyroJerk-std()-Z
tBodyAccMag-std()                  |  tGravityAccMag-std()
tBodyAccJerkMag-std()              |  tBodyGyroMag-std()
tBodyGyroJerkMag-std()             |  fBodyAcc-std()-X
fBodyAcc-std()-Y                   |  fBodyAcc-std()-Z
fBodyAccJerk-std()-X               |  fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z               |  fBodyGyro-std()-X
fBodyGyro-std()-Y                  |  fBodyGyro-std()-Z
fBodyAccMag-std()                  |  fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()             |  fBodyBodyGyroJerkMag-std()
