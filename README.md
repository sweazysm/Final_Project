# Carbon Emissions and Severe Weather: Is It Raining Cats and Dogs?


## *Presentation*


## Selected topic: 
Carbon emissions effects on severe weather events in the United States.
Can we predict the number of Severe Weather Events based on co2 emissions?

## Reason why the topic was selected: 

Carbon (co2) emissions effects on the environment has risen dramatically over the last few decades, and we intend to show this with our data.  We intend to show that the human population and economic ranking of a country is closely related to said country's output of carbon emissions.  We want to show a correlation between world-wide emissions and severe weather in the United States by using machine learning algorithms predict weather events. The topic of co2 has come back into the public eye, amongst many reasons, due to the shutdown of the world in 2020. Co2 emission levels plummeted as humanity was forced to quarantine. Nature returned to flourish and carbon emission levels began to take a dive. It is not something that often crosses one's mind when going throughout daily life, only perhaps when choosing options that are labeled as "environmentally friendly" or the like. Despite our aloofness, small changes towards and against co2 emissions have effects, and one of the things affected is the weather. In particular, severe weather. Lightning, blizzards, tornadoes etc. Does this increase in co2 emissions correlate to increased severe weather events? Can we predict this using Machine Learning? Let's find out! 

## Questions to answer:              
- Does Worldwide carbon emissions influence severe weather in the United States?
- How does the population of a country effect the output of carbon emissions?
- Do the emissions from the United States have a stronger impact on the U.S. weather than world emissions?  

## *Data Sources*  
  #### Available Files
  - The World Bank - CO2 emissions 1960-2018 https://data.worldbank.org/indicator/EN.ATM.CO2E.PC
  - Storm events data: https://www.ncei.noaa.gov/pub/data/swdi/stormevents/csvfiles/ 
  - Co2 data: https://github.com/owid/co2-data </br></br></br>  
  
  ### Why this Data
  - The World Bank's C02 emissions data yielded a wide variety of stats and categories in relation to C02 emissions. From Gas and C02, Machine Emissions, Cement Emissions etc. You name it, it had it. Spanning from 1950 past the 2000s, this dataset gives us plenty of data to test and expand upon for our Machine Learning models.
  - Storm Events Data was used because it yielded specific Severe Weather Events that could be counted and organized. This allows us to expand upon data to deliver answers such as, "What Severe Weather event occured the most in Texas in 1977?" The specificity of our data has increased as a result.
  - The C02 Data from OWID/GitHub was used because it gave us C02 emissions by country across years in a simple and concise format. This was combined with The World Bank's C02 data to create a more useful Dataframe to use.


### Google Slides
We are working on creating our presentation on Google Slides. https://docs.google.com/presentation/d/1YUyPBFRM54EqJKVPtjYYwc6CXtDkhKhry5Eujj84ILs/edit?usp=sharing


## *Database*
  
- A PostgreSQL instance has been created on the Google Cloud platform.
- Connection from our local pgAdmin to the Google Cloud PostgreSQL instance has been established.
- A database and 3 tables have been created to store Severe Weather Events in the United States from 1950 to 2020, Worldwide Co2 Emissions from 1950 to 2020, and World Population from 1950 to 2020.
- The 'SevereWeatherEvents' table holds 1.6 million rows, the 'WorldCO2byYear' table has 71 rows, and the 'WorldPopByYear' has 71 rows.  These tables are joined by the "Year" column.
- The machine learning code now pulls its data from the database instead of CSV files.
  
![ERD - Events, CO2, Pop](https://user-images.githubusercontent.com/85706721/143969073-7e3c6989-bb15-415a-ae3d-44f50cd6de34.png)

## *Machine Learning*  

- Machine learning models are set up based on the combined datasets of co2 emissions and severe weather
- Data sets were joined on the "Year" column
- Machine learning algorithms to be tested are imblearn.ensemble's "RandomForestClassifier”, "Easy Ensemble (Adaboost) Classifier”, and “RandomForest Regressor”

### Preliminary Data Processing, Data Engineering, Features, Training and Testing


#### Preliminary Data Processing/Preprocessing

Data was processed from the 3 data sources listed above. Data was imported into Jupyter Notebook via Pandas and csv files were broken down into categories ranging from event types, years, months, emissions etc. Many preliminary datasets were made. Datasets were later whittled down to necessary data frames. We removed columns and rows that included data that we were not going to use such as information on gas, cement, metals, null values etc. After all data was processed and unecessary data dropped, data was combined into a single data frame and dtypes were tested to ensure proper values before machine learning algorithms were initiated. 

#### Feature Engineering

Data features were chosen based on what was being tested. Data features were whittled down to co2 emissions, co2 emissions per capita, event type, year, month, and count. From this we pulled out severe weather events such as Blizzards and Tornadoes. Data dealing with population and other specifics were created separately for visualization purposes. Once all data was cleaned and all necessary features were shown in the data frame the data was then ready to be moved into the Machine Learning phase.

#### Training and Testing Groups

Data was split into training and testing groups on the "Count" section as we are testing to see if our machine learning algorithms can accurately predict the number of events that occur for each event type as a result of co2 emissions. We had counts for each event type across the years, such as 80 Tornoados in 1977.

### Model Choice (Machine Learning Algorithms)

The models chosen for Machine Learning were the BalancedRandomForestClassifier, Easy Ensemble (Adaboost) Classifier, and RandomForestRegressor. All of these implemented ensemble learning. All were used in conjunction with supervised learning. Both Ensemble and Supervised Learning are discussed below.


### Ensemble Learning

Our project deals with predictive outcomes. Specifically, which machine learning algorithm has the best predictive outcome when compared to the actual data. We train an algorithm on a chunk of the data and then see how best it's predictions line up with the actual data set. From this, it is best advised to use Ensemble Learning (EL). EL deals with multiple algorithms in order to obtain the best predictions of a set(s) of data as opposed to using one ML algorithm alone. In the vein of EL we implemented ML algorithims such as RandomBasicForestClassifier and AdaBoost in order to determine predictive performance.

### Supervised Learning

Our project's ML algorithms will focus on Supervised Learning. Supervised Learning essentially deals with feeding a ML algorithm inputs and outputs from a set of data in order to teach it. From this data, the ML algorithm then does it's best to predict future outcomes. With this we will feed the ML algorithm, specifically an Ensemble Learner, Supervised Learning data from a good portion of our whole data set. From this we will then determine which ML algorithm makes the best predictions based on the actual data that we have.

### Deep Learning with Neural Networks

Our project also used Deep Learning with a Neural Network. Still using the same data set as the other machine learning algorithms, but using a OneHotEncoder instance with a categorical variable list based on 54 different severe weather event types. Our target was the number of severe weather events, and the features were the different severe weather events in our categorical variable list, year, month, and co2 emissions. Our neural network has 2 hidden layers, with the first layer having 8 nodes, and the second layer having 5 nodes.  Our hidden layers used 'ReLu' activation and our output layer used 'sigmoid' activation.  

We also tried 'leaky ReLu' and 'tanh' activations for our hidden layers, but the accuracy score went down so we stuck with 'ReLu' and 'sigmoid'.  We also tried a variety of number of nodes in the hidden layers, and the number of layers, but this did not change our accuracy score or made it worse.  Changing the number of epochs also did not seem to have an effect on accuracy.  We tried 50, 100, 200, and 500 epochs and all resulted in very similar scores.

We ended up with an accuracy score of 0.094 which is quite low and can mean one of a few things. 
1. The data doesnt have a correlation. 
2. We are not using the right data.
3. We need more or less data. 

### Limitations

The biggest limitation to what is being done (in regards to Machine Learning) is that we are limited only to the data fed into the machine learning algorithm. Because we are using Supervised Learning, it is limited to using only the patterns fed into it. It cannot learn patterns on its own that are not classified or labeled. If an event arises that is not accounted for, it cannot be learned. When it comes to ensemble learning, ensemble learning models cannot work with unknown differences between sample and population.

### Model Changes

Originally we had decided to use Linear Regression Models along with the BalancedRandomForestClassifier. Linear Regression Models are focused on finding the relation between a predictor variable(s) and an outcome variable(s). While our visualizations show that as population increases so does co2 emissions, we were specifically looking to see if our Machine Learning Model(s) could predict the trends rather than the outcomes. While our additional graphs deal with variables such as population and country, the Machine Learning is specifically looking at predicting the accuracy of predicting the reported trend(s). As a result, Linear Regression Model was not used. This also limited us from using models such as SMOTEEN and Clusteroids as those use Linear Regression models. Other ML algorithms were tested with models other than Linear Regression, but to no avail. 


### Training

The models were trained on the data in regards to event type counts and carbon emission data. Our training and test split was on the "Count" of Event Types that occurred as a result of co2 emissions. We want to see if the Machine Learning models can accurately predict the relation and the trends of what our data has shown. If co2 emissions led to 200 Severe Weather Events in 2015, for example, can the Machine Learning model that has been trained on data from 1950 to 2000 accurately predict the actual trend(s).


## *Dashboard*  

The visualization software known as "Tableau" will be used to create visualizations showing trends/patterns in the data.  The visualizations will be added to a dashboard and shown on Google Slides.

https://public.tableau.com/shared/NGNC9XFJM?:display_count=n&:origin=viz_share_link

![draft2](https://user-images.githubusercontent.com/86750935/144114028-d3e42567-da20-49a6-83aa-772dcbc743b6.PNG)

interactive dashboard which lets user chose which specific event type and specific state

![image](https://user-images.githubusercontent.com/86750935/144763664-cb62f68a-a819-49bd-b0d8-63453f006314.png)

interatice map to let user chose event type, severe weather year(s), and specific state.

![image](https://user-images.githubusercontent.com/86750935/144763691-08b04e56-ba01-4152-9c06-6940a2baa69e.png)

Graph thhat shows positive corellation between population increease and increase of c02 emissions


![image](https://user-images.githubusercontent.com/86750935/144763720-a198917a-bd14-4785-8bf4-620e7ba9d3a7.png)

Comparison of U.S. Co2 emissions vs U.S severe weather events, and overall world Co2 emissions vs U.S. Severe Weather Events. There was not enough evidence in the machine learning to prove the accuracy of a correlation between the two, there is a clear upward trend of when co2 in the United States or overall world Co2 emissions increase, so do severe weather events in the U.S.


## *Deliverable 1*

#### Scott Sweazy
- Found CSV Files
- Cleaned up CSV Files via code
- Worked on building GitHub Repository
- Merged Files
- Set-up Machine Learning (ML) Algorithms and Parameters
- Provided many laughs and stories for team members
- Contributed to ReadMe

#### Shalmalee Soman
- Found datasets
- created a visualization through Tableau 
- created a map whuch shows how population of a county relates to their carbon emissions.
- contributed to ReadMe


#### Cindy McCracken
-	Searched for potential datasets
-	Modified ReadMe file
-	Created test datasets
- Researched machine learning models   

  
#### Amilcar Vargas
- Created online database to store data
- Work with PGAdmin to connect data from database
- Cleaned up and merged CSV files using Python and Pandas for Severe Weather and Co2 emission data
- Contributed to ReadMe
- Spiritual Guidance

  
### *Deliverable 2*

#### Scott Sweazy
 - Updated ReadME file
 - Reformatted and refactored code for a smoother running code
 - Set up Machine Learning algorithms
 - Researched Machine Learning algorithms to determine best one(s) to be used
 - Helped on the decision on Emsemble Learning and Supervised Learning
 - Worked on Google Slides for presentation
  
#### Shalmalee Soman
- Updated ReadMe
- Updated Google Slides
- Created visualizations merging datasets on Tableau
- Started a dashboard
  
#### Cindy McCracken
- Updated ReadME file
- Philosophical Juggernaut
- Researched Machine Learning algorithms to determine best one(s) to be used
- Created Google Slides
  
#### Amilcar Vargas
- Updated CreateSchema.sql code and ERD to show correct data types
- Helped with Machine Learning code
- Helped on the decision on Emsemble Learning and Supervised Learning
- Researched Machine Learning algorithms to determine best one(s) to be used
- Updated Machine Learning code to pull data from the database instead of CSV files


 ### *Deliverable 3*
  
 #### Scott Sweazy
 - Pogchamp
 - Updated Machine Learning Code
 - Cleaned up code for Data Preprocessing and Machine Learning 
 - Contributed to speaker notes on Google Slides
 - Helped team members research necessary information for data processing and machine learning algorithms 
  
 #### Shalmalee Soman
 - created the first draft of Tableau story
 - contributed to ReadME
 - edited and committed changes to the data visualizations

 #### Amilcar Vargas
  - Created Deep Learning Code
  - Modified Machine Learning code to pull data from database
  - contributed to ReadMe
  - contributed to Google Slides
  - found and added population data to the database
  
 #### Cindy McCracken
 - Helped review machine learning models
 - Worked on Google Slides
 - Contributed to visualizations
 - Updated Readme
 
 
 ### *Deliverable 4*
 
 #### Cindy McCracken
 
 - worked on dashboard finalizations
 - finalized google slides
 - inserted speaker notes
 - practiced presentation

 #### Amilcar Vargas
 
 - worked on dashboard finalizations
 - finalized google slides
 - inserted speaker notes
 - practiced presentation

 #### Scott Sweazy
 
 - worked on dashboard finalizations
 - finalized google slides
 - inserted speaker notes
 - practiced presentation

 #### Shalmalee Soman
 
 - worked on dashboard finalizations
 - finalized google slides
 - inserted speaker notes
 - practiced presentation
