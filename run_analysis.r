## Read data in
subject_test=read.table("../UCI HAR Dataset/test/subject_test.txt")
X_test=read.table("../UCI HAR Dataset/test/X_test.txt")
y_test=read.table("../UCI HAR Dataset/test/y_test.txt")

subject_train=read.table("../UCI HAR Dataset/train/subject_train.txt")
X_train=read.table("../UCI HAR Dataset/train/X_train.txt")
y_train=read.table("../UCI HAR Dataset/train/y_train.txt")

features=read.table("../UCI HAR Dataset/features.txt")
activity_labels=read.table("../UCI HAR Dataset/activity_labels.txt")

## Put training and test measurement datasets together
data=rbind(X_test,X_train)

## Name columns of measurement data with features dataset
colnames(data)=features$V2

## Extract variables that are means or standard deviations
meanssd=data[,grep("mean()|std()",names(data))]

## Put together subject test and training datasets
subjects=rbind(subject_test,subject_train)
## Put together activity test and training datasets
activ=rbind(y_test,y_train)

## Put together subject IDs, activity IDs, and measurements
alldata=cbind(subjects,activ,meanssd)

## Rename subject ID and activity ID variables
names(alldata)[1]="subject_id"
names(alldata)[2]="activity_id"

## Label activity ID with activity_labels data
alldata$activity_id=factor(alldata$activity_id,labels=(activity_labels$V2))

## Create second dataset with averages for each variable by subject and activity
activity_means=aggregate(alldata[,3:81],by=list(alldata$subject_id,alldata$activity_id),FUN=mean)
names(activity_means)[1]="subject_id"
names(activity_means)[2]="activity_id"

## Write output dataset to a text file
write.table(activity_means, file="activity_means.txt")
