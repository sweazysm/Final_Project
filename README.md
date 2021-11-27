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

### *Data Sources*  
  #### Available Files
  - The World Bank - CO2 emissions 1960-2018 https://data.worldbank.org/indicator/EN.ATM.CO2E.PC
  - Storm events data: https://www.ncei.noaa.gov/pub/data/swdi/stormevents/csvfiles/ 
  - Co2 data: https://github.com/owid/co2-data </br></br></br>  


### *Database*
  
- A PostgreSQL instance has been created on the Google Cloud platform  
- Connection from our local pgAdmin to the Google Cloud PostgreSQL instance has been established  
- A database and 2 tables have been created to store Severe Weather Events and Worldwide Co2 Emissions since 1950
  
![DatabaseDiagram](https://user-images.githubusercontent.com/85706721/142742365-bc1d980b-64c3-4a52-8641-26d2d05d94ed.png)



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
 - Pogchamp
 - Updated ReadME file
 - Reformatted and refactored code for a smoother running code
 - Set up Machine Learning algorithms
 - Researched Machine Learning algorithms to determine best one(s) to be used
  
#### Shalmalee Soman
- Egg
  
#### Cindy McCracken
- Philosophical Juggernaut
  
#### Amilcar Vargas
- Spititual Guidance
