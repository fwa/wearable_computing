# set working directory
dir.create("wearable_computing")
setwd('wearable_computing')

# get data
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', destfile = "getdata-projectfiles-UCI HAR Dataset.zip")
unzip('getdata-projectfiles-UCI HAR Dataset.zip')
