# Course project getting and cleaning data
# date 06.19.15
# author : Skhadka
###
# read training and test features
data_train <- read.table('./train/X_train.txt',header=FALSE)
data_test <- read.table('./test/X_test.txt',header=FALSE)

# read subject lists
subj_train <- read.table('./train/subject_train.txt',header=FALSE)
subj_test <- read.table('./test/subject_test.txt',header=FALSE)

# read labels
label_train <- read.table('./train/y_train.txt',header=FALSE)
label_test <- read.table('./test/y_test.txt',header=FALSE)

# read feature names
featurenames <- read.table('./features.txt',header=FALSE)

# read activity names
activitynames <- read.table('./activity_labels.txt',header=FALSE)

#####
# merge features dataset
X <- rbind(data_train,data_test)
# merge subject list
subjects <- rbind(subj_train,subj_test)
# merge labels
labels <- rbind(label_train,label_test)
#####
# Extract only mean and SD for each measurements
ind <- grep("mean\\(\\)|std\\(\\)",featurenames[,2])
# check labels with featurenames[ind,2]

##
# subset of data
X1 <- X[,ind]
# Colnames to subject and labels column
names(subjects) <- c("subjects")
names(labels) <- c("activity")

##
# assign activity names to labels
labels[,1] <- activitynames[labels[,1],2]

# featurenames of interest
# all lower case characters and removing special characters
features_interest = tolower(featurenames[ind,2])
features_interest <- gsub('([[:punct:]])|\\s+','',features_interest)
features_interest <- gsub("^(t)","time",features_interest)
features_interest <- gsub("^(f)","frequency",features_interest)
features_interest <- gsub("mag","magnitude",features_interest)
features_interest <- gsub("acc","accuracy",features_interest)
features_interest <- gsub("bodybody","body",features_interest)
features_interest <- gsub("meanx","meanX",features_interest)
features_interest <- gsub("meany","meanY",features_interest)
features_interest <- gsub("meanz","meanZ",features_interest)
features_interest <- gsub("stdx","stdX",features_interest)
features_interest <- gsub("stdy","stdY",features_interest)
features_interest <- gsub("stdz","stdZ",features_interest)
names(X1) <- features_interest

##
# merge data
tidy_data <- cbind(X1,subjects,labels)
##
# Write tidy datasets
write.table(tidy_data,'tidy_datasets.txt')
