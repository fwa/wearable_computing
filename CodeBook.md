# Code Book For Wearable Computing Project
-----------------------------------------
Project link

Result Datasets:
* Mean_SD_Wearable_Computing.txt
* Average_for_Wearable_Computing.txt

Variables in the datasets:
## 1. Mean_SD_Wearable_Computing.csv

###Subject
the subject who performed the activity. Its range is from 1 to 30

### Activity
activity name. Including 6 activities
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### Means and standard deviations for 33 features for each window
All numeric variables
(name explanation and units are in the end)
 
    tBodyAcc-mean()-X
    tBodyAcc-mean()-Y
    tBodyAcc-mean()-Z
    tGravityAcc-mean()-X
    tGravityAcc-mean()-Y
    tGravityAcc-mean()-Z
    tBodyAccJerk-mean()-X
    tBodyAccJerk-mean()-Y
    tBodyAccJerk-mean()-Z
    tBodyGyro-mean()-X
    tBodyGyro-mean()-Y
    tBodyGyro-mean()-Z
    tBodyGyroJerk-mean()-X
    tBodyGyroJerk-mean()-Y
    tBodyGyroJerk-mean()-Z
    tBodyAccMag-mean()
    tGravityAccMag-mean()
    tBodyAccJerkMag-mean()
    tBodyGyroMag-mean()
    tBodyGyroJerkMag-mean()
    fBodyAcc-mean()-X
    fBodyAcc-mean()-Y
    fBodyAcc-mean()-Z
    fBodyAccJerk-mean()-X
    fBodyAccJerk-mean()-Y
    fBodyAccJerk-mean()-Z
    fBodyGyro-mean()-X
    fBodyGyro-mean()-Y
    fBodyGyro-mean()-Z
    fBodyAccMag-mean()
    fBodyBodyAccJerkMag-mean()
    fBodyBodyGyroMag-mean()
    fBodyBodyGyroJerkMag-mean()
    tBodyAcc-std()-X
    tBodyAcc-std()-Y
    tBodyAcc-std()-Z
    tGravityAcc-std()-X
    tGravityAcc-std()-Y
    tGravityAcc-std()-Z
    tBodyAccJerk-std()-X
    tBodyAccJerk-std()-Y
    tBodyAccJerk-std()-Z
    tBodyGyro-std()-X
    tBodyGyro-std()-Y
    tBodyGyro-std()-Z
    tBodyGyroJerk-std()-X
    tBodyGyroJerk-std()-Y
    tBodyGyroJerk-std()-Z
    tBodyAccMag-std()
    tGravityAccMag-std()
    tBodyAccJerkMag-std()
    tBodyGyroMag-std()
    tBodyGyroJerkMag-std()
    fBodyAcc-std()-X
    fBodyAcc-std()-Y
    fBodyAcc-std()-Z
    fBodyAccJerk-std()-X
    fBodyAccJerk-std()-Y
    fBodyAccJerk-std()-Z
    fBodyGyro-std()-X
    fBodyGyro-std()-Y
    fBodyGyro-std()-Z
    fBodyAccMag-std()
    fBodyBodyAccJerkMag-std()
    fBodyBodyGyroMag-std()
    fBodyBodyGyroJerkMag-std()

	(Variable name explanation and Units: fBodyGyro-mean()-Z, tGravityAccMag-mean()
    prefix 't': time domain signals
    prefix 'f': frequency domain signals
    Body: Signals for body
    Gravity: Signals for Gravity
    Acc: linear acceleration, unit - 'g'
    Gyro: angular velocity, unit - radians/second
    Mag: the magnitude of these signals were calculated using the Euclidean norm
    mean(): Mean value
    std(): Standard deviation
    Jerk: Jerk signals
    -X –Y –Z: 3axials of signals)


## 2. Average_for_Wearable_Computing.csv
### Subject
the subject who performed the activity. Its range is from 1 to 30

### Activity
activity name. Including 6 activities like in the above table

### Means and standard deviations for 33 features
average of each variable (means and standard deviations for 33 features) for each activity and each subject
variable name and explanation are the same as those in above table


2014-4-28
