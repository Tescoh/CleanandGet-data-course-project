train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")        
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")      
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
train_activlabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
test_activlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")        
variable_names <- read.table("./UCI HAR Dataset/features.txt", header = F)
variables <-  variable_names[[2]]
full_set <- rbind(train_set, test_set)
colnames(full_set) <- variables
Activity_labels <- rbind(test_activlabels, train_activlabels)
colnames(Activity_labels) <- "Activity"
subjects <- rbind(subject_test, subject_train)
colnames(subjects) <- "Subject"
full_set <- cbind(full_set, subjects, Activity_labels)

library(tidyverse)
full_set <- as_tibble(full_set, .name_repair = "unique")
first_tidy <- select(full_set, Activity, Subject, 
                            str_subset(names(full_set), "(mean|std)"))
first_tidy$Activity <- as.character(first_tidy$Activity)
activity_names <- c("1"="WALKING","2"="WALKING_UPSTAIRS",
                    "3"="WALKING_DOWNSTAIRS","4"="SITTING","5"="STANDING","6"="LAYING")
first_tidy$Activity <- str_replace_all(first_tidy$Activity, activity_names)
second_tidy <- first_tidy %>% group_by(Subject, Activity) %>% 
        summarise(across(everything(), mean))
        