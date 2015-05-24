# Getting-and-Cleaning-Data
==================================================================
setwd("C:/Rjupalli/CourseEra/2015/Getting and Cleaning Data/Course_Project/UCI HAR Dataset")

# Read test data set with all the variables
test_set_variable <- read.table("./test/X_test.txt", strip.white=T)

# Extract the data only on measurements on the mean and standard deviation for each measurement 
# and removing all other variables from the test data set
# List of variables to extract was obtained by searching for each varaible containing "mean" and "std" in it's name

# Read "features.txt" file that contains column names and 
# use these desriptive names to name the columns in the data set


# Read test data set's subjects(volunteeers) data 


# Read test data set's activities (e.g. WALKING, WALKING_UPSTAIRS, etc...) data 


#Merge test dataset's variable data with it's with Subjects, Activities


# Read training data set with all the variables


# Extract the data only on measurements on the mean and standard deviation for each measurement 
# and removing all other variables from the test data set
# List of variables to extract was obtained by searching for each varaible containing "mean" and "std" in it's name


# Use these desriptive names to name the columns in the data set


# Read training data set's subjects(volunteeers) data 


# Read training data set's activities (e.g. WALKING, WALKING_UPSTAIRS, etc...) data


#Merge training dataset's variable data with it's with Subjects, Activities


#Merge test dataset with trainign data set

#Uses descriptive activity names to name the activities in the data set


#Name varible column names with descriptive variable names. 



#Creates tidy data set with the average of each variable for each activity and each subject
# and write this data a table


==================================================================
Rama Jupalli
==================================================================


