==================================================================
This Code Book describes the variables in the tidy dataset. Among the 561 variables in the original “features.txt”, 
only variable names containing “mean” or “std” are used. Some special symbols in the feature names, such as ( ) and – 
were either removed or replaced with _ , in order to better suited for R.
==================================================================

Description of the variables:

• Column 1 is the Subject variable, which is the identifier of the subject, totally 30 subjects in the dataset.

• Column 2 is the Activity variable, which is the label of the activity, totally 6 activities in the dataset.

• The rest of the columns correspond to the average value of  each “mean” or “std” containing 
  variables for each activity and each subject. These measurements are derived from the 
  accelerometer and gyroscope 3-axial raw signals. Specifically, for the names of the measurements:
  
  - the prefix “t” denotes a time domain signal,
  - the prefix “f” denotes a frequency domain signal processed by a Fast Fourier Transformation (FFT),
  - “Acc” denotes an acceleration signal from accelerometer,
  - “Gyro” denotes an angular velocity from gyroscope,
  - “XYZ” denote 3-axial signals in the X, Y and Z directions respectively,
  - “Body” denotes the body acceleration signal separated from raw acceleration signal,
  - “Gravity” denotes the gravity acceleration signal separated from raw acceleration signal,
  - “AccJerk” denotes the Jerk signals derived from linear acceleration,
  - “GyroJerk” denotes the Jerk signals derived from angular velocity,
  - “Mag” denotes the magnitude of these three-dimensional signals,
  - “mean” indicates the mean value of a particular variable,
  - “std” indicates the standard deviation of a particular variable, 

The combination of these parameters describes each different aspect of the complex patterns 
of the activity from each subject, e.g. tBodyAcc_mean_X, tGravityAcc_std_Y, fBodyGyro_std_Z.
