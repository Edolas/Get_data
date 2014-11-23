#README for run_analysis.R
The R script does the following steps provided the unpacked data is present in the working directory.

* load required libraries
* load test data into variables
* load measurement names and extract unique names
* add descriptive names to activities
* add measurement names to test data
* add subject and activity id to test data
* load train data into variables and add descriptive activity names
* add measurement names to train data
* add subject and activity id to train data
* merge data and load into df for use of dplyr
* extract only mean and stdev data columns
* create data set with average of each variable per subject and activity

The script is annotated inside the code as well for clarity
