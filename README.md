# Climate Change (Group Project)
## Overview of the Project
  * The purpose of the analysis was to explore the Earth surface temperature data from 1900 to 2013 to see the trends of 
    of United States temperature,and to used the dataset to build a machine learning model to predict future temperatures in the 
    the United States.
    
### Reasons for Selecting Topic
  * To see if the data support the general consensus of global warming.
  * To see the temperature trends across the major industrial country of the world.
  * To add to the body of proof and evidence of global warming using the global temperature data and Co2 emision data
  

### Data Source Description
   We used the data from a newer compilation put together by the Berkeley Earth, which is affiliated with Lawrence Berkeley
   National Laboratory.The Berkeley Earth Surface Temperature Study combines 1.6 billion temperature reports from 16 
   pre-existing archives.It is nicely packaged and allows for slicing into interesting subsets (for example by country). 
   They publish the source data and the code for the transformations they applied.The second data used was the Co2 emission data,
   which was gathered from the Climate Watch Data portal using CAIT data source. The data is collected for all the countries
   around the world, while covering a span of close to 3 decades(1990-2018)

#### Questions we wish to answer
   * What is the trends of  average land temperature in the major country of the world
   * To confirm evidence of increase land temperature(global warming) from  Dataset
   * To determine most appropriate machine learning model for the datasets
   * What is accuracy and precision of the model

## Database 
We were able to work on the data that we got from Kaggle. An SQL relational database creates tables and links by using primary keys. Postgres suited the project best because the data we got had a lot of datasets. To load the data into the tables, we used a Python package, sqlalchemy, and modules such as crate engine from the created database, "climate_change_db."
When we used "Group By," the orders were not in order, so we used "Order By" to ascend the year from 1900 to 2013. 
Also:
   * Data Structure 
   * Easy access to the network
   * Language (SQL)
Please vist the entity relationship diagram for details about table structure. 

Datasource Link [new_emissions.csv](https://github.com/taaden/Streamers/blob/feven/Resources/new_emissions.csv)

