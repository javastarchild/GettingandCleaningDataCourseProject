GettingandCleaningDataCourseProject
===================================

Introduction

This project includes one R script called run_analysis.R that does the following:  

1 Merges the training and the test sets to create one data set from: 
----------https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2 Extracts only the measurements on the mean and standard deviation for each measurement. 
3 Uses descriptive activity names to name the activities in the data set
4 Appropriately labels the data set with descriptive variable names. 
5 Creates a second, independent tidy data set named "tidy.txt" with the average of each variable for each activity and each subject. 


How to run

The files from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip need to be extracted
to a directory one above the location of the project containing the script "run_analysis.R"  as shown below:

/UCI HAR Dataset/activity_labels.txt
/UCI HAR Dataset/features_info.txt
/UCI HAR Dataset/features.txt
/UCI HAR Dataset/README.txt
/UCI HAR Dataset/test
/UCI HAR Dataset/train
/UCI HAR Dataset/projectGettingandCleaningDataCourseProject/run_analysis.R

Then the script can be run and it will locate the data files and create the "tidy.txt" fiel in the same 
directory as teh script.

NOTE: If package "plyr" is not installed in R, uncomment this line at strt of script "# install.packages("plyr")"