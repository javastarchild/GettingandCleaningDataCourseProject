GettingandCleaningDataCourseProject
===================================

<b>Introduction</b>

This project includes one R script called run_analysis.R that does the following:  

<ol>
<li>Merges the training and the test sets to create one data set from: 
----------https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</li> 
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names. </li>
<li>Creates a second, independent tidy data set named "tidy.txt" with the average of each variable for each activity and each subject</li> 
</ol>

<b>How to run</b>

The files from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip need to be extracted
to a directory one above the location of the project containing the script "run_analysis.R"  as shown below:
<ul>
<li>/UCI HAR Dataset/activity_labels.txt</li>
<li>/UCI HAR Dataset/features_info.txt</li>
<li>/UCI HAR Dataset/features.txt</li>
<li>/UCI HAR Dataset/README.txt</li>
<li>/UCI HAR Dataset/test</li>
<li>/UCI HAR Dataset/train</li>
<li>/UCI HAR Dataset/projectGettingandCleaningDataCourseProject/run_analysis.R</li>
</ul>

Then the script can be run and it will locate the data files and create the "tidy.txt" file in the same 
directory as the script.

NOTE: If package "plyr" is not installed in R, uncomment this line at start of script "# install.packages("plyr")"