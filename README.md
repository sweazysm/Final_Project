# Carbon Emissions and Severe Weather: Is It Raining Cats and Dogs?

## *Presentation*


## Selected topic: 
Carbon emmissions effects on severe weather events in the United States

## Reason why the topic was selected: 

Carbon (co2) emmisions effects on the environment has risen dramatically over the last few decades, and we intend to show this with our data.  We intend to show that the human population and economic ranking of a country is closely related to said country's output of carbon emissions.  We want to show a correlation between world-wide emissions and severe weather in the United States by using machine learning algorithms predict weather events. The topic of co2 has come back into the public eye, amongst many reasons, due to the shutdown of the world in 2020. Co2 emission levels plumeted as humanity was forced to quarantine. Nature returned to flourish and carbon emission levels began to take a dive. It is not something that often crosses one's mind when going throughout daily life, only perhaps when choosing options that are labled as "environmentally friendly" or the like. Despite our aloofness, small changes towards and againist co2 emissions have effects, and one of the things affected is the weather. In particular, severe weather. Lightning, blizzards, tornadoes etc. Does this increase in co2 emissions correlate to increased severe weather evenets? Can we predict this using Machine Learning? Lets find out! 

## Questions to answer:              
- Does Worldwide carbon emissions have an effect on severe weather in the United States?
- How does the population of a country effect the output of carbon emissions?
- Does the emissions from the United States have a stronger impact on the U.S. weather than world emissions?  

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


# *Database*
  
- A PostgreSQL instance has been created on the Google Cloud platform  
- Connection from our local pgAdmin to the Google Cloud PostgreSQL instance has been established  
- A database and 2 tables have been created to store Severe Weather Events and Worldwide Co2 Emissions 1950 to 2020
  
![DatabaseDiagram2](https://user-images.githubusercontent.com/85706721/143723725-ff1f0c67-beaf-452f-916e-c0c6f89992d4.png)


# *Machine Learning*  

- Machine learning models are set up based on the combined datasets of co2 emissions and severe weather
- Data sets were joined on the "Year" column
- Machine learning algorithms to be tested are imblearn.ensemble's "RandomForestClassifier" and "Easy Ensemble (Adaboost) Classifier"

### Preliminary Data Processing, Data Engineering, Features, Training and Testing

Data was processed from the 3 data sources listed above. Data was imported into Jupyter Notebook via pandas and csv files were broken down into categories ranging from event types, years, months, emissions etc. Many preliminary datasets were made. Datasets were later wittled down to necessary dataframes. Dataframes were created and merged together, unnecessary columns and rows with null-values were removed. After all data was procesed, data was combined into a single dataframe and dtypes were tested to ensure proper values before machine learning. 

Data features were chosen based on what was being tested. Data features were wittled down to co2 emissions, co2 emissions per capta, event type, year, month, and count. Data dealing with population and other specifics were created separatley for visualization purposes. 

Data was split into traning and testing groups on the "Count" section as we are testing to see if our machine learning algorithms can accurately predict the number of events that occur for each event type as a result of co2 emissions.

The models chosen were the BalancedRandomForestClassifier and Easy Ensemble (Adaboost) Classifier, both of which impliment ensemble learning. Both were used in conjuction with supervised learning. Both Ensemble and Supervised Learning are discussed below.


### Ensemble Learning

Our project deals with predictive outcomes. Specifically, which machine learning algorithm has the best predictive outcome when compared to the actual data. We train an algorithm on a chunk of the data and then see how best it's predictions line up with the actual data set. From this, it is best advised to use Ensemble Learning (EL). EL deals with multiple algorithms in order to obtain the best predictions of a set(s) of data as opposed to using one ML algorithm alone. In the vein of EL we implimented ML algorithsm such as RandomBasicForestClassifier and AdaBoost in order to determine predictive performance.

### Supervised Learning

Our project's ML algorithms will focus on Supervised Learning. Supervised Learning essentially deals with feeding a ML algorithm inputs and outputs from a set of data in order to teach it. From this data, the ML algorithm then does it's best to predict future outcomes. With this we will feed the ML algorithm, specifically an Ensemble Learner, Supervised Learning data from a good portion of our whole data set. From this we will then determine which ML algorithm makes the best predictions based on the actual data that we have.

### Limitations

The biggest limitation to what is being done (in regards to Machine Learning) is that we are limited only to the data fed into the machine learning algorithm. Because we are using Supervised Learning, it is limited to using only the patterns fed into it. It cannot learn patterns on its own that are not classified or labeled. If an event arises that is not accounted for, it cannot be learned. When it comes to ensemble learning, ensemble learning models cannot work with unknown differences between sample and population.


# *Dashboard*  

The visualization software known as "Tableau" will be used to create visualizations showing trends/patterns in the data.
<p width="800" heigth="600" align="center">
<img src = "https://user-images.githubusercontent.com/86750935/142520835-eaf50629-ec6c-40d7-8348-fd5b4056e30f.PNG" width="800" heigth="600" align="center">

![US Emissions by Year](https://user-images.githubusercontent.com/86750935/143789052-e4808f40-ffdb-4adf-b407-9bf249ec2107.PNG)




# *Communication Protocol*

We all plan to meet Monday through Thursday evenings and Saturday afternoons, through either Google Meet or Zoom. During the times we do not meet over Google Meet we communicate via Slack and have a shared google doc that each member can edit at any given time. Meetings for Monday and Wednesday generally last 2 hours while meetings on all other days generally last 1-2 hours. Communication via Slack is daily and each team member aids in helping other team members where problems may arise. This includes issue in code, issues in visualizations, issues with ETLs etc. 


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
- Upddated Google Slides
- Created new visualizations
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
- Spiritual Guidance
