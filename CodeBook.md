Code Book

The tidy data set is the output file of the run_analysis.R script. 
It is of data.frame class. It has 4 variables: "subject", "activity", "variable" and "meanvalue".

subject
Description: ID of person wearing a smartphone
Class: integer
Values: 1:30

activity
Description:  an activity performed by a person
Class: factor 
Values:  WALKING,  WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

variable
Description: measured variable names
Class: factor
Values:   tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z, tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z, tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z, tBodyAccJerk-mean()-X, tBodyAccJerk-mean()-Y, tBodyAccJerk-mean()-Z, tBodyAccJerk-std()-X, tBodyAccJerk-std()-Y, tBodyAccJerk-std()-Z, tBodyGyro-mean()-X, tBodyGyro-mean()-Y, tBodyGyro-mean()-Z, tBodyGyro-std()-X, tBodyGyro-std()-Y, tBodyGyro-std()-Z, tBodyGyroJerk-mean()-X, tBodyGyroJerk-mean()-Y, tBodyGyroJerk-mean()-Z, tBodyGyroJerk-std()-X, tBodyGyroJerk-std()-Y, tBodyGyroJerk-std()-Z, tBodyAccMag-mean(), tBodyAccMag-std(), tGravityAccMag-mean(), tGravityAccMag-std(), tBodyAccJerkMag-mean(), tBodyAccJerkMag-std(), tBodyGyroMag-mean(), tBodyGyroMag-std(), tBodyGyroJerkMag-mean(), tBodyGyroJerkMag-std(), fBodyAcc-mean()-X, fBodyAcc-mean()-Y, fBodyAcc-mean()-Z, fBodyAcc-std()-X, fBodyAcc-std()-Y, fBodyAcc-std()-Z, fBodyAccJerk-mean()-X, fBodyAccJerk-mean()-Y, fBodyAccJerk-mean()-Z, fBodyAccJerk-std()-X, fBodyAccJerk-std()-Y, fBodyAccJerk-std()-Z, fBodyGyro-mean()-X, fBodyGyro-mean()-Y, fBodyGyro-mean()-Z, fBodyGyro-std()-X, fBodyGyro-std()-Y, fBodyGyro-std()-Z, fBodyAccMag-mean(), fBodyAccMag-std(), fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std(), fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std(), fBodyBodyGyroJerkMag-mean(), fBodyBodyGyroJerkMag-std()

meanvalue
Description: average of each variable for each activity and each subject
Class: numeric
Values:  from -0.997666072  to  0.974508732

