#Getting and Cleaning Data

The script `run_analsis.R` performs the actions required by the class project for the Coursera/Johns Hopkings MOOC, _Getting and Cleaning Data_

See `CodeBook.md` for details of the source data and a description of the output.

Output data is included for reference. See `tidy_data.txt`

`run_analsis.R` performs the following steps (assuming that the data is already unzipped into a subdirectory)

1.  Read in metadata and datasets 
1.  Add meaningful column names to data from features.txt and add subject and activity columns from subject_XXXX.txt dataframes (FULFILS PART 1 OF PROJECT REQUIREMENTS)
1.  Remove columns with duplicate names after manual check that we don't need them
1.  Merge training and test sets (FULFILS PART 1 OF PROJECT REQUIREMENTS)
1.  Extract only the measurements on the mean and standard deviation for each measurement (FULFILS PART 2 OF PROJECT REQUIREMENTS)
1.  Use descriptive activity names to name the activities in the merged data set from activity_labels.txt (FULFILS PART 3 OF PROJECT REQUIREMENTS)
1.  Create a second, independent tidy data set with the average of each variable for each activity and each subject (FULFILS PART 5 OF PROJECT REQUIREMENTS) and save as tidy_data.txt
