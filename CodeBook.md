# Code Book

## Subject and Activity

These variables identify the unique subject/activity pair the variables relate to:

 - Subject: the integer subject ID.
 - Activity: the string activity name:
  - Walking
  - Walking Upstairs
  - Walking Downstairs
  - Sitting
  - Standing
  - Laying

From the provided UCI HAR Dataset and using the script run_analysis.R, the decribed tidy data set has been generated.
For further information please see the [README](README.md) file.

# Tidy Data

The variables contained in the data.table can be clustered in 'Ky Variables' and 'Measurement Variables'.

## Key Variables

| Variable                           | Meaning                              | type    |
| ---------------------------------- | ------------------------------------ | ------- |
| Subject                            | Identification's key for the subject | integer |
| Activity                           | Type of measured activity.           | factor  |
|                                    | Valid Values are:                    |         |
|                                    |  - WALKING                           |         |
|                                    |  - WALKING UPSTAIRS                  |         |
|                                    |  - WALKING DOWNSTAIRS                |         |
|                                    |  - SITTING                           |         |
|                                    |  - STANDING                          |         |
|                                    |  - LAYING                            |         |


## Variables containing Measurement

All Measurement types are numeric.

| Measurement                                  | Variable with Measurement's Mean Value | Variable with Measurement's Standard Deviation |
| -------------------------------------------- | -------------------------------------- | ---------------------------------- |
| Time domain body acceleration along X        | TimeBodyAccMeanX                       | TimeBodyAccStdDevX                 |
| Time domain body acceleration along Y        | TimeBodyAccMeanY                       | TimeBodyAccStdDevY                 |
| Time domain body acceleration along Z        | TimeBodyAccMeanZ                       | TimeBodyAccStdDevZ                 |
| Time domain gravity acceleration along X     | TimeGravityAccMeanX                    | TimeGravityAccStdDevX              |
| Time domain gravity acceleration along Y     | TimeGravityAccMeanY                    | TimeGravityAccStdDevY              |
| Time domain gravity acceleration along Z     | TimeGravityAccMeanZ                    | TimeGravityAccStdDevZ              |
| Time domain body jerk along X                | TimeBodyAccJerkMeanX                   | TimeBodyAccJerkStdDevX             |
| Time domain body jerk along Y                | TimeBodyAccJerkMeanY                   | TimeBodyAccJerkStdDevY             |
| Time domain body jerk along Z                | TimeBodyAccJerkMeanZ                   | TimeBodyAccJerkStdDevZ             |
| Time domain gyroscope along X                | TimeBodyGyroMeanX                      | TimeBodyGyroStdDevX                |
| Time domain gyroscope along Y                | TimeBodyGyroMeanY                      | TimeBodyGyroStdDevY                |
| Time domain gyroscope along Z                | TimeBodyGyroMeanZ                      | TimeBodyGyroStdDevZ                |
| Time domain gyroscope jerk along X           | TimeBodyGyroJerkMeanX                  | TimeBodyGyroJerkStdDevX            |
| Time domain gyroscope jerk along Y           | TimeBodyGyroJerkMeanY                  | TimeBodyGyroJerkStdDevY            |
| Time domain gyroscope jerk along Z           | TimeBodyGyroJerkMeanZ                  | TimeBodyGyroJerkStdDevZ            |
| Time domain body acceleration magnitude      | TimeBodyAccMagMean                     | TimeBodyAccMagStdDev               |
| Time domain gravity acceleration magnitude   | TimeGravityAccMagMean                  | TimeGravityAccMagStdDev            |
| Time domain body jerk magnitude              | TimeBodyAccJerkMagMean                 | TimeBodyAccJerkMagStdDev           |
| Time domain gyroscope magnitude              | TimeBodyGyroMagMean                    | TimeBodyGyroMagStdDev              |
| Time domain gyroscope jerk magnitude         | TimeBodyGyroJerkMagMean                | TimeBodyGyroJerkMagStdDev          |
| Frequency domain body acceleration along X   | FrequencyBodyAccMeanX                  | FrequencyBodyAccStdDevX            |
| Frequency domain body acceleration along Y   | FrequencyBodyAccMeanY                  | FrequencyBodyAccStdDevY            |
| Frequency domain body acceleration along Z   | FrequencyBodyAccMeanZ                  | FrequencyBodyAccStdDevZ            |
| Frequency domain body jerk along X           | FrequencyBodyAccJerkMeanX              | FrequencyBodyAccJerkStdDevX        |
| Frequency domain body jerk along Y           | FrequencyBodyAccJerkMeanY              | FrequencyBodyAccJerkStdDevY        |
| Frequency domain body jerk along Z           | FrequencyBodyAccJerkMeanZ              | FrequencyBodyAccJerkStdDevZ        |
| Frequency domain gyroscope along X           | FrequencyBodyGyroMeanX                 | FrequencyBodyGyroStdDevX           |
| Frequency domain gyroscope along Y           | FrequencyBodyGyroMeanY                 | FrequencyBodyGyroStdDevY           |
| Frequency domain gyroscope along Z           | FrequencyBodyGyroMeanZ                 | FrequencyBodyGyroStdDevZ           |
| Frequency domain body acceleration magnitude | FrequencyBodyAccMagMean                | FrequencyBodyAccMagStdDev          |
| Frequency domain body jerk magnitude         | FrequencyBodyBodyAccJerkMagMean        | FrequencyBodyBodyAccJerkMagStdDev  |
| Frequency domain gyroscope magnitude         | FrequencyBodyBodyGyroMagMean           | FrequencyBodyBodyGyroMagStdDev     |
| Frequency domain gyroscope jerk magnitude    | FrequencyBodyBodyGyroJerkMagMean       | FrequencyBodyBodyGyroJerkMagStdDev |
