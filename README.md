<h1>Documentation for aeh-datasci/GetData_CourseProject</h1>

This repo contains the software for reading in and cleaning in some datasets of measurements by a waist-mounted smartphone of activities performed by 30 human subjects while wearing the smartphone. It outputs a dataset of means of those measurements by subject and activity.

<h2>Background</h2>

The datasets were downloaded from <a href=https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a> as part of a project for the Coursera course Getting and Cleaning Data <a href=https://class.coursera.org/getdata-004</a>. Technical information on exactly which measurements were taken and further background on the project that produced the dataset can be found at <a href=http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>.

The datasets used were:
	<ul>
	<li>X_test.txt, X_train.txt: datasets of measurements</li>
	<li>subject_test.txt, subject_train.txt: a list of subject IDs corresponding to the rows in the measurements datasets</li>
	<li>y_test.txt, y_train.txt: a list of activity IDs corresponding to the rows in the measurements datasets</li>
	<li>features.txt: a list of variable names corresponding to the columns in the measurements datasets</li>
	<li>activity_labels.txt: a key identifying the activities in the y_test datasets</li>
	</ul>

<h2>R script: run_analysis.r</h2>

This script reads in the above datasets. It then merges the two measurement datasets and names the columns with the column names from features.txt. Then the script extracts the measurement variables that are means or standard deviations. It then merges the two subject lists with each other and the two activity lists with each other and merges those two resulting datasets with the means and standard deviation data. It then converts the activity ID variable into a factor and labels the values with the values in activity_labels.txt.

It then outputs a dataset activity_means containing the mean of each mean and standard deviation variable for each subject and activity combination. The dataset is in wide format with one row for each subject/activity combination. It then writes activity_means to a text file activity_means.txt.

The codebook for activity_means can be found in codebook.md in this repo.