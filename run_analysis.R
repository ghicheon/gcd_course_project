######################################################################
# 1. merges the training and the test sets to create one data set.
######################################################################

train_x <- read.csv("train/X_train.txt",head=FALSE,sep="")
train_y <- read.csv("train/y_train.txt",head=FALSE)

test_x <- read.csv("test/X_test.txt",head=FALSE,sep="")
test_y <- read.csv("test/y_test.txt",head=FALSE)


x <- rbind( train_x,test_x)
y <- rbind(train_y , test_y)

#check
#print( nrow(x))
#print( nrow(y))

######################################################################
# 2. extracts only the measurements on the mean and standard deviation for each measurement. 
######################################################################

# I got this column numbers from  following command.
#   grep "mean\|std" features.txt  
# maybe, there must be better ways though...

mean_std <- x[ 
 c( 1, 2, 3, 4, 5, 6, 41, 42, 43, 44, 45, 46, 81, 82, 83, 84, 85, 86, 121, 122,
 123, 124, 125, 126, 161, 162, 163, 164, 165, 166, 201, 202, 214, 215, 227, 228,
 240, 241, 253, 254, 266, 267, 268, 269, 270, 271, 294, 295, 296, 345, 346, 347,
 348, 349, 350, 373, 374, 375, 424, 425, 426, 427, 428, 429, 452, 453, 454, 503,
 504, 513, 516, 517, 526, 529, 530, 539, 542, 543, 552 ) ]

######################################################################
# 3. uses descriptive activity names to name the activities in the data set
######################################################################

n<- nrow(y)
y2 <- c()
temp <- y[[1]]
for( which in 1:n )
{
	if( temp[which] == 1 )
		y2 <- c( y2, "walking")
	else if( temp[which] == 2 )
		y2 <- c( y2, "walking_upstairs")
	else if( temp[which] == 3 )
		y2 <- c( y2, "walking_downstairs")
	else if( temp[which] == 4 )
		y2 <- c( y2, "sitting")
	else if( temp[which] == 5 )
		y2 <- c( y2, "standing")
	else if( temp[which] == 6 )
		y2 <- c( y2, "laying")
	
}

y2 <-   data.frame(y2)

########################################################################
# 4. appropriately labels the data set with descriptive variable names. 
########################################################################

# I got this names from  features.txt
# eliminated special characters and modified as lower case

names(mean_std) <-
c( "tbodyaccmeanx", "tbodyaccmeany", "tbodyaccmeanz",
"tbodyaccstdx", "tbodyaccstdy", "tbodyaccstdz",
"tgravityaccmeanx", "tgravityaccmeany", "tgravityaccmeanz",
"tgravityaccstdx", "tgravityaccstdy", "tgravityaccstdz",
"tbodyaccjerkmeanx", "tbodyaccjerkmeany", "tbodyaccjerkmeanz",
"tbodyaccjerkstdx", "tbodyaccjerkstdy", "tbodyaccjerkstdz",
"tbodygyromeanx", "tbodygyromeany", "tbodygyromeanz",
"tbodygyrostdx", "tbodygyrostdy", "tbodygyrostdz",
"tbodygyrojerkmeanx", "tbodygyrojerkmeany", "tbodygyrojerkmeanz",
"tbodygyrojerkstdx", "tbodygyrojerkstdy", "tbodygyrojerkstdz",
"tbodyaccmagmean", "tbodyaccmagstd", "tgravityaccmagmean",
"tgravityaccmagstd", "tbodyaccjerkmagmean", "tbodyaccjerkmagstd",
"tbodygyromagmean", "tbodygyromagstd", "tbodygyrojerkmagmean",
"tbodygyrojerkmagstd", "fbodyaccmeanx", "fbodyaccmeany",
"fbodyaccmeanz", "fbodyaccstdx", "fbodyaccstdy",
"fbodyaccstdz", "fbodyaccmeanfreqx", "fbodyaccmeanfreqy",
"fbodyaccmeanfreqz", "fbodyaccjerkmeanx", "fbodyaccjerkmeany",
"fbodyaccjerkmeanz", "fbodyaccjerkstdx", "fbodyaccjerkstdy",
"fbodyaccjerkstdz", "fbodyaccjerkmeanfreqx", "fbodyaccjerkmeanfreqy",
"fbodyaccjerkmeanfreqz", "fbodygyromeanx", "fbodygyromeany",
"fbodygyromeanz", "fbodygyrostdx", "fbodygyrostdy",
"fbodygyrostdz", "fbodygyromeanfreqx", "fbodygyromeanfreqy",
"fbodygyromeanfreqz", "fbodyaccmagmean", "fbodyaccmagstd",
"fbodyaccmagmeanfreq", "fbodybodyaccjerkmagmean", "fbodybodyaccjerkmagstd",
"fbodybodyaccjerkmagmeanfreq", "fbodybodygyromagmean", "fbodybodygyromagstd",
"fbodybodygyromagmeanfreq","fbodybodygyrojerkmagmean","fbodybodygyrojerkmagstd
",
"fbodybodygyrojerkmagmeanfreq" )

##########################################################################
# 5. from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##########################################################################

write.table(mean_std, file="x_data.txt", sep=" ", row.names=FALSE)
write.table(y2, file="y_data.txt", sep=" ", row.names=FALSE)





