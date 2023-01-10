# Climate Change (Group Project)
## Overview of the Project
  * The purpose of the analysis was to explore the Earth surface temperature data from 1900 to 2013 to see the trends of 
    of world temperature.
  * To explore the Carbondioxide(CO2) emissions data from 1990-2018 to see the trends of world CO2 emissions
  * And to use the dataset to build machine learning model to predict future temperatures of the world.
    
### Reasons for Selecting Topic
  * To see if the data support the general consensus of global warming.
  * To see the temperature trends across the major industrial country of the world.
  * To add to the body of proof and evidence of global warming using the global temperature data and Co2 emision data
  * To help focus the world on major contributor CO2 emissions
  

### Data Source Description
   * We used the data from a newer compilation put together by the Berkeley Earth, which is affiliated with Lawrence Berkeley
     National Laboratory.The Berkeley Earth Surface Temperature Study combined 1.6 billion temperature reports from 16 
     pre-existing archives.It is nicely packaged and allows for slicing into interesting subsets (for example by country). 
     They publish the source data and the code for the transformations they applied.
   * The second data used was the Co2 emission data,which was gathered from the Climate Watch Data portal using CAIT data source.
     The data is collected for all the countries around the world, while covering a span of close to 3 decades(1990-2018)

#### Project Questions
   * What is the trends of  average temperature of the world?
   * To confirm evidence of increase land temperature(global warming) from  Dataset
   * To determine most appropriate machine learning model for the datasets
   * What is accuracy and precision of the model?

#### Database 
  The world avg temperature data from Berkeley Earth and the Co2 emissions data from CAIT data source were cleaned 
  in jupyter notebook and were loaded directly into the PostgreSQL using a Python Package called Sqlalchemy.
  PostgreSQL was chosen because of the size of our dataset (68,504).
  A SQL relational database "climate_change_db" was created from two tables "cleanglobal_temp" and "coemissions".
  Two addition tables,"climate_temp" and "global_climate" were created in the PostgreSQL.
  The "Climate_temp" was created by aggregating the Avg Temp and find the mean value, then Group by "Year" and Order by "Year" ASC.
 
 ![image](https://user-images.githubusercontent.com/64270455/211418016-7df96bea-0c8e-4703-870a-e6b5bd98d6b5.png)

  The "global_climate" table was created by left joining the "climate_temp"table on "Coemissions" table using the code below
 
 ![image](https://user-images.githubusercontent.com/64270455/211419498-5d13ea77-02ff-429e-8c19-6d97b39a6228.png)

 
##### Dashboard
 The emissions.csv and GlobalLandTemperaturesByState.csv was loaded into Tableau Public for visualizations
     
 https://public.tableau.com/views/NetflixBestMovies/ClimateChangestory?:language=en-US&:display_count=n&:origin=viz_share_link
     

