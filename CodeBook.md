Tidy dataset CodeBook
=====================
1. Abstract
-----------
The tidy data set consists on a cleanup version of the dataset \"Human Activity 
Recognition Using Smartphones\" Dataset Version 1.0 which can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
It merges together the subject identification,the activity he or she was doing 
and the summary of diverse measurments done on multiple experiments.

The following section presents for each variable its name, field width, 
definition and its range of values. Features are dimension-less (unit less) 
since they have been already scaled to (-1..1).

2. Data description
-------------------
|Variable name                  |Field width|Definition                                                                                 |Range|
|-------------------------------|----------:|-------------------------------------------------------------------------------------------|------:|
|**subject**                    |          2|Identifier of the subject who carried out the experiment                                   | 1..30 |
|**activity**                   |         18|Activity the subject was performing                                                        | "WALKING", "WALKING\_UPSTAIRS", "WALKING\_DOWNSTAIRS", "SITTING", "STANDING","LAYING"|
|**t\_bodyacc\_mean\_x**        |         18|Time domain mean of the signal total body acceleration along the X axis                    | -1..1 |
|**t\_bodyacc\_mean\_y**        |         18|Time domain mean of the signal total body acceleration along the Y axis                    | -1..1 |
|**t\_bodyacc\_mean\_z**        |         18|Time domain mean of the signal total body acceleration along the Z axis                    | -1..1 |
|**t\_bodyacc\_std\_x**         |         18|Time domain standard deviation of the signal total body acceleration along the X axis      | -1..1 |
|**t\_bodyacc\_std\_y**         |         18|Time domain standard deviation of the signal total body acceleration along the Y axis      | -1..1 |
|**t\_bodyacc\_std\_z**         |         18|Time domain standard deviation of the signal total body acceleration along the Z axis      | -1..1 |
|**t\_gravityacc\_mean\_x**     |         18|Time domain mean of the signal gravity acceleration along the X axis                       | -1..1 |
|**t\_gravityacc\_mean\_y**     |         18|Time domain mean of the signal gravity acceleration along the Y axis                       | -1..1 |
|**t\_gravityacc\_mean\_z**     |         18|Time domain mean of the signal gravity acceleration along the Z axis                       | -1..1 |
|**t\_gravityacc\_std\_x**      |         18|Time domain standard deviation of the signal total body acceleration along the X axis      | -1..1 |
|**t\_gravityacc\_std\_y**      |         18|Time domain standard deviation of the signal total body acceleration along the Y axis      | -1..1 |
|**t\_gravityacc\_std\_z**      |         18|Time domain standard deviation of the signal total body acceleration along the Z axis      | -1..1 |
|**t\_bodyaccjerk\_mean\_x**    |         18|Time domain mean of the signal body jerk along the X axis                                  | -1..1 |
|**t\_bodyaccjerk\_mean\_y**    |         18|Time domain mean of the signal body jerk along the Y axis                                  | -1..1 |
|**t\_bodyaccjerk\_mean\_z**    |         18|Time domain mean of the signal body jerk along the Z axis                                  | -1..1 |
|**t\_bodyaccjerk\_std\_x**     |         18|Time domain standard deviation of the signal body jerk along the X axis                    | -1..1 |
|**t\_bodyaccjerk\_std\_y**     |         18|Time domain standard deviation of the signal body jerk along the Y axis                    | -1..1 |
|**t\_bodyaccjerk\_std\_z**     |         18|Time domain standard deviation of the signal body jerk along the Z axis                    | -1..1 |
|**t\_bodygyro\_mean\_x**       |         18|Time domain mean of the signal body angular velocity along the X axis                      | -1..1 |
|**t\_bodygyro\_mean\_y**       |         18|Time domain mean of the signal body angular velocity along the Y axis                      | -1..1 |
|**t\_bodygyro\_mean\_z**       |         18|Time domain mean of the signal body angular velocity along the Z axis                      | -1..1 |
|**t\_bodygyro\_std\_x**        |         18|Time domain standard deviation of the signal body angular velocity along the X axis        | -1..1 |
|**t\_bodygyro\_std\_y**        |         18|Time domain standard deviation of the signal body angular velocity along the Y axis        | -1..1 |
|**t\_bodygyro\_std\_z**        |         18|Time domain standard deviation of the signal body angular velocity along the Z axis        | -1..1 |
|**t\_bodygyrojerk\_mean\_x**   |         18|Time domain mean of the signal body gyroscope jerk along the X axis                        | -1..1 |
|**t\_bodygyrojerk\_mean\_y**   |         18|Time domain mean of the signal body gyroscope jerk along the Y axis                        | -1..1 |
|**t\_bodygyrojerk\_mean\_z**   |         18|Time domain mean of the signal body gyroscope jerk along the Z axis                        | -1..1 |
|**t\_bodygyrojerk\_std\_x**    |         18|Time domain standard deviation of the signal body gyroscope jerk along the X axis          | -1..1 |
|**t\_bodygyrojerk\_std\_y**    |         18|Time domain standard deviation of the signal body gyroscope jerk along the Y axis          | -1..1 |
|**t\_bodygyrojerk\_std\_z**    |         18|Time domain standard deviation of the signal body gyroscope jerk along the Z axis          | -1..1 |
|**t\_bodyaccmag\_mean**        |         18|Time domain mean of the magnitude of the body acceleration                                 | -1..1 |
|**t\_bodyaccmag\_std**         |         18|Time domain standard deviation of the magnitude of the body acceleration                   | -1..1 |
|**t\_gravityaccmag\_mean**     |         18|Time domain mean of the magnitude of the gravity acceleration                              | -1..1 |
|**t\_gravityaccmag\_std**      |         18|Time domain standard deviation of the magnitude of the gravity acceleration                | -1..1 |
|**t\_bodyaccjerkmag\_mean**    |         18|Time domain mean of the magnitude of the body jerk                                         | -1..1 |
|**t\_bodyaccjerkmag\_std**     |         18|Time domain standard deviation of the magnitude of the body jerk                           | -1..1 |
|**t\_bodygyromag\_mean**       |         18|Time domain mean of the magnitude of the body angular velocity                             | -1..1 |
|**t\_bodygyromag\_std**        |         18|Time domain standard deviation of the magnitude of the body angular velocity               | -1..1 |
|**t\_bodygyrojerkmag\_mean**   |         18|Time domain mean of the magnitude of the body gyroscope jerk                               | -1..1 |
|**t\_bodygyrojerkmag\_std**    |         18|Time domain standard deviation of the magnitude of the body gyroscope jerk                 | -1..1 |
|**f\_bodyacc\_mean\_x**        |         18|Frequency domain mean of the signal total body acceleration along the X axis               | -1..1 |
|**f\_bodyacc\_mean\_y**        |         18|Frequency domain mean of the signal total body acceleration along the Y axis               | -1..1 |
|**f\_bodyacc\_mean\_z**        |         18|Frequency domain mean of the signal total body acceleration along the Z axis               | -1..1 |
|**f\_bodyacc\_std\_x**         |         18|Frequency domain standard deviation of the signal total body acceleration along the X axis | -1..1 |
|**f\_bodyacc\_std\_y**         |         18|Frequency domain standard deviation of the signal total body acceleration along the Y axis | -1..1 |
|**f\_bodyacc\_std\_z**         |         18|Frequency domain standard deviation of the signal total body acceleration along the Z axis | -1..1 |
|**f\_bodyacc\_meanfreq\_x**    |         18|Frequency domain weighted mean of the signal total body acceleration along the X axis      | -1..1 |
|**f\_bodyacc\_meanfreq\_y**    |         18|Frequency domain weighted mean of the signal total body acceleration along the Y axis      | -1..1 |
|**f\_bodyacc\_meanfreq\_z**    |         18|Frequency domain weighted mean of the signal total body acceleration along the Z axis      | -1..1 |
|**f\_bodyaccjerk\_mean\_x**    |         18|Frequency domain mean of the signal body jerk along the X axis                             | -1..1 |
|**f\_bodyaccjerk\_mean\_y**    |         18|Frequency domain mean of the signal body jerk along the Y axis                             | -1..1 |
|**f\_bodyaccjerk\_mean\_z**    |         18|Frequency domain mean of the signal body jerk along the Z axis                             | -1..1 |
|**f\_bodyaccjerk\_std\_x**     |         18|Frequency domain standard deviation of the signal body jerk along the X axis               | -1..1 |
|**f\_bodyaccjerk\_std\_y**     |         18|Frequency domain standard deviation of the signal body jerk along the Y axis               | -1..1 |
|**f\_bodyaccjerk\_std\_z**     |         18|Frequency domain standard deviation of the signal body jerk along the Z axis               | -1..1 |
|**f\_bodyaccjerk\_meanfreq\_x**|         18|Frequency domain weighted mean of the signal body jerk along the X axis                    | -1..1 |
|**f\_bodyaccjerk\_meanfreq\_y**|         18|Frequency domain weighted mean of the signal body jerk along the Y axis                    | -1..1 |
|**f\_bodyaccjerk\_meanfreq\_z**|         18|Frequency domain weighted mean of the signal body jerk along the Z axis                    | -1..1 |
|**f\_bodygyro\_mean\_x**       |         18|Frequency domain mean of the signal body angular velocity along the X axis                 | -1..1 |
|**f\_bodygyro\_mean\_y**       |         18|Frequency domain mean of the signal body angular velocity along the Y axis                 | -1..1 |
|**f\_bodygyro\_mean\_z**       |         18|Frequency domain mean of the signal body angular velocity along the Z axis                 | -1..1 |
|**f\_bodygyro\_std\_x**        |         18|Frequency domain standard deviation of the signal body angular velocity along the X axis   | -1..1 |
|**f\_bodygyro\_std\_y**        |         18|Frequency domain standard deviation of the signal body angular velocity along the Y axis   | -1..1 |
|**f\_bodygyro\_std\_z**        |         18|Frequency domain standard deviation of the signal body angular velocity along the Z axis   | -1..1 |
|**f\_bodygyro\_meanfreq\_x**   |         18|Frequency domain weighted mean of the signal body angular velocity along the X axis        | -1..1 |
|**f\_bodygyro\_meanfreq\_y**   |         18|Frequency domain weighted mean of the signal body angular velocity along the Y axis        | -1..1 |
|**f\_bodygyro\_meanfreq\_z**   |         18|Frequency domain weighted mean of the signal body angular velocity along the Z axis        | -1..1 |
|**f\_bodyaccmag\_mean**        |         18|Frequency domain mean of the magnitude of the body acceleration                            | -1..1 |
|**f\_bodyaccmag\_std**         |         18|Frequency domain standard deviation of the magnitude of the body acceleration              | -1..1 |
|**f\_bodyaccmag\_meanfreq**    |         18|Frequency domain weighted mean of the magnitude of the body acceleration                   | -1..1 |
|**f\_bodyaccjerkmag\_mean**    |         18|Frequency domain mean of the magnitude of the body jerk                                    | -1..1 |
|**f\_bodyaccjerkmag\_std**     |         18|Frequency domain standard deviation of the magnitude of the body jerk                      | -1..1 |
|**f\_bodyaccjerkmag\_meanfreq**|         18|Frequency domain weighted mean of the magnitude of the body jerk                           | -1..1 |
|**f\_bodygyromag\_mean**       |         18|Frequency domain mean of the magnitude of the body angular velocity                        | -1..1 |
|**f\_bodygyromag\_std**        |         18|Frequency domain standard deviation of the magnitude of the body angular velocity          | -1..1 |
|**f\_bodygyromag\_meanfreq**   |         18|Frequency domain weighted mean of the magnitude of the body angular velocity               | -1..1 |
|**f\_bodygyrojerkmag\_mean**   |         18|Frequency domain mean of the magnitude of the body gyroscope jerk                          | -1..1 |
|**f\_bodygyrojerkmag\_std**    |         18|Frequency domain standard deviation of the magnitude of the body gyroscope jerk            | -1..1 |
|**f\_bodygyrojerkmag\_meanfreq**|        18|Frequency domain weighted mean of the magnitude of the body gyroscope jerk                 | -1..1 |

3. Summary choices
------------------
The tidy data set presents an average `mean()` over the diverse statistics 
calculated (mean, standard deviation and weighted mean) for the same experiment 
runs (same subject, same activity).
