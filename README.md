#wearable_computing
==================
##Documents for this project:
###Code Book: Code Book For Wearable Computing Project

###R script for generating the tidy data
* download.R
  * download raw data and unzip the file. Run this by source('download.R')
  * if the unziped "UCI HAR Dataset" directory is already exist, please skip this script
  * this code runs on Windows; download.R may not fit Mac or other platforms due to different syntax for download among systems.
* run_analysis.R
  * !IMPORTANT!: please put this script next to "UCI HAR Dataset" directory(run_analysis.R and "UCI HAR Dataset" directory must be in the same directory)
  * Output 1: Mean_SD_Wearable_Computing - Extracted means and standard deviations for each measurement in a combined dateset(from train and test), with descriptive labels
  * Output 2: Average_for_Wearable_Computing - independent tidy data set with the average of each variable for each activity and each subject. 

###Tidy data on coursera
* Mean_SD_Wearable_Computing 
* Average_for_Wearable_Computing

