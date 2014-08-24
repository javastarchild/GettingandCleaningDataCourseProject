---
output: html_document
---
<b>Variables</b>

The tidy.txt file produced includes 88 varibles with names as list below:<p>
<code>
"Subject"                           "Activity"                          "tBodyAccMeanX"                    
"tBodyAccMeanY"                     "tBodyAccMeanZ"                     "tBodyAccstdX"                     
"tBodyAccstdY"                      "tBodyAccstdZ"                      "tGravityAccMeanX"                 
"tGravityAccMeanY"                  "tGravityAccMeanZ"                  "tGravityAccstdX"                  
"tGravityAccstdY"                   "tGravityAccstdZ"                   "tBodyAccJerkMeanX"                
"tBodyAccJerkMeanY"                 "tBodyAccJerkMeanZ"                 "tBodyAccJerkstdX"                 
"tBodyAccJerkstdY"                  "tBodyAccJerkstdZ"                  "tBodyGyroMeanX"                   
"tBodyGyroMeanY"                    "tBodyGyroMeanZ"                    "tBodyGyrostdX"                    
"tBodyGyrostdY"                     "tBodyGyrostdZ"                     "tBodyGyroJerkMeanX"               
"tBodyGyroJerkMeanY"                "tBodyGyroJerkMeanZ"                "tBodyGyroJerkstdX"                
"tBodyGyroJerkstdY"                 "tBodyGyroJerkstdZ"                 "tBodyAccMagMean"                  
"tBodyAccMagstd"                    "tGravityAccMagMean"                "tGravityAccMagstd"                
"tBodyAccJerkMagMean"               "tBodyAccJerkMagstd"                "tBodyGyroMagMean"                 
"tBodyGyroMagstd"                   "tBodyGyroJerkMagMean"              "tBodyGyroJerkMagstd"              
"fBodyAccMeanX"                     "fBodyAccMeanY"                     "fBodyAccMeanZ"                    
"fBodyAccstdX"                      "fBodyAccstdY"                      "fBodyAccstdZ"                     
"fBodyAccMeanFreqX"                 "fBodyAccMeanFreqY"                 "fBodyAccMeanFreqZ"                
"fBodyAccJerkMeanX"                 "fBodyAccJerkMeanY"                 "fBodyAccJerkMeanZ"                
"fBodyAccJerkstdX"                  "fBodyAccJerkstdY"                  "fBodyAccJerkstdZ"                 
"fBodyAccJerkMeanFreqX"             "fBodyAccJerkMeanFreqY"             "fBodyAccJerkMeanFreqZ"            
"fBodyGyroMeanX"                    "fBodyGyroMeanY"                    "fBodyGyroMeanZ"                   
"fBodyGyrostdX"                     "fBodyGyrostdY"                     "fBodyGyrostdZ"                    
"fBodyGyroMeanFreqX"                "fBodyGyroMeanFreqY"                "fBodyGyroMeanFreqZ"               
"fBodyAccMagMean"                   "fBodyAccMagstd"                    "fBodyAccMagMeanFreq"              
"fBodyBodyAccJerkMagMean"           "fBodyBodyAccJerkMagstd"            "fBodyBodyAccJerkMagMeanFreq"      
"fBodyBodyGyroMagMean"              "fBodyBodyGyroMagstd"               "fBodyBodyGyroMagMeanFreq"         
"fBodyBodyGyroJerkMagMean"          "fBodyBodyGyroJerkMagstd"           "fBodyBodyGyroJerkMagMeanFreq"     
"angletBodyAccMeangravity"          "angletBodyAccJerkMeangravityMean"  "angletBodyGyroMeangravityMean"    
"angletBodyGyroJerkMeangravityMean" "angleXgravityMean"                 "angleYgravityMean"                
"angleZgravityMean"
</code>

<b>The Data</b>

All varibles with "Mean" in the name is the "mean" of the original measuresments (with similar names) as grouped
by Subject/Activity grouping.  For example, "tBodyAccMeanY" is the "mean" of all the values for Subject "N", performing
Activity "X" from the original measurement "tBodyAcc-mean()-X".

For a complete list of the original measurements with decsriptions see this files: (from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)<p>
<list>
<li>'features_info.txt': Shows information about the variables used on the feature vector.</li>
<li>'features.txt': List of all features</li>
</list>




<b>Transformations</b>

For each varible derived from measuresments (excludes Subject and Activity) is the "mean" of the original measuresments as grouped
for that Subject/Activity grouping.
