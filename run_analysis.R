# Stephen Johnson, 2015

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Load librarys
library(dplyr)
library(plyr)
library(tidyr)
library(data.table)

# Set directories for source and output
datadir <- paste(getwd(), "UCI HAR Dataset", sep="/")
outputdir <- paste(getwd(), "", sep="/")
if (!file.exists(outputdir)) dir.create(outputdir)


# Read in metadata
features <- read.table(paste(datadir, "features.txt", sep="/")) # Use leter for column names
activity_labels <- read.table(paste(datadir, "activity_labels.txt", sep="/")) # use later to get descriptive activity names
names(activity_labels) <- c("code", "description") # Meaningful names to make code clearer

# Build a list of data files to load and dataset names
names <- list()
files <- list()
for (i in c("test", "train")) {
  filelist <- list.files(paste(datadir,  i, sep="/"), pattern = ".txt$", include.dirs = FALSE, full.names = TRUE)
  namelist <- list.files(paste(datadir,  i, sep="/"), pattern = ".txt$", include.dirs = FALSE, full.names = FALSE)
  files <- c(files, filelist)
  names <- c(names, namelist)
}
# Combine filenames and locations into a dataframe
datasources <- do.call(rbind.data.frame, Map('c', names, files))
names(datasources) <- c("name", "file")

    

# Read in files and name them appropriately from datasources dataframe from above
for (j in datasources$file) {
  df <- read.table(j)
  nam <- as.character(datasources$name[datasources$file==j])
  assign(nam, df)
} # This is the main data, but still in separate dataframes


# Add meaningful column names from features dataframe
# (FULFILS PART 4 OF PROJECT REQUIREMENTS)
names(X_test.txt) <- features$V2
names(X_train.txt) <- features$V2

# Add subject and activity information from subject_XXXX.txt dataframes
X_test.txt$subject <- subject_test.txt$V1
X_train.txt$subject <- subject_train.txt$V1
X_test.txt$activity <- y_test.txt$V1
X_train.txt$activity <- y_train.txt$V1

# Remove columns with duplicate names after manual check that we don't need them
#X_all <- X_all[, !duplicated(colnames(X_all))]
X_test.txt <- X_test.txt[, !duplicated(colnames(X_test.txt))]
X_train.txt <- X_train.txt[, !duplicated(colnames(X_train.txt))]

# Merge training and test sets (FULFILS PART 1 OF PROJECT REQUIREMENTS)
X_all <- X_train.txt %>% dplyr::bind_rows(X_test.txt)


# Extracts only the measurements on the mean and standard deviation for each measurement.
# (FULFILS PART 2 OF PROJECT REQUIREMENTS)
X_all <- X_all %>% dplyr::select(subject, activity, contains("mean"), contains("std"))

# Uses descriptive activity names to name the activities in the data set
# (FULFILS PART 3 OF PROJECT REQUIREMENTS)
X_all <-  merge(X_all, activity_labels, all=TRUE, by.x="activity", by.y="code")
X_all$activity <- NULL
colnames(X_all)[colnames(X_all)=="description"] <- "activity"
X_all <- X_all %>% dplyr::select(activity, subject, everything())

# Appropriately label the data set with descriptive variable names. 
# Already done above using features.txt. Made sense to do this first to allow removal of duplicate column names but lets tidy them a bit more
# (FULFILS PART 4 OF PROJECT REQUIREMENTS)

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# (FULFILS PART 5 OF PROJECT REQUIREMENTS)
X_all <- X_all %>% group_by(activity, subject)
X_summary <- X_all %>% dplyr::summarise_each(funs(mean))

# Save the output data
filename <- paste(outputdir, "tidy_data.txt", sep="/")
write.table(X_summary, filename, row.name=FALSE)

# Uncomment next line if you want to tidy up
# remove(i, namelist,names, files, nam, df, j, features, subject_test.txt, subject_train.txt, y_test.txt, y_train.txt, X_test.txt, X_train.txt, activity_labels, datasources, filelist)

