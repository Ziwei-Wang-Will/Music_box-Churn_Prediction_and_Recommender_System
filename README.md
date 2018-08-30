# Music_Box

## Project overview

X music box is a well-known music player platform and interested in Churn Prediction and Recommendation. To help explore this question, they have provided log data containing billions of song play, search, and download records generated by 600K users. 

## Dataset description

#### Play log data: 
'uid', 'device', 'song_id', 'song_type', 'song_name', 'singer', 'play_time', 'song_length', 'paid_flag', 'date'
#### Download log data: 
'uid', 'device', 'song_id', 'song_name', 'singer', 'paid_flag', 'date'
#### Search log data: 
'uid', 'device', 'time_stamp', 'search_query', 'date'

Raw data samples please refer to: https://github.com/will-zw-wang/Music_box/tree/master/raw_log_data_samples


## Project objects

## Objects One: Churn Prediction  
● Validate dataset, identify missing values and find inconsistencies in the dataset.  
● Perform data cleaning and transformation, feature engineering  
● Exploratory data analysis, e.g. find most popular songs, most active users  
● Build user churn prediction model based on user behavior, implement full cycle of prediction modeling from population selection and sampling, label definition, feature exaction and engineering, model selection, performance evaluation.


## Objects Two: Recommendation  
● Validate dataset, identify missing values and find inconsistencies in the dataset.  
● Perform data cleaning and transformation, and construct utility matrix from user behavior data  
● Define implicit ratings from user behavior data  
● Build music recommendation system based on user listening history, including: popularity-based recommender, item-item based recommender, matrix factorization-based recommender.  



