---
title: "Codebook"
author: "Mackenzie"
date: "Oct 27, 2020"
output:
  html_document:
    keep_md: yes
---

## Project Description
Project was designed to demonstrate my ability to collet, work with and get a clean data set

##Study design and data processing

###Collection of the raw data
Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


###Notes on the original (raw) data 
Data was collected on the accelerator and gyroscope values when 30 subjects were wearing the Samsung Galaxy 5 smartphone

##Creating the tidy datafile

###Guide to create the tidy data file
1. download the data
2. Merged the training and test data sets
3. Extract only the measurements on mean and standard deviation
4. Uses descriptive activity names to name the activities in the data set
5. Re-label the variables to their descriptive labels
6. Create a tidy data set of just the average values for each activity for each subject.


##Description of the variables in the tiny_data.txt file
Dimensions of final tidy data set: 180 obs x 88 variables

Summary of the data: Average values of each variable for each subject and each activity. 

Variables present in the dataset:
 [1] "subject"                                           
 [2] "activity"                                          
 [3] "timeBodyAccelerometer-mean()-X"                    
 [4] "timeBodyAccelerometer-mean()-Y"                    
 [5] "timeBodyAccelerometer-mean()-Z"                    
 [6] "timeBodyAccelerometer-std()-X"                     
 [7] "timeBodyAccelerometer-std()-Y"                     
 [8] "timeBodyAccelerometer-std()-Z"                     
 [9] "timeGravityAccelerometer-mean()-X"                 
[10] "timeGravityAccelerometer-mean()-Y"                 
[11] "timeGravityAccelerometer-mean()-Z"                 
[12] "timeGravityAccelerometer-std()-X"                  
[13] "timeGravityAccelerometer-std()-Y"                  
[14] "timeGravityAccelerometer-std()-Z"                  
[15] "timeBodyAccelerometerJerk-mean()-X"                
[16] "timeBodyAccelerometerJerk-mean()-Y"                
[17] "timeBodyAccelerometerJerk-mean()-Z"                
[18] "timeBodyAccelerometerJerk-std()-X"                 
[19] "timeBodyAccelerometerJerk-std()-Y"                 
[20] "timeBodyAccelerometerJerk-std()-Z"                 
[21] "timeBodyGyroscope-mean()-X"                        
[22] "timeBodyGyroscope-mean()-Y"                        
[23] "timeBodyGyroscope-mean()-Z"                        
[24] "timeBodyGyroscope-std()-X"                         
[25] "timeBodyGyroscope-std()-Y"                         
[26] "timeBodyGyroscope-std()-Z"                         
[27] "timeBodyGyroscopeJerk-mean()-X"                    
[28] "timeBodyGyroscopeJerk-mean()-Y"                    
[29] "timeBodyGyroscopeJerk-mean()-Z"                    
[30] "timeBodyGyroscopeJerk-std()-X"                     
[31] "timeBodyGyroscopeJerk-std()-Y"                     
[32] "timeBodyGyroscopeJerk-std()-Z"                     
[33] "timeBodyAccelerometerMagnitude-mean()"             
[34] "timeBodyAccelerometerMagnitude-std()"              
[35] "timeGravityAccelerometerMagnitude-mean()"          
[36] "timeGravityAccelerometerMagnitude-std()"           
[37] "timeBodyAccelerometerJerkMagnitude-mean()"         
[38] "timeBodyAccelerometerJerkMagnitude-std()"          
[39] "timeBodyGyroscopeMagnitude-mean()"                 
[40] "timeBodyGyroscopeMagnitude-std()"                  
[41] "timeBodyGyroscopeJerkMagnitude-mean()"             
[42] "timeBodyGyroscopeJerkMagnitude-std()"              
[43] "frequencyBodyAccelerometer-mean()-X"               
[44] "frequencyBodyAccelerometer-mean()-Y"               
[45] "frequencyBodyAccelerometer-mean()-Z"               
[46] "frequencyBodyAccelerometer-std()-X"                
[47] "frequencyBodyAccelerometer-std()-Y"                
[48] "frequencyBodyAccelerometer-std()-Z"                
[49] "frequencyBodyAccelerometer-meanFreq()-X"           
[50] "frequencyBodyAccelerometer-meanFreq()-Y"           
[51] "frequencyBodyAccelerometer-meanFreq()-Z"           
[52] "frequencyBodyAccelerometerJerk-mean()-X"           
[53] "frequencyBodyAccelerometerJerk-mean()-Y"           
[54] "frequencyBodyAccelerometerJerk-mean()-Z"           
[55] "frequencyBodyAccelerometerJerk-std()-X"            
[56] "frequencyBodyAccelerometerJerk-std()-Y"            
[57] "frequencyBodyAccelerometerJerk-std()-Z"            
[58] "frequencyBodyAccelerometerJerk-meanFreq()-X"       
[59] "frequencyBodyAccelerometerJerk-meanFreq()-Y"       
[60] "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
[61] "frequencyBodyGyroscope-mean()-X"                   
[62] "frequencyBodyGyroscope-mean()-Y"                   
[63] "frequencyBodyGyroscope-mean()-Z"                   
[64] "frequencyBodyGyroscope-std()-X"                    
[65] "frequencyBodyGyroscope-std()-Y"                    
[66] "frequencyBodyGyroscope-std()-Z"                    
[67] "frequencyBodyGyroscope-meanFreq()-X"               
[68] "frequencyBodyGyroscope-meanFreq()-Y"               
[69] "frequencyBodyGyroscope-meanFreq()-Z"               
[70] "frequencyBodyAccelerometerMagnitude-mean()"        
[71] "frequencyBodyAccelerometerMagnitude-std()"         
[72] "frequencyBodyAccelerometerMagnitude-meanFreq()"    
[73] "frequencyBodyAccelerometerJerkMagnitude-mean()"    
[74] "frequencyBodyAccelerometerJerkMagnitude-std()"     
[75] "frequencyBodyAccelerometerJerkMagnitude-meanFreq()"
[76] "frequencyBodyGyroscopeMagnitude-mean()"            
[77] "frequencyBodyGyroscopeMagnitude-std()"             
[78] "frequencyBodyGyroscopeMagnitude-meanFreq()"        
[79] "frequencyBodyGyroscopeJerkMagnitude-mean()"        
[80] "frequencyBodyGyroscopeJerkMagnitude-std()"         
[81] "frequencyBodyGyroscopeJerkMagnitude-meanFreq()"    
[82] "angle(tBodyAccelerometerMean,gravity)"             
[83] "angle(tBodyAccelerometerJerkMean),gravityMean)"    
[84] "angle(tBodyGyroscopeMean,gravityMean)"             
[85] "angle(tBodyGyroscopeJerkMean,gravityMean)"         
[86] "angle(X,gravityMean)"                              
[87] "angle(Y,gravityMean)"                              
[88] "angle(Z,gravityMean)"
