        The first_tidy data set is the product of tidying the data according to the first four instructions on the coursera website; 
        
        Merges the training and the test sets to create one data set.

        Extracts only the measurements on the mean and standard deviation for            each measurement. 

        Uses descriptive activity names to name the activities in the data set

        Appropriately labels the data set with descriptive variable names. 
It contains 10,299 observations and 81 columns/variables.

The subject variable represents the subjects (numbered 1- 30) as gotten from the subject .txt files in the downloaded folder which are the people were measured.

The Activity variable represents the various activities performed by the subjects, formerly coded in the number format (1-6) but now converted into descriptive activity names.

The other 79 variables represent the mean and standard deviation of the different measures.


The second_tidy data set is the product of grouping the first_tidy dataset by the subject and activity and then summarizing the other variables by their means, i.e the average of each variable corresponding to a particular subject and a particular activity.

The other 79 variables are the aggregated averages of the corresponding variable in the first_tidy dataset