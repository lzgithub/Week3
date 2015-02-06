library(reshape2)

## Merge the training and the test sets to create one data set.

# Use cbind to combine subject, activity and measurements
setwd("./UCI HAR Dataset/train")
X_train <- read.table("X_train.txt")
subject_train <- read.table("subject_train.txt")
y_train <- read.table("y_train.txt")
dTrain <- cbind(subject_train,y_train,X_train)

setwd("./UCI HAR Dataset/test")
X_test <- read.table("X_test.txt")
subject_test <- read.table("subject_test.txt")
y_test <- read.table("y_test.txt")
dTest <- cbind(subject_test,y_test,X_test)

# Use rbind to combine train and test data
data <- rbind(dTrain,dTest)



## Extract only the measurements on the mean and standard deviation 
## for each measurement.

# Read features and make the feature names better suited for R 
setwd("./UCI HAR Dataset")
features <- read.table("features.txt")[,2]
features <- gsub("[()]", "", features)
features <- gsub("[-]", "_", features)

# Get only the data on mean and std
index <- grep("mean|std", features)
data<- data[,c(1, 2, index+2)]



## Use descriptive activity names to name the activities in the data set
activity_labels <- read.table("activity_labels.txt")
data[,2] <- activity_labels[data[,2], 2]



## Appropriately label the data set with descriptive variable names.
colnames(data) <- c("Subject", "Activity", features[index])



## Create a second, independent tidy data set with the average
## of each variable for each activity and each subject

melt <- melt(data,id=c("Subject","Activity"),measure.vars=colnames(data)[-(1:2)])
tidy <- dcast(melt, Subject + Activity ~ variable, mean)
write.table(tidy, file="tidy.txt", sep="\t", row.names=FALSE)


