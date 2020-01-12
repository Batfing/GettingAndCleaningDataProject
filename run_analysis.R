#
# You should create one R script called run_analysis.R that does the following:
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
#

#
# Directory structure of given data
#
# 'UCI HAR Dataset'
# ├── activity_labels.txt
# ├── features_info.txt
# ├── features.txt
# ├── README.txt
# ├── test
# │   ├── Inertial Signals
# │   │   ├── body_acc_x_test.txt
# │   │   ├── body_acc_y_test.txt
# │   │   ├── body_acc_z_test.txt
# │   │   ├── body_gyro_x_test.txt
# │   │   ├── body_gyro_y_test.txt
# │   │   ├── body_gyro_z_test.txt
# │   │   ├── total_acc_x_test.txt
# │   │   ├── total_acc_y_test.txt
# │   │   └── total_acc_z_test.txt
# │   ├── subject_test.txt
# │   ├── X_test.txt
# │   └── y_test.txt
# └── train
#     ├── Inertial Signals
#     │   ├── body_acc_x_train.txt
#     │   ├── body_acc_y_train.txt
#     │   ├── body_acc_z_train.txt
#     │   ├── body_gyro_x_train.txt
#     │   ├── body_gyro_y_train.txt
#     │   ├── body_gyro_z_train.txt
#     │   ├── total_acc_x_train.txt
#     │   ├── total_acc_y_train.txt
#     │   └── total_acc_z_train.txt
#     ├── subject_train.txt
#     ├── X_train.txt
#     └── y_train.txt
# 
# 4 directories, 28 files
# 

library(dplyr)

#
# 1. Merges the training and the test sets to create one data set.
#
# 1.1. Read the data
#
activities    <- read.table( "UCI HAR Dataset/activity_labels.txt" )
features      <- read.table( "UCI HAR Dataset/features.txt" )
subject_test  <- read.table( "UCI HAR Dataset/test/subject_test.txt" )
X_test        <- read.table( "UCI HAR Dataset/test/X_test.txt" )
y_test        <- read.table( "UCI HAR Dataset/test/y_test.txt" )
subject_train <- read.table( "UCI HAR Dataset/train/subject_train.txt" )
X_train       <- read.table( "UCI HAR Dataset/train/X_train.txt" )
y_train       <- read.table( "UCI HAR Dataset/train/y_train.txt" )
#
# 1.2. Asigning names to columns
#  
names(subject_train) <- "id_key"
names(X_train)       <- features$V2
names(y_train)       <- "activity"
#print(" ! c")
names(subject_test)  <- "id_key"
#print(" ! d")
names(X_test)        <- features$V2
#print(" ! e")
names(y_test)        <- "activity"
#
# 1.3. Merging the data into a data set
#  
data_set   <- rbind( cbind( subject_train, y_train, X_train ),
                     cbind( subject_test,  y_test,  X_test  )  )
#
# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement.
#
# 2.1. selecting columns by type
selected  <- c(grep("(id_key|activity)",names(data_set)),
	       grep("(mean|std)\\(\\)",names(data_set)) )
# 2.2. extracting selected columns
data_set <- data_set[,selected]

#
# 3. Uses descriptive activity names to name the activities in the data set
#
data_set$activity <- factor( data_set$activity, labels=activities$V2 )

#
# 4. Appropriately labels the data set with descriptive variable names.
#
names(data_set) <- gsub( "^t", "Time",      names(data_set) )
names(data_set) <- gsub( "^f", "Frequency", names(data_set) )
names(data_set) <- gsub("-mean\\(\\)", "Mean", names(data_set))
names(data_set) <- gsub("-std\\(\\)", "StdDev", names(data_set))
names(data_set) <- gsub("-", "", names(data_set))
names(data_set) <- gsub( "^id_key",   "Subject",  names(data_set) )
names(data_set) <- gsub( "^activity", "Activity", names(data_set) )

#
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
#
grouped_data <- group_by(data_set, Subject, Activity)
summary_data <- summarise_each(grouped_data, funs(mean))
write.table(summary_data, 'tidy_data_set.txt', row.names = FALSE)
