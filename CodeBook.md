# Code Book

The dataset, tidy_data, generated from the script, run_analysis.R, is discribed in this code book. The tidy_data dataset contains 180 rows, or observations, and 68 columns. Each row represents an observation made up of an activity (i.e. LAYING, STANDING, etc.) and a test subject (1, 2, 3, etc.). The columns are described as follow:

<table>
<thead><tr><th>column name</th><th>datatype</th><th>sample values</th></tr></thead>
<tr><td>activity</td><td>Factor</td><td>w/ 6 levels "LAYING","SITTING",..: 1 1 1 1 1 1 1 1 1 1 ...</td></tr>
<tr><td>subject                 </td><td>      int </td><td> 1 2 3 4 5 6 7 8 9 10 ...</td></tr>
<tr><td>tBodyAcc_mean_X_avg     </td><td>      num  </td><td>0.222 0.281 0.276 0.264 0.278 ...</td></tr>
<tr><td>tBodyAcc_mean_Y_avg     </td><td>      num  </td><td>-0.0405 -0.0182 -0.019 -0.015 -0.0183 ...</td></tr>
<tr><td>tBodyAcc_mean_Z_avg     </td><td>      num </td><td> -0.113 -0.107 -0.101 -0.111 -0.108 ...</td></tr>
<tr><td>tBodyAcc_std_X_avg       </td><td>     num </td><td> -0.928 -0.974 -0.983 -0.954 -0.966 ...</td></tr>
<tr><td>tBodyAcc_std_Y_avg      </td><td>      num </td><td> -0.837 -0.98 -0.962 -0.942 -0.969 ...</td></tr>
<tr><td>tBodyAcc_std_Z_avg       </td><td>     num </td><td> -0.826 -0.984 -0.964 -0.963 -0.969 ...</td></tr>
<tr><td>tGravityAcc_mean_X_avg   </td><td>     num </td><td> -0.249 -0.51 -0.242 -0.421 -0.483 ...</td></tr>
<tr><td>tGravityAcc_mean_Y_avg   </td><td>     num </td><td> 0.706 0.753 0.837 0.915 0.955 ...</td></tr>
<tr><td>tGravityAcc_mean_Z_avg   </td><td>     num</td><td>  0.446 0.647 0.489 0.342 0.264 ...</td></tr>
<tr><td>tGravityAcc_std_X_avg    </td><td>    num  </td><td>-0.897 -0.959 -0.983 -0.921 -0.946 ...</td></tr>
<tr><td>tGravityAcc_std_Y_avg    </td><td>     num</td><td>  -0.908 -0.988 -0.981 -0.97 -0.986 ...</td></tr>
<tr><td>tGravityAcc_std_Z_avg    </td><td>     num  </td><td>-0.852 -0.984 -0.965 -0.976 -0.977 ...</td></tr>
<tr><td>tBodyAccJerk_mean_X_avg  </td><td>     num </td><td> 0.0811 0.0826 0.077 0.0934 0.0848 ...</td></tr>
<tr><td>tBodyAccJerk_mean_Y_avg   </td><td>    num </td><td> 0.00384 0.01225 0.0138 0.00693 0.00747 ...</td></tr>
<tr><td>tBodyAccJerk_mean_Z_avg   </td><td>    num </td><td> 0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...</td></tr>
<tr><td>tBodyAccJerk_std_X_avg    </td><td>    num</td><td>  -0.958 -0.986 -0.981 -0.978 -0.983 ...</td></tr>
<tr><td>tBodyAccJerk_std_Y_avg   </td><td>     num </td><td> -0.924 -0.983 -0.969 -0.942 -0.965 ...</td></tr>
<tr><td>tBodyAccJerk_std_Z_avg   </td><td>     num </td><td> -0.955 -0.988 -0.982 -0.979 -0.985 ...</td></tr>
<tr><td>tBodyGyro_mean_X_avg     </td><td>     num  </td><td>-0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...</td></tr>
<tr><td>tBodyGyro_mean_Y_avg      </td><td>    num  </td><td>-0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...</td></tr>
<tr><td>tBodyGyro_mean_Z_avg      </td><td>    num </td><td> 0.149 0.145 0.138 0.17 0.16 ...</td></tr>
<tr><td>tBodyGyro_std_X_avg       </td><td>    num </td><td> -0.874 -0.988 -0.975 -0.973 -0.979 ...</td></tr>
<tr><td>tBodyGyro_std_Y_avg       </td><td>    num </td><td> -0.951 -0.982 -0.977 -0.961 -0.977 ...</td></tr>
<tr><td>tBodyGyro_std_Z_avg        </td><td>   num </td><td> -0.908 -0.96 -0.964 -0.962 -0.961 ...</td></tr>
<tr><td>tBodyGyroJerk_mean_X_avg   </td><td>   num  </td><td>-0.107 -0.102 -0.1 -0.105 -0.102 ...</td></tr>
<tr><td>tBodyGyroJerk_mean_Y_avg   </td><td>   num </td><td> -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...</td></tr>
<tr><td>tBodyGyroJerk_mean_Z_avg   </td><td>   num </td><td> -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...</td></tr>
<tr><td>tBodyGyroJerk_std_X_avg    </td><td>   num </td><td> -0.919 -0.993 -0.98 -0.975 -0.983 ...</td></tr>
<tr><td>tBodyGyroJerk_std_Y_avg    </td><td>   num</td><td>  -0.968 -0.99 -0.987 -0.987 -0.984 ...</td></tr>
<tr><td>tBodyGyroJerk_std_Z_avg    </td><td>   num </td><td> -0.958 -0.988 -0.983 -0.984 -0.99 ...</td></tr>
<tr><td>tBodyAccMag_mean_avg      </td><td>    num </td><td> -0.842 -0.977 -0.973 -0.955 -0.967 ...</td></tr>
<tr><td>tBodyAccMag_std_avg      </td><td>     num  </td><td>-0.795 -0.973 -0.964 -0.931 -0.959 ...</td></tr>
<tr><td>tGravityAccMag_mean_avg   </td><td>    num </td><td> -0.842 -0.977 -0.973 -0.955 -0.967 ...</td></tr>
<tr><td>tGravityAccMag_std_avg    </td><td>    num </td><td> -0.795 -0.973 -0.964 -0.931 -0.959 ...</td></tr>
<tr><td>tBodyAccJerkMag_mean_avg   </td><td>   num </td><td> -0.954 -0.988 -0.979 -0.97 -0.98 ...</td></tr>
<tr><td>tBodyAccJerkMag_std_avg    </td><td>   num </td><td> -0.928 -0.986 -0.976 -0.961 -0.977 ...</td></tr>
<tr><td>tBodyGyroMag_mean_avg     </td><td>    num </td><td> -0.875 -0.95 -0.952 -0.93 -0.947 ...</td></tr>
<tr><td>tBodyGyroMag_std_avg       </td><td>   num </td><td> -0.819 -0.961 -0.954 -0.947 -0.958 ...</td></tr>
<tr><td>tBodyGyroJerkMag_mean_avg  </td><td>   num </td><td> -0.963 -0.992 -0.987 -0.985 -0.986 ...</td></tr>
<tr><td>tBodyGyroJerkMag_std_avg   </td><td>   num </td><td> -0.936 -0.99 -0.983 -0.983 -0.984 ...</td></tr>
<tr><td>fBodyAcc_mean_X_avg        </td><td>   num </td><td> -0.939 -0.977 -0.981 -0.959 -0.969 ...</td></tr>
<tr><td>fBodyAcc_mean_Y_avg        </td><td>   num </td><td> -0.867 -0.98 -0.961 -0.939 -0.965 ...</td></tr>
<tr><td>fBodyAcc_mean_Z_avg       </td><td>    num </td><td> -0.883 -0.984 -0.968 -0.968 -0.977 ...</td></tr>
<tr><td>fBodyAcc_std_X_avg        </td><td>    num</td><td>  -0.924 -0.973 -0.984 -0.952 -0.965 ...</td></tr>
<tr><td>fBodyAcc_std_Y_avg         </td><td>   num </td><td> -0.834 -0.981 -0.964 -0.946 -0.973 ...</td></tr>
<tr><td>fBodyAcc_std_Z_avg        </td><td>    num </td><td> -0.813 -0.985 -0.963 -0.962 -0.966 ...</td></tr>
<tr><td>fBodyAccJerk_mean_X_avg   </td><td>    num </td><td> -0.957 -0.986 -0.981 -0.979 -0.983 ...</td></tr>
<tr><td>fBodyAccJerk_mean_Y_avg   </td><td>    num </td><td> -0.922 -0.983 -0.969 -0.944 -0.965 ...</td></tr>
<tr><td>fBodyAccJerk_mean_Z_avg   </td><td>    num </td><td>-0.948 -0.986 -0.979 -0.975 -0.983 ...</td></tr>
<tr><td>fBodyAccJerk_std_X_avg    </td><td>    num </td><td> -0.964 -0.987 -0.983 -0.98 -0.986 ...</td></tr>
<tr><td>fBodyAccJerk_std_Y_avg     </td><td>   num </td><td> -0.932 -0.985 -0.971 -0.944 -0.966 ...</td></tr>
<tr><td>fBodyAccJerk_std_Z_avg    </td><td>    num  </td><td>-0.961 -0.989 -0.984 -0.98 -0.986 ...</td></tr>
<tr><td>fBodyGyro_mean_X_avg      </td><td>    num </td><td> -0.85 -0.986 -0.97 -0.967 -0.976 ...</td></tr>
<tr><td>fBodyGyro_mean_Y_avg    </td><td>      num</td><td>  -0.952 -0.983 -0.978 -0.972 -0.978 ...</td></tr>
<tr><td>fBodyGyro_mean_Z_avg   </td><td>       num</td><td>  -0.909 -0.963 -0.962 -0.961 -0.963 ...</td></tr>
<tr><td> fBodyGyro_std_X_avg         </td><td>  num </td><td> -0.882 -0.989 -0.976 -0.975 -0.981 ...</td></tr>
<tr><td> fBodyGyro_std_Y_avg         </td><td>  num </td><td> -0.951 -0.982 -0.977 -0.956 -0.977 ...</td></tr>
<tr><td> fBodyGyro_std_Z_avg         </td><td>  num </td><td> -0.917 -0.963 -0.967 -0.966 -0.963 ...</td></tr>
<tr><td> fBodyAccMag_mean_avg         </td><td> num </td><td> -0.862 -0.975 -0.966 -0.939 -0.962 ...</td></tr>
<tr><td> fBodyAccMag_std_avg         </td><td>  num </td><td> -0.798 -0.975 -0.968 -0.937 -0.963 ...</td></tr>
<tr><td> fBodyBodyAccJerkMag_mean_avg </td><td> num </td><td> -0.933 -0.985 -0.976 -0.962 -0.977 ...</td></tr>
<tr><td> fBodyBodyAccJerkMag_std_avg  </td><td> num </td><td> -0.922 -0.985 -0.975 -0.958 -0.976 ...</td></tr>
<tr><td> fBodyBodyGyroMag_mean_avg    </td><td> num </td><td> -0.862 -0.972 -0.965 -0.962 -0.968 ...</td></tr>
<tr><td> fBodyBodyGyroMag_std_avg     </td><td> num </td><td> -0.824 -0.961 -0.955 -0.947 -0.959 ...</td></tr>
<tr><td> fBodyBodyGyroJerkMag_mean_avg</td><td> num</td><td>  -0.942 -0.99 -0.984 -0.984 -0.985 ...</td></tr>
<tr><td> fBodyBodyGyroJerkMag_std_avg </td><td> num </td><td> -0.933 -0.989 -0.983 -0.983 -0.983 ...</td></tr>

</table>
