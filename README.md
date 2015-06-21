# Started 06.16.15

Read the feature (data_train, data_test), labels (label_train, label_test), 
subject (subj_train subj_test) list files.

Also read activity names (activitynames) and features (featurenames) files.
e.g: data_train <- read.table('./train/X_train.txt',header=FALSE)

merge training and test data
e.g: X <- rbind(data_train,data_test)

Get names of all the features
featurenames <- read.table('./features.txt',header=FALSE)

Get names of activity
activitynames <- read.table('./activity_labels.txt',header=FALSE)

Get indices for features with mean and standard deviation.
ind <- grep("mean\\(\\)|std\\(\\)",featurenames[,2])

Extract subset of features with mean and std
X1 <- X[,ind]

# assign activity names to labels
labels[,1] <- activitynames[labels[,1],2]

Change names of features using
tolower, gsub

Set names of columns
colnames/names work: here names(X1) <- features_interest

Merge datasets
tidy_data <- cbind(X1,subjects,labels)
dimensions
X1: feature dataset 10299x66
subjects: 10299x1
labels: 10299x1
dimensions of merged data set: 10299x68

Output file: tidy_datasets.txt

