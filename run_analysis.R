
ds_X_test   <- read.table(file="UCI HAR Dataset/test/X_test.txt", header=FALSE)
ds_y_test   <- read.table(file="UCI HAR Dataset/test/y_test.txt", header=FALSE)
ds_sub_test <- read.table(file="UCI HAR Dataset/test/subject_test.txt", header=FALSE)

names(ds_y_test) <- c("label")
names(ds_sub_test) <- c("subject")

ds_test <- cbind(ds_sub_test, ds_X_test, ds_y_test)
rm(ds_sub_test, ds_X_test, ds_y_test)

ds_X_train   <- read.table(file="UCI HAR Dataset/train/X_train.txt", header=FALSE)
ds_y_train   <- read.table(file="UCI HAR Dataset/train/y_train.txt", header=FALSE)
ds_sub_train <- read.table(file="UCI HAR Dataset/train/subject_train.txt", header=FALSE)

names(ds_y_train) <- c("label")
names(ds_sub_train) <- c("subject")

ds_train <- cbind(ds_sub_train, ds_X_train, ds_y_train)
rm(ds_sub_train, ds_X_train, ds_y_train)

ds <- rbind(ds_test, ds_train)
rm(ds_test, ds_train)

#Get the variable names and search for those refering to the mean and std deviation
var_names <-read.table("UCI HAR Dataset/features.txt")
mean_std_column_numbers <- grep(pattern = "mean()|meanFreq()|std()", x = var_names$V2, value = FALSE)
required_columns <- c("subject",paste0("V", mean_std_column_numbers),"label")
ds <- ds[required_columns] #subset columns "subject", "V1", "V2"..."Vn", "label"

#make descriptive activity names
ds$label <- as.factor(ds$label)
levels(ds$label) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", 
                      "SITTING", "STANDING", "LAYING")

#subset only the required names and clean them
var_names <- var_names[mean_std_column_numbers,]
var_names$V2 <- gsub("^(f|t)","\\1_", var_names$V2)
var_names$V2 <- gsub("-","_", var_names$V2)
var_names$V2 <- gsub("\\()","", var_names$V2)
var_names$V2 <- gsub("BodyBody","Body", var_names$V2)
var_names$V2 <- tolower(var_names$V2)

#put the new names back in the dataset
names(ds) <- c("subject", var_names$V2, "label")

#Make a wide dataset
tidy <- aggregate(x = ds[2:80], by = ds[,c("subject", "label")], FUN = mean)

write.table(x = tidy, file = "tidy_dataset.txt", row.name = FALSE)

#Read with:
#tr <- read.table("tidy_dataset.txt", header = TRUE)

