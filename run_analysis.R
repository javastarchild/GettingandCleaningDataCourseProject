# install.packages("plyr")
library(plyr)
# Merge the training and the test sets to create one data set.
trainfile <- "../train/X_train.txt"
testfile <- "../test/X_test.txt"
## read in train and test data files, the data files MUST be in parent dir in the dirs test and train
X_train <- read.table(trainfile, colClasses="numeric")
X_test <- read.table(testfile, colClasses="numeric")
## merge the files train, test in that order
X_merged <- rbind(X_train, X_test)

# Extract only the measurements on the mean and standard deviation for each measurement. 
measurementsfile <- "../features.txt"
measurements <- read.table(measurementsfile)
cols_to_keep <- grep("mean|std", measurements$V2, ignore.case=TRUE)

X_only_mean_std <- X_merged[ , cols_to_keep]

# Use descriptive activity names to name the activities in the data set
trainactivityfile <- "../train/y_train.txt"
testactivityfile <- "../test/y_test.txt"
trainactivities <- read.table(trainactivityfile)
testactivities <- read.table(testactivityfile)
allactivites <- rbind(trainactivities, testactivities)
activitylabelfile <- "../activity_labels.txt"
labels <- read.table(activitylabelfile)
for (i in labels$V1) {
  for(j in 1:nrow(allactivites)) {
    allactivites[j,1] <- sub(labels$V1[i], labels$V2[i],allactivites[j,1])
  }
}

X_only_mean_std <- cbind(allactivites, X_only_mean_std)

# Appropriately label the data set with descriptive variable names. 
descriptive_names <- as.character(measurements[cols_to_keep, 2])
descriptive_names <- gsub("\\)", "", descriptive_names)
descriptive_names <- gsub("\\(", "", descriptive_names)
descriptive_names <- gsub("-", "", descriptive_names)
descriptive_names <- gsub(",", "", descriptive_names)
descriptive_names <- gsub("mean", "Mean", descriptive_names)
descriptive_names <- c("Activity", descriptive_names)
colnames(X_only_mean_std) <- descriptive_names

# Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
subjecttrainfile <- "../train/subject_train.txt"
subjecttestfile <- "../test/subject_test.txt"
trainsubjects <- read.table(subjecttrainfile)
testsubjects <- read.table(subjecttestfile)
allsubjects <- rbind(trainsubjects, testsubjects)

X_temp <- cbind(allsubjects, X_only_mean_std)
descriptive_names <- c("Subject", descriptive_names)
colnames(X_temp) <- descriptive_names

DT <- data.table(X_temp)

DT_means <- aggregate( . ~ Subject + Activity, data = DT, mean)

write.table(DT_means, file = "tidy.txt", row.name=FALSE)
