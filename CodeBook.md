---
output: html_document
---
<b>Variables</b>

The tidy.txt file produced includes 88 varibles with names as list below:<p>
<code>1 "Subject"                           
2 "Activity"                          
3 "tBodyAccMeanX"                    
4 "tBodyAccMeanY"                     
5 "tBodyAccMeanZ"                     
6 "tBodyAccstdX"                     
7 "tBodyAccstdY"                      
8 "tBodyAccstdZ"                      
9 "tGravityAccMeanX"                 
10 "tGravityAccMeanY"                  
11 "tGravityAccMeanZ"                  
12 "tGravityAccstdX"                  
13 "tGravityAccstdY"                   
14 "tGravityAccstdZ"                   
15 "tBodyAccJerkMeanX"                
16 "tBodyAccJerkMeanY"                 
17 "tBodyAccJerkMeanZ"                 
18 "tBodyAccJerkstdX"                 
19 "tBodyAccJerkstdY"                  
20 "tBodyAccJerkstdZ"                  
21 "tBodyGyroMeanX"                   
22 "tBodyGyroMeanY"                    
23 "tBodyGyroMeanZ"                    
24 "tBodyGyrostdX"                    
25 "tBodyGyrostdY"                     
26 "tBodyGyrostdZ"                     
27 "tBodyGyroJerkMeanX"               
28 "tBodyGyroJerkMeanY"                
29 "tBodyGyroJerkMeanZ"                
30 "tBodyGyroJerkstdX"                
31 "tBodyGyroJerkstdY"                 
32 "tBodyGyroJerkstdZ"                 
33 "tBodyAccMagMean"                  
34 "tBodyAccMagstd"                    
35 "tGravityAccMagMean"                
36 "tGravityAccMagstd"                
37 "tBodyAccJerkMagMean"               
38 "tBodyAccJerkMagstd"                
39 "tBodyGyroMagMean"                 
40 "tBodyGyroMagstd"                   
41 "tBodyGyroJerkMagMean"              
42 "tBodyGyroJerkMagstd"              
43 "fBodyAccMeanX"                     
44 "fBodyAccMeanY"                     
45 "fBodyAccMeanZ"                    
46 "fBodyAccstdX"                      
47 "fBodyAccstdY"                      
48 "fBodyAccstdZ"                     
49 "fBodyAccMeanFreqX"                 
50 "fBodyAccMeanFreqY"                 
51 "fBodyAccMeanFreqZ"                
52 "fBodyAccJerkMeanX"                 
53 "fBodyAccJerkMeanY"                 
54 "fBodyAccJerkMeanZ"                
55 "fBodyAccJerkstdX"                  
56 "fBodyAccJerkstdY"                  
57 "fBodyAccJerkstdZ"                 
58 "fBodyAccJerkMeanFreqX"             
59 "fBodyAccJerkMeanFreqY"             
60 "fBodyAccJerkMeanFreqZ"            
61 "fBodyGyroMeanX"                    
61 "fBodyGyroMeanY"                    
63 "fBodyGyroMeanZ"                   
64 "fBodyGyrostdX"                     
65 "fBodyGyrostdY"                     
66 "fBodyGyrostdZ"                    
67 "fBodyGyroMeanFreqX"                
68 "fBodyGyroMeanFreqY"                
69 "fBodyGyroMeanFreqZ"               
70 "fBodyAccMagMean"                   
71 "fBodyAccMagstd"                    
72 "fBodyAccMagMeanFreq"              
73 "fBodyBodyAccJerkMagMean"           
74 "fBodyBodyAccJerkMagstd"            
75 "fBodyBodyAccJerkMagMeanFreq"      
76 "fBodyBodyGyroMagMean"              
77 "fBodyBodyGyroMagstd"               
78 "fBodyBodyGyroMagMeanFreq"         
79 "fBodyBodyGyroJerkMagMean"          
80 "fBodyBodyGyroJerkMagstd"           
81 "fBodyBodyGyroJerkMagMeanFreq"     
82 "angletBodyAccMeangravity"          
83 "angletBodyAccJerkMeangravityMean"  
84 "angletBodyGyroMeangravityMean"    
85 "angletBodyGyroJerkMeangravityMean" 
86 "angleXgravityMean"                 
87 "angleYgravityMean"                
88 "angleZgravityMean"
</code>

<b>The Data</b>

All varibles with "Mean" in the name is the "mean" of the original measuresments (with similar names) as grouped
by Subject/Activity grouping.  For example, "tBodyAccMeanY" is the "mean" of all the values for Subject "N", performing
Activity "X" from the original measurement "tBodyAcc-mean()-X".

For a complete list of the original measurements with decsriptions see this files: (from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)<p>
<ul>
<li>'features_info.txt': Shows information about the variables used on the feature vector.</li>
<li>'features.txt': List of all features</li>
</ul>




<b>Transformations</b>

Measurements were filtered to include only those with "mean" and "std" in there names.  For each varible derived from measuresments (excludes Subject and Activity) the "mean" of the original measuresments is calculated as grouped for that Subject/Activity tuple.  In addition, names of measurements where modified to remove certian characters (e.g. "()", ",", "-") and also changed "mean" to "Mean" in all names.
