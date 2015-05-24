setwd("C:/Rjupalli/CourseEra/2015/Getting and Cleaning Data/Course_Project/UCI HAR Dataset")

# Read test data set with all the variables
test_set_variable <- read.table("./test/X_test.txt", strip.white=T)

# Extract the data only on measurements on the mean and standard deviation for each measurement 
# and removing all other variables from the test data set
# List of variables to extract was obtained by searching for each varaible containing "mean" and "std" in it's name
test_set_only_needed_variable_mean_std <- test_set_variable[,-c(7:40,47:80,87:120,127:160,167:200,203:213,216:226,229:239,242:252,255:561)]

# Read "features.txt" file that contains column names and 
# use these desriptive names to name the columns in the data set
labels <- read.table("./features.txt")
labels <- labels[-c(7:40,47:80,87:120,127:160,167:200,203:213,216:226,229:239,242:252,255:561), ]
names(test_set_only_needed_variable_mean_std) <- labels$V2

# Read test data set's subjects(volunteeers) data 
test_set_subject<- read.table("./test/subject_test.txt")

# Read test data set's activities (e.g. WALKING, WALKING_UPSTAIRS, etc...) data 
test_set_activity<- read.table("./test/y_test.txt")

#Merge test dataset's variable data with it's with Subjects, Activities
test_set_subject_activity <- cbind(test_set_subject,test_set_activity)
names(test_set_subject_activity)[1] <- paste("Subject")
names(test_set_subject_activity)[2] <- paste("Activity")
test_data <- cbind(test_set_subject_activity,test_set_only_needed_variable_mean_std)

# Read training data set with all the variables
train_set_variable <- read.table("./train/X_train.txt", strip.white=T)

# Extract the data only on measurements on the mean and standard deviation for each measurement 
# and removing all other variables from the test data set
# List of variables to extract was obtained by searching for each varaible containing "mean" and "std" in it's name
train_set_only_needed_variable_mean_std <- train_set_variable[,-c(7:40,47:80,87:120,127:160,167:200,203:213,216:226,229:239,242:252,255:561)]

# Use these desriptive names to name the columns in the data set
names(train_set_only_needed_variable_mean_std) <- labels$V2

# Read training data set's subjects(volunteeers) data 
train_set_subject<- read.table("./train/subject_train.txt")

# Read training data set's activities (e.g. WALKING, WALKING_UPSTAIRS, etc...) data
train_set_activity<- read.table("./train/y_train.txt")

#Merge training dataset's variable data with it's with Subjects, Activities
train_set_subject_activity <- cbind(train_set_subject,train_set_activity)
names(train_set_subject_activity)[1] <- paste("Subject")
names(train_set_subject_activity)[2] <- paste("Activity")
train_data <- cbind(train_set_subject_activity,train_set_only_needed_variable_mean_std)

#Merge test dataset with trainign data set
all_data <- rbind(test_data,train_data)

#Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("./activity_labels.txt")
all_data$Activity[all_data$Activity == 1] <- "WALKING"
all_data$Activity[all_data$Activity == 2] <- "WALKING_UPSTAIRS"
all_data$Activity[all_data$Activity == 3] <- "WALKING_DOWNSTAIRS"
all_data$Activity[all_data$Activity == 4] <- "SITTING"
all_data$Activity[all_data$Activity == 5] <- "STANDING"
all_data$Activity[all_data$Activity == 6] <- "LAYING"

#Name varible column names with descriptive variable names. 
names(all_data)[3] <- paste("Time-domain-X-axis-body-accelration-raw-signal-mean")
names(all_data)[4] <- paste("Time-domain-Y-axis-body-accelration-raw-signal-mean")
names(all_data)[5] <- paste("Time-domain-Z-axis-body-accelration-raw-signal-mean")
names(all_data)[6] <- paste("Time-domain-X-axis-body-accelration-raw-signal-std-deviation")
names(all_data)[7] <- paste("Time-domain-Y-axis-body-accelration-raw-signal-std-deviation")
names(all_data)[8] <- paste("Time-domain-Z-axis-body-accelration-raw-signal-std-deviation")
names(all_data)[9] <- paste("Time-domain-X-axis-gravity-accelration-raw-signal-mean")
names(all_data)[10] <- paste("Time-domain-Y-axis-gravity-accelration-raw-signal-mean")
names(all_data)[11] <- paste("Time-domain-Z-axis-gravity-accelration-raw-signal-mean")
names(all_data)[12] <- paste("Time-domain-X-axis-gravity-accelration-raw-signal-std-deviation")
names(all_data)[13] <- paste("Time-domain-Y-axis-gravity-accelration-raw-signal-std-deviation")
names(all_data)[14] <- paste("Time-domain-Z-axis-gravity-accelration-raw-signal-std-deviation")
names(all_data)[15] <- paste("Time-domain-X-axis-body-accelration-jerk-signal-mean")
names(all_data)[16] <- paste("Time-domain-Y-axis-body-accelration-jerk-signal-mean")
names(all_data)[17] <- paste("Time-domain-Z-axis-body-accelration-jerk-signal-mean")
names(all_data)[18] <- paste("Time-domain-X-axis-body-accelration-jerk-signal-std-deviation")
names(all_data)[19] <- paste("Time-domain-Y-axis-body-accelration-jerk-signal-std-deviation")
names(all_data)[20] <- paste("Time-domain-Z-axis-body-accelration-jerk-signal-std-deviation")
names(all_data)[21] <- paste("Time-domain-X-axis-gravity-gyroscope-raw-signal-mean")
names(all_data)[22] <- paste("Time-domain-Y-axis-gravity-gyroscope-raw-signal-mean")
names(all_data)[23] <- paste("Time-domain-Z-axis-gravity-gyroscope-raw-signal-mean")
names(all_data)[24] <- paste("Time-domain-X-axis-gravity-gyroscope-raw-signal-std-deviation")
names(all_data)[25] <- paste("Time-domain-Y-axis-gravity-gyroscope-raw-signal-std-deviation")
names(all_data)[26] <- paste("Time-domain-Z-axis-gravity-gyroscope-raw-signal-std-deviation")
names(all_data)[27] <- paste("Time-domain-X-axis-gravity-gyroscope-jerk-signal-mean")
names(all_data)[28] <- paste("Time-domain-Y-axis-gravity-gyroscope-jerk-signal-mean")
names(all_data)[29] <- paste("Time-domain-Z-axis-gravity-gyroscope-jerk-signal-mean")
names(all_data)[30] <- paste("Time-domain-X-axis-gravity-gyroscope-jerk-signal-std-deviation")
names(all_data)[31] <- paste("Time-domain-Y-axis-gravity-gyroscope-jerk-signal-std-deviation")
names(all_data)[32] <- paste("Time-domain-Z-axis-gravity-gyroscope-jerk-signal-std-deviation")
names(all_data)[33] <- paste("Time-domain-body-accelration-signal-magnitude-mean")
names(all_data)[34] <- paste("Time-domain-body-accelration-signal-magnitude-std-deviation")
names(all_data)[35] <- paste("Time-domain-gravity-accelration-signal-magnitude-mean")
names(all_data)[36] <- paste("Time-domain-gravity-accelration-signal-magnitude-std-deviation")
names(all_data)[37] <- paste("Time-domain-body-accelration-jerk-signal-magnitude-mean")
names(all_data)[38] <- paste("Time-domain-body-accelration-jerk-signal-magnitude-std-deviation")
names(all_data)[39] <- paste("Time-domain-body-gyroscope-signal-magnitude-mean")
names(all_data)[40] <- paste("Time-domain-body-gyroscope-signal-magnitude-std-deviation")
names(all_data)[41] <- paste("Time-domain-body-gyroscope-jerk-signal-magnitude-mean")
names(all_data)[42] <- paste("Time-domain-body-gyroscope-jerk-signal-magnitude-std-deviation")

#Creates tidy data set with the average of each variable for each activity and each subject
# and write this data a table
tidy_data <- data.frame()
library(dplyr)
tidy_data <- group_by(all_data, Subject, Activity) %>% summarise_each(funs(mean))
write.table(tidy_data,file="tidydataset.txt",row.name=F)
