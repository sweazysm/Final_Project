## Carbon Emissions and Severe Weather: Is It Raining Cats and Dogs?

### *Presentation*


#### Selected topic: 
Carbon emmissions effects on severe weather events in the United States

#### Reason why the topic was selected: 
Carbon emmision effects on the environment has risen dramatically over the last few decades.  The population and economic ranking of a country is closely related to its output of carbon emissions.  We wanted to see if a correlation between world-wide emissions and severe weather in the United States could be found and use to predict weather events.

#### Questions to answer:              
- Does Worldwide carbon emissions have an effect on severe weather in the United States?
- How does the population of a country effect the output of carbon emissions?
- Does the emissions from the United States have a stronger impact on the U.S. weather than world emissions?  

### *Datasets*  
  #### Available Files
  - The World Bank - CO2 emissions 1960-2018 https://data.worldbank.org/indicator/EN.ATM.CO2E.PC
  - Storm events data: https://www.ncei.noaa.gov/pub/data/swdi/stormevents/csvfiles/ 
  - Co2 data: https://github.com/owid/co2-data </br></br></br>  


### *Database*
  
- A PostgreSQL instance has been created on the Google Cloud platform  
- Connection from our local pgAdmin to the Google Cloud PostgreSQL instance has been established  
- An empty database has been created; tables incoming shortly  




### *Machine Learning*  

- Machine learning models are set up based on the combined datasets of co2 emissions and severe weather
- Data sets were joined on the "Year" column
- Machine learning algorithms to be tested are SKLearn's "Linear Regression" and imblearn.ensemble's "RandomForestClassifier"



### *Dashboard*  

Use Tableau to create visualizations showing trends/patterns
<p width="800" heigth="600" align="center">
<img src = "https://user-images.githubusercontent.com/86750935/142520835-eaf50629-ec6c-40d7-8348-fd5b4056e30f.PNG" width="800" heigth="600" align="center">
</>





### *Communication Protocol*

We all plan to meet Monday through Thursday evenings and Saturday afternoons, through Google Meet. During the times we do not meet over Google Meet, we communicate via Slack, and have a shared google doc that each member can edit at any given time.


### *Deliverable 1*

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


#### Cindy
-	Searched for potential datasets
-	Modified ReadMe file
-	Created test datasets

  
#### Amilcar Vargas
- Has the coolest first name
- Spiritual Guidance
- Created online databases to store data
- Work with PGAdmin to connect data from database
- Cleaned up CSV files
- Contributed to ReadMe
