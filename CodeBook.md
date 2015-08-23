  
#procedure to produce tidy data set  
  
  
1. read files from train/test  of current directory using read.csv() .  
2. merged  the traing/test sets into one using rbind()  
3. extracted the mean and standard deviation from columns. get the data.frame mean_std    
   FYI, I used the traditional tool "grep" in order to extract correct column numbers.  
4. I made new list of activity name  from the file that is made from y_test.txt & y_train.txt  
5. I named all column of previous result.   
   actually, I'm not satisfied with the names.  
   Unfortunetly, I didn't have time to come up with nice many names...   
  
6. wrote to files using write.table()  
7. result file names are  x_data.txt and y_data.txt  
   as a result, x_data.txt was made from X_text.txt and X_train.txt and   
   y_data.txt was made from y_text.txt and y_train.txt  
  
##variables of x_data.txt  
column number:1  tBodyAcc-mean()-X  
column number:2  tBodyAcc-mean()-Y  
column number:3  tBodyAcc-mean()-Z  
column number:4  tBodyAcc-std()-X  
column number:5  tBodyAcc-std()-Y  
column number:6  tBodyAcc-std()-Z  
column number:7  tGravityAcc-mean()-X  
column number:8  tGravityAcc-mean()-Y  
column number:9  tGravityAcc-mean()-Z  
column number:10 tGravityAcc-std()-X  
column number:11 tGravityAcc-std()-Y  
column number:12 tGravityAcc-std()-Z  
column number:13 tBodyAccJerk-mean()-X  
column number:14 tBodyAccJerk-mean()-Y  
column number:15 tBodyAccJerk-mean()-Z  
column number:16 tBodyAccJerk-std()-X  
column number:17 tBodyAccJerk-std()-Y  
column number:18 tBodyAccJerk-std()-Z  
column number:19 tBodyGyro-mean()-X  
column number:20 tBodyGyro-mean()-Y  
column number:21 tBodyGyro-mean()-Z  
column number:22 tBodyGyro-std()-X  
column number:23 tBodyGyro-std()-Y  
column number:24 tBodyGyro-std()-Z  
column number:25 tBodyGyroJerk-mean()-X  
column number:26 tBodyGyroJerk-mean()-Y  
column number:27 tBodyGyroJerk-mean()-Z  
column number:28 tBodyGyroJerk-std()-X  
column number:29 tBodyGyroJerk-std()-Y  
column number:30 tBodyGyroJerk-std()-Z  
column number:31 tBodyAccMag-mean()  
column number:32 tBodyAccMag-std()  
column number:33 tGravityAccMag-mean()  
column number:34 tGravityAccMag-std()  
column number:35 tBodyAccJerkMag-mean()  
column number:36 tBodyAccJerkMag-std()  
column number:37 tBodyGyroMag-mean()  
column number:38 tBodyGyroMag-std()  
column number:39 tBodyGyroJerkMag-mean()  
column number:40 tBodyGyroJerkMag-std()  
column number:41 fBodyAcc-mean()-X  
column number:42 fBodyAcc-mean()-Y  
column number:43 fBodyAcc-mean()-Z  
column number:44 fBodyAcc-std()-X  
column number:45 fBodyAcc-std()-Y  
column number:46 fBodyAcc-std()-Z  
column number:47 fBodyAcc-meanFreq()-X  
column number:48 fBodyAcc-meanFreq()-Y  
column number:49 fBodyAcc-meanFreq()-Z  
column number:50 fBodyAccJerk-mean()-X  
column number:51 fBodyAccJerk-mean()-Y  
column number:52 fBodyAccJerk-mean()-Z  
column number:53 fBodyAccJerk-std()-X  
column number:54 fBodyAccJerk-std()-Y  
column number:55 fBodyAccJerk-std()-Z  
column number:56 fBodyAccJerk-meanFreq()-X  
column number:57 fBodyAccJerk-meanFreq()-Y  
column number:58 fBodyAccJerk-meanFreq()-Z  
column number:59 fBodyGyro-mean()-X  
column number:60 fBodyGyro-mean()-Y  
column number:61 fBodyGyro-mean()-Z  
column number:62 fBodyGyro-std()-X  
column number:63 fBodyGyro-std()-Y  
column number:64 fBodyGyro-std()-Z  
column number:65 fBodyGyro-meanFreq()-X  
column number:66 fBodyGyro-meanFreq()-Y  
column number:67 fBodyGyro-meanFreq()-Z  
column number:68 fBodyAccMag-mean()  
column number:69 fBodyAccMag-std()  
column number:70 fBodyAccMag-meanFreq()  
column number:71 fBodyBodyAccJerkMag-mean()  
column number:72 fBodyBodyAccJerkMag-std()  
column number:73 fBodyBodyAccJerkMag-meanFreq()  
column number:74 fBodyBodyGyroMag-mean()  
column number:75 fBodyBodyGyroMag-std()  
column number:76 fBodyBodyGyroMag-meanFreq()  
column number:77 fBodyBodyGyroJerkMag-mean()  
column number:78 fBodyBodyGyroJerkMag-std()  
column number:79 fBodyBodyGyroJerkMag-meanFreq()  
  
##variables of y_data.txt  
it has one column.  
it means activity name.  
