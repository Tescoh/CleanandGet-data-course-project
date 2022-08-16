This README explains the codes used for the analysis.

The directory is set so the files can be read properly

The next 7 code lines attempts to read the the files from the directory into R

The files read are the train and test datasets and their corresponding subjects and activity sets.

The variable names is read from the features.txt file in the downloadable material.

The train and test sets are combined using rbind in base r and then assigned to "full_set"

The column names are then created from the variablenames as extracted from the features file

The activity labels for the test and train sets are combined using rbind in base r and then given a column name called "Activity"

The subject labels for the test and train sets are also combined using rbind in base r and then given a column name called "Subject"

The full dataset consisting of the "full_set" and the combined activity and subjects is then created and updated into the "full_set" object

The tidyverse library is loaded

The "full_set" is converted to a tibble so the tidyverse functions could work

select the "Activity", "Subject" variables and any other variables that has "mean" and "std" (short form of standard deviation) and assign to "first_tidy"

coerce the Activity column to Character

replace the coded activities with descriptive names

group the resulting dataset by Subject and Activity and then summarize across all other variables by mean and assign to "second_tidy"

write the "first_tidy" and "second_tidy" tibble objects into .csv files