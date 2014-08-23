## This script produces a tidy dataset fromthe dataset "Human Activity Recognition 
## Using Smartphones" Dataset Version 1.0 which can be found at:
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## This script merges together different sources of information, subsets to the 
## required features, provides meaningful names for the variables and summarizes
## the data.

## 1- Merge the training and the test sets  =============================================
ds_X_test   <- read.table(file="UCI HAR Dataset/test/X_test.txt", header=FALSE)
ds_y_test   <- read.table(file="UCI HAR Dataset/test/y_test.txt", header=FALSE)
ds_sub_test <- read.table(file="UCI HAR Dataset/test/subject_test.txt", header=FALSE)

names(ds_y_test) <- c("activity") 
names(ds_sub_test) <- c("subject")

# Join X, y and subject column-wise
ds_test <- cbind(ds_sub_test, ds_X_test, ds_y_test)
rm(ds_sub_test, ds_X_test, ds_y_test)

ds_X_train   <- read.table(file="UCI HAR Dataset/train/X_train.txt", header=FALSE)
ds_y_train   <- read.table(file="UCI HAR Dataset/train/y_train.txt", header=FALSE)
ds_sub_train <- read.table(file="UCI HAR Dataset/train/subject_train.txt", header=FALSE)

names(ds_y_train) <- c("activity")
names(ds_sub_train) <- c("subject")

# Join X, y and subject column-wise
ds_train <- cbind(ds_sub_train, ds_X_train, ds_y_train)
rm(ds_sub_train, ds_X_train, ds_y_train)

# Join training and test subsets row-wise
ds <- rbind(ds_test, ds_train)
rm(ds_test, ds_train)

## 2. Extract only the measurements on the mean and standard deviation ==================

# Get the variable names and search for those refering to the mean and std deviation
var_names <-read.table("UCI HAR Dataset/features.txt")
mean_std_column_numbers <- grep(pattern = "mean()|meanFreq()|std()", x = var_names$V2, 
                                value = FALSE)
                                
# Subset columns "subject", "V1", "V2"..."Vn", "activity"                
required_columns <- c("subject",paste0("V", mean_std_column_numbers), "activity")
ds <- ds[required_columns] 

## 3. Make descriptive activity names ===================================================

ds$activity <- as.factor(ds$activity)
levels(ds$activity) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", 
                         "SITTING", "STANDING", "LAYING")

## 4. Label the data set with descriptive variable names ================================

# Subset only the required names and clean them
var_names <- var_names[mean_std_column_numbers,]

var_names$V2 <- gsub("^(f|t)","\\1_", var_names$V2)
var_names$V2 <- gsub("-","_", var_names$V2)
var_names$V2 <- gsub("\\()","", var_names$V2)
var_names$V2 <- gsub("BodyBody","Body", var_names$V2)
var_names$V2 <- tolower(var_names$V2)

# Put the new names back in the dataset
names(ds) <- c("subject", var_names$V2, "activity")

## 5. Create a tidy data set with the average of each variable for =====================
##    each activity and each subject

# Make a wide dataset
tidy <- aggregate(x = ds[2:80], by = ds[,c("subject", "activity")], FUN = mean)

write.table(x = tidy, file = "tidy_dataset.txt", row.name = FALSE)
#Read with:
#tr <- read.table("tidy_dataset.txt", header = TRUE)

