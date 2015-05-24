==================================================================
Tidy data set containing only mean and standard deviation measurements of data 
collected in "Human Activity Recognition Using Smartphones Dataset" project
Version 1.0
==================================================================
Rama Jupalli
==================================================================
Purpose & Methodology:

The purpose of this analysis is to create a tidy data set that only contains mean and standard deviation measurements of each measurement.
To create the tidy set following steps are followed...

1. Download the original dataset from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Note: A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

2. After reading "test" data set, extracted data that contains only mean and standard deviation measurements for each measurement and all other
varaibles are excluded
Note:  List of variables to extract was obtained by searching for varaible's name containing "mean" and "std" in it's name, getting their column indices
and subsetting the data to exclude the data on other columns.
Only Time-domian signals were included in the analysis as Fourier transform of these signals could be easily obtained (if needed) and added back to the dataset.

3. Using column names gives in "features.txt" provided in the dataset to rename column names to more desriptive names 

4. Combined variables data with subjects (i.e.volunteeers provided in the dataset) activities (e.g. WALKING, WALKING_UPSTAIRS, etc...) subjects were performing when data was collected

5. Steps 2 to 4 were repeated for training data set

6. Merged/combined test and trainigns set to create a one data set


7. Renamed activity names with thier descriptive activity names (e.g. 1= WALKING, 2=WALKING_UPSTAIRS, etc..) in the dataset

8. Column names in the combined data set were replaced with more descriptive names 



9. Finally crated a tidy set that contains one record for each variable for each activity and each subject




==================================================================
Rama Jupalli
==================================================================




The dataset includes the following files:
=========================================

- 'README.md'

- 'run_analysis.R': R script showing commands followed to create the tidy data set

- Tidy data set that contains one record for each variable for each activity and each subject

Notes: 
======

For more information about this dataset contact: Rama Jupalli
