Input data: UCI Activity Recognition Using Smartphones Data Set
Files used for this project.
Feature data:  ./train/X_train.txt & ./test/X_test.txt  (total features = 561)
Subjects list: ./train/subjects_train.txt & subjects_test.txt (Total N=30)
labels:        ./train/y_train.txt & ./test/y_test.txt (# labels 1-6)
label name: (activity_labels.txt)
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

Name of features in features.txt and more information in features.info.
Features of interest: For this project we want to analyze features with mean and standard deviation.
tBodyAcc-mean()-X           
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z           
tBodyAcc-std()-X           
tBodyAcc-std()-Y            
tBodyAcc-std()-Z           
tGravityAcc-mean()-X        
tGravityAcc-mean()-Y       
tGravityAcc-mean()-Z        
tGravityAcc-std()-X        
tGravityAcc-std()-Y         
tGravityAcc-std()-Z        
tBodyAccJerk-mean()-X       
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z       
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y        
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X          
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z          
tBodyGyro-std()-X          
tBodyGyro-std()-Y           
tBodyGyro-std()-Z          
tBodyGyroJerk-mean()-X      
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z      
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y       
tBodyGyroJerk-std()-Z      
tBodyAccMag-mean()          
tBodyAccMag-std()          
tGravityAccMag-mean()       
tGravityAccMag-std()       
tBodyAccJerkMag-mean()      
tBodyAccJerkMag-std()      
tBodyGyroMag-mean()         
tBodyGyroMag-std()         
tBodyGyroJerkMag-mean()     
tBodyGyroJerkMag-std()     
fBodyAcc-mean()-X           
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z           
fBodyAcc-std()-X           
fBodyAcc-std()-Y            
fBodyAcc-std()-Z           
fBodyAccJerk-mean()-X       
fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z       
fBodyAccJerk-std()-X       
fBodyAccJerk-std()-Y        
fBodyAccJerk-std()-Z       
fBodyGyro-mean()-X          
fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z          
fBodyGyro-std()-X          
fBodyGyro-std()-Y           
fBodyGyro-std()-Z          
fBodyAccMag-mean()          
fBodyAccMag-std()          
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()     
fBodyBodyGyroMag-std()     
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std() 

Output data: tidy_data
Contains merged (row-wise) training and test dataset.
Contains subjects labels and activity labels (names).
Merged columnwise with feature file, subject information and activity labels.
Total dimension 10299x 68 (66 features, 1 subject, 1 activity name)
66 features are renamed as follows:
 [1] "timebodyaccuracymeanX"                 
 [2] "timebodyaccuracymeanY"                 
 [3] "timebodyaccuracymeanZ"                 
 [4] "timebodyaccuracystdX"                  
 [5] "timebodyaccuracystdY"                  
 [6] "timebodyaccuracystdZ"                  
 [7] "timegravityaccuracymeanX"              
 [8] "timegravityaccuracymeanY"              
 [9] "timegravityaccuracymeanZ"              
[10] "timegravityaccuracystdX"               
[11] "timegravityaccuracystdY"               
[12] "timegravityaccuracystdZ"               
[13] "timebodyaccuracyjerkmeanX"             
[14] "timebodyaccuracyjerkmeanY"             
[15] "timebodyaccuracyjerkmeanZ"             
[16] "timebodyaccuracyjerkstdX"              
[17] "timebodyaccuracyjerkstdY"              
[18] "timebodyaccuracyjerkstdZ"              
[19] "timebodygyromeanX"                     
[20] "timebodygyromeanY"                     
[21] "timebodygyromeanZ"                     
[22] "timebodygyrostdX"                      
[23] "timebodygyrostdY"                      
[24] "timebodygyrostdZ"                      
[25] "timebodygyrojerkmeanX"                 
[26] "timebodygyrojerkmeanY"                 
[27] "timebodygyrojerkmeanZ"                 
[28] "timebodygyrojerkstdX"                  
[29] "timebodygyrojerkstdY"                  
[30] "timebodygyrojerkstdZ"                  
[31] "timebodyaccuracymagnitudemean"         
[32] "timebodyaccuracymagnitudestd"          
[33] "timegravityaccuracymagnitudemean"      
[34] "timegravityaccuracymagnitudestd"       
[35] "timebodyaccuracyjerkmagnitudemean"     
[36] "timebodyaccuracyjerkmagnitudestd"      
[37] "timebodygyromagnitudemean"             
[38] "timebodygyromagnitudestd"              
[39] "timebodygyrojerkmagnitudemean"         
[40] "timebodygyrojerkmagnitudestd"          
[41] "frequencybodyaccuracymeanX"            
[42] "frequencybodyaccuracymeanY"            
[43] "frequencybodyaccuracymeanZ"            
[44] "frequencybodyaccuracystdX"             
[45] "frequencybodyaccuracystdY"             
[46] "frequencybodyaccuracystdZ"             
[47] "frequencybodyaccuracyjerkmeanX"        
[48] "frequencybodyaccuracyjerkmeanY"        
[49] "frequencybodyaccuracyjerkmeanZ"        
[50] "frequencybodyaccuracyjerkstdX"         
[51] "frequencybodyaccuracyjerkstdY"         
[52] "frequencybodyaccuracyjerkstdZ"         
[53] "frequencybodygyromeanX"                
[54] "frequencybodygyromeanY"                
[55] "frequencybodygyromeanZ"                
[56] "frequencybodygyrostdX"                 
[57] "frequencybodygyrostdY"                 
[58] "frequencybodygyrostdZ"                 
[59] "frequencybodyaccuracymagnitudemean"    
[60] "frequencybodyaccuracymagnitudestd"     
[61] "frequencybodyaccuracyjerkmagnitudemean"
[62] "frequencybodyaccuracyjerkmagnitudestd" 
[63] "frequencybodygyromagnitudemean"        
[64] "frequencybodygyromagnitudestd"         
[65] "frequencybodygyrojerkmagnitudemean"    
[66] "frequencybodygyrojerkmagnitudestd"  

activity with six labels as follows:
1	WALKING
2	WALKING_UPSTAIRS
3	WALKING_DOWNSTAIRS
4	SITTING
5	STANDING
6	LAYING

Saved in output file: tidy_datasets.txt