<h1>Codebook for activity_means</h1>

<h2>Study design</h2>

The datasets were downloaded from <a href=https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a> as part of a project for the Coursera course Getting and Cleaning Data <a href=https://class.coursera.org/getdata-004</a>. Technical information on exactly which measurements were taken and further background on the project that produced the dataset can be found at <a href=http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>.

<h2>Variables</h2>
<ul>
<li>subject_id: Identifies the human subject whose reading was taken by number. Takes values 1 through 30.</li>
<li>activity_id: Factor variable which identifies the activity for which the reading was being taken. Takes the following values:
	1 WALKING
	2 WALKING_UPSTAIRS
	3 WALKING_DOWNSTAIRS
	4 SITTING
	5 STANDING
	6 LAYING
</li>
<li>Then follows 79 variables which are the means of means and standard deviations of measurements by subject and activity. The variable names take the following format: measurement-stat()-axis. stat() can be “mean()” (mean) or “std()” (standard deviation). Axis can be X, Y or Z. </li>

With regard to the measurement portion of the measurement variable names, here is some information about the particular measurements taken from the documentation for the datasets:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 



