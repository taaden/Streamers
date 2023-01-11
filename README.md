# Climate Change (Group Project)

# Overview of the Project
  * The purpose of the analysis was to explore the Earth surface temperature data from 1900 to 2013 to see the trends of 
    of world temperature.
  * To explore the Carbondioxide(CO2) emissions data from 1990-2018 to see the trends of world CO2 emissions
  * And to use the dataset to build machine learning model to predict future temperatures of the world.
    
## Reasons for Selecting Topic
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

##### Database 
  The world avg temperature data from Berkeley Earth and the Co2 emissions data from CAIT data source were cleaned 
  in jupyter notebook and were loaded directly into the PostgreSQL using a Python Package called Sqlalchemy.
  PostgreSQL was chosen because of the size of our dataset (68,504).
  A SQL relational database "climate_change_db" was created from two tables "cleanglobal_temp" and "coemissions".
  Two addition tables,"climate_temp" and "global_climate" were created in the PostgreSQL.
  The "Climate_temp" was created by aggregating the Avg Temp and find the mean value, then Group by "Year" and Order by "Year" ASC.
 
 ![image](https://user-images.githubusercontent.com/64270455/211418016-7df96bea-0c8e-4703-870a-e6b5bd98d6b5.png)
 
 "Climate_temp"table
 
 ![image](https://user-images.githubusercontent.com/64270455/211695266-7ac07096-1b85-4a20-a422-b969c0651d68.png)


  The "global_climate" table was created by left joining the "climate_temp"table on "Coemissions" table using the code below
 
 ![image](https://user-images.githubusercontent.com/64270455/211419498-5d13ea77-02ff-429e-8c19-6d97b39a6228.png)
 
 "global_climate" table
 
 ![image](https://user-images.githubusercontent.com/64270455/211695495-b753e729-6594-4b89-bd8c-8271cc2ad3de.png)

 
 

 
##### Dashboard
 The emissions.csv and GlobalLandTemperaturesByState.csv was loaded into Tableau Public for visualizations, 
 the visualizations were made in a Climate change story:
     
 https://public.tableau.com/views/NetflixBestMovies/ClimateChangestory?:language=en-US&:display_count=n&:origin=viz_share_link
 
 
###### Machine Learning
   The machine learning models used to predict the variability of future average temperature from the mean of average temperatures were;
   the Random Forest and the Decision Tree Models. Both models are example of Supervised learning, they follow
   the basic pattern for supervised learning used in linear regression, for example:
     1) Split the data into input (X) and output (y).
     2) Create an instance of the model with model = LinearRegression().
     3) Train the model with the dataset with model.fit(X,y).
     4) Create predictions with y_pred = model.predict(X).
   
* Preprocessing
   * These two models required endoding labels either by  Pandas or with Scikit-learn's LabelEncoder module,
     which when used  first train the label encoder, then convert the text data into numerical data.
   * These two models also required data scaling and normalization,Scikit-learn's StandardScaler module is used to scale data.
   The model -> fit -> predict/transform workflow is also used when scaling data. The standard scaler standardizes the data,
   which means that each feature would be rescaled so that its mean is 0 and its standard deviation is 1.
   
* Split the Data into Training and Testing Sets
   To train and validate our model, we had to split the features and target sets into training and testing sets.
   This  help determined the relationships between each feature in the features training set and the target training set,
   which was later used to determine the validity of our model using the features and target testing sets.
   
* Fit the Decision Tree Model
   After scaling the features data, the decision tree model can be created and trained. First,the decision tree classifier 
   instance is created and then we train or fit the "model" with the scaled training data.
   
* Make Predictions Using the Testing Data
   
* Evaluate the Model
  This done by  Calculating the confusion matrix
   
 Random Forest model is different from Decison Tree model and have its benefits which includes:
   * Are robust against overfitting as all of those weak learners are trained on different pieces of the data.
   * Can be used to rank the importance of input variables in a natural way.
   * Can handle thousands of input variables without variable deletion.
   * Are robust to outliers and nonlinear data.
   * Run efficiently on large datasets.
   
 ###### Communication Protocol:
  * Slack shall be our main means of communication
  * We shall all try to review all work done on the project daily and comment, approve,or suggest improvement even if when we 
    have no delivarable to submit
  * When we have need to meet on Zoom, it shall be communicated via slack with the link
  * If any of one of us has any need  concerning the project, he or she should reachout through Slack     



