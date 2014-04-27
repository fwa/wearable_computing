#run_analysis.R
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#   Appropriately labels the data set with descriptive activity names. 
#4.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#############
### 1.READ DATA AND MERGE
# read the subject, activity and measurements
train <- read.table('./UCI HAR Dataset/train/X_train.txt', header = F, colClass = 'numeric', comment.char = '')
trainsbj <- read.table('UCI HAR Dataset/train/subject_train.txt')
trainact <- read.table('UCI HAR Dataset/train/y_train.txt')
train <- cbind(trainsbj, trainact, train)

test <- read.table('UCI HAR Dataset/test/X_test.txt', colClass = 'numeric')
testsbj <- read.table('UCI HAR Dataset/test/subject_test.txt')
testact <- read.table('UCI HAR Dataset/test/y_test.txt')
test <- cbind(testsbj, testact, test)

# Merges the training and the test sets to create one data set 'merged'.
merged <- rbind(train,test)

# read feature labels
featuretable <- read.table('UCI HAR Dataset/features.txt', col.names = c('feature_id', 'feature_name'),stringsAsFactors = F)

# Based on labels, Extracts only the measurements on the mean and standard deviation
mean <- grepl('mean()', featuretable$feature_name, fixed = T)    # look for mean() in $feature_name
std <- grepl('std()',featuretable$feature_name, fixed = T)    #fix = T: look for () as charactors by not using regular expression rules. 
MSid <- c(which(mean),which(std))    # list all the index for target variables
MStable <- merged[,c(1,2,MSid+2)]    # have to +2 as subject and activities are before the means and SD

#############
### 2.NAMING
# Appropriately labels the data set with descriptive feature names.
MSname <- featuretable$feature_name[MSid]
colnames(MStable) <- c('subject', 'activity', MSname)

# Uses descriptive activity names to name the activities in the data set
activitytable <- read.table('UCI HAR Dataset/activity_labels.txt', col.names = c('activity_id', 'activity_name'), stringsAsFactors = F)
MStable$activity <- as.factor(MStable$activity)
levels(MStable$activity) <- activitytable$activity_name

#############
### 3. OUTPUT FIRST TIDY DATA
write.csv(MStable,'Mean_SD_Wearable_Computing.txt',row.names=FALSE)    # csv file is better, but only txt files can be uploaded to coursera

#############
### 4. SUMMARY AVERAGE
### Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# create a new column 'group' to split the dataset
MStable$activity <- as.numeric(MStable$activity)
MStable$group <- paste(MStable$subject, MStable$activity, sep='')
MStable$group <- as.numeric(MStable$group)

# split the table, calculate the mean
# Small trick: ubject ID and activity ID can be collapsed with colMeans at the same time
s <- split(MStable, MStable$group)
AVRtable <- t(sapply(s,function(x) colMeans(x)))

# remove the 'group' column
AVRtable <- AVRtable[,-ncol(AVRtable)]

# rename the activity labels
AVRtable <- as.data.frame(AVRtable)
AVRtable$activity <- as.factor(AVRtable$activity)
levels(AVRtable$activity) <- activitytable$activity_name

# output the second tidy data
write.csv(AVRtable,'Average_for_Wearable_Computing.txt',row.names=FALSE)

###############
#> sessionInfo()

#R version 3.1.0 (2014-04-10)
#Platform: i386-w64-mingw32/i386 (32-bit)

#attached base packages:
#[1] stats     graphics  grDevices utils     datasets  methods   base     

#loaded via a namespace (and not attached):
#[1] tools_3.1.0
