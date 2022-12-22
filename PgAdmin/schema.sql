-- Creating tables for cleanworld_temp
CREATE TABLE cleanUS_temp (
     dt date NOT NULL,
     Avg_temp  varchar,
     Avg_temp_unc varchar,
     state varchar NULL,
     Country varchar NULL,
     PRIMARY KEY (dt)
);


SELECT * FROM cleanWorld_temp;

-- Creating tables for cleanworld_temp
CREATE TABLE cleanWorld_temp (
     dt date NOT NULL,
	 Land_Avg    varchar NOT NULL,
     Land_Avg_Uncer  varchar NOT NULL,
     LandMax_temp    varchar NOT NULL,
     LandMax_tempUncer varchar NOT NULL,
     LandMin_temp     varchar NOT NULL,
     LandMin_tempUncer varchar NOT NULL,
     LandOceanAvg_temp varchar NOT NULL,
     LandOceanAvg_tempUncer varchar NOT NULL,
	FOREIGN KEY (dt) REFERENCES cleanUS_temp (dt),
	PRIMARY KEY (dt)
);

SELECT * FROM cleanus_temp;

joining tables 
select 
    cl."Date",
	cl."LandOceanAvg_temp",
    c."State",
	c."Country"
INTO "join_df"
from cleanUS c
join "cleanWorld_temp" cl
using ("Date");
