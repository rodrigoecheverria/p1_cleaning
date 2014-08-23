Getting and Cleaning Data Course Project
========================================
1. Dataset background
---------------------
The key to understand how the original is shaped is to understand its purpose: 
supervised learning. The general idea in supervised learning is to create a 
system such that, given a set of features of an object, it is able to fit it in 
a category (four legs, a seat, a back -&gt; a chair). It is called supervised 
because the training dataset is labeled beforehand: the correct solutions are 
used in the training to infer the mapping function. 

In the process of learning, the whole dataset is divided in two -- sometimes 
more for tuning -- parts, one for the training of the system and another for its 
testing (once the system is trained, the features in the samples of the test set 
are introduced to the system to see if it is able to produce the correct label 
for it). Features are often denoted by X (capital because it is a vector) and 
labels by y (lowcase because is generally one for each sample), so the mapping 
function would be:
*f: X -> y*

2. The run_analysis.R script
----------------------------
All the tasks required for the project are carried on by the main script, while
it is self-documented, the following sections will detail how somethings where
done and the criteria followed to take certain decisions. Sections are ordered
as the tasks in the assigment for readability sake.
h3. 2.1. Merge the training and the test sets
**Decision:** Inertial Signals folders's files are ignored in the merging process.
Since the final dataset will only contain the data from the mean and the std 
deviation for the measures, using the fine-grained data has no use. This can be 
ratified by TA in https://class.coursera.org/getdata-006/forum/thread?thread_id=43#post-112 .

Given the ideas provided in section 1, how to merge the datasets becomes evident,
for each subset, training and test, the script loads and joins *column-wise* 
the files subject\_&lt;subset&gt;.txt, X_&lt;subset&gt;.txt and y_&lt;subset&gt;.txt
so a row would be:

|subject|      X      | y |

Then, the script merges the training and test subsets *row-wise*.
A particularity is that, given the size of the sets, the script erases the 
generated datasets as they are merged into bigger ones with 
`rm(ds_sub_train, ds_X_train, ds_y_train)`. The final dataset is called `ds`

h3. 2.2. Extracts only the measurements on the mean and standard deviation for 
         each measurement.

To extract the measurements, it loads the features.txt file and uses grep to
search for them. **Decision:** grep searches for mean(), std() and meanFreq(), 
including meanFreq has been object of some discussion in the forums, it is not a 
raw average over frequencies, it is a weighted one, which might be important 
since the study's readme stresses out how they filter out frequencies for 
certain observations, so a weighted mean could be meaningfl for a posterior 
analyst/machine learning algorithm. The rule of thumb for me was "Keep it just 
in case, there must be a reason for both means to be calculated". This can be
ratified by TA in https://class.coursera.org/getdata-006/forum/thread?thread_id=153#comment-562 .

Grep give the number of the required variables, the name can be found by pasting 
`paste0("V", mean_std_column_numbers)`, since paste is vectorized the result 
of that are the columns to subset (plus the subject and label ones)

h3. 2.3. Descriptive activity names to name the activities in the data set

To keep it simple the code just transforms $label into a factor and renames the 
levels according to the ones provided in activity_labels.txt.

h3. 2.4. Appropriately labels the data set with descriptive variable names

The names are already loaded in var_names for the step 2, the result of its grep
can subset it to get only the names needed.

**Decision:** the nomenclature for the new descriptive names will be:
`(f|t)\_lowercasename\_statistic`. This follows directives given in week 4 about
names (lowercase, avoid punctuation and parentesis...) but avoids one, we are 
also advised not to use underscore wich, in this case, would lead to unreadable
variable names. This comment shows how there coexist many convantions on variable
naming in R today: https://class.coursera.org/getdata-006/forum/thread?thread_id=132#post-533 .
The nomenclature avoids also expanding the abreviations like acc to acceleration,
since it would make the variables to long and would not be more meaningful for
a user of this type of dataset.

*Note:* the script also corrects the 'BodyBody' typo in some variables.

h3. 2.5. Creates a tidy data set with the average of each variable for each 
         activity and each subject.
The script creates a tidy **wide** data set by calling `aggregate()` on the 
columns which are not subject nor label and sumarizes them with the `mean()` 
function. The differences between wide and long data and how they relate to 
tidyness can be found in this post https://class.coursera.org/getdata-006/forum/thread?thread_id=236#post-1091

3. Reading the tidy dataset
---------------------------
Data set can be read using `tr <- read.table("tidy_dataset.txt", header = TRUE)` 
         

