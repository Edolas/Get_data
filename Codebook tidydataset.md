# Codebook for tidydataset
========
The tidy data set is a summarized version of the Human Activity Recognition Using Smartphones Dataset Version 1.0 for the Coursera getting and cleaning data assignment
The Human Activity Recognition Using Smartphones Dataset contains data from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
For the assignment the train and test data were combined and only features that were a mean or a standard deviation were summarized as a mean per subject and activity
========
##Variable description
* Subject - The subject number (1-30)
* Activity - The descriptive name of the activity
* all 66 further variables are features of the sensor signals extracted from the Human Activity Recognition Using Smartphones Dataset containing a mean or standard deviation - the data was then averaged per subject and activity