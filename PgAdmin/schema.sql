-- Creating tables for cleanglobe_temp
CREATE TABLE cleanglobe_temp (
     Date  NOT NULL,
     Avg_temp  varchar,
     Avg_temp_unc varchar,
     State varchar NULL,
     Country varchar NULL,
     PRIMARY KEY (Date)
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
	FOREIGN KEY (Date) REFERENCES cleanglobe_temp (Date),
	PRIMARY KEY (Date)
);

SELECT * FROM cleanglobe_temp;
SELECT * FROM cleanWorld_temp;

--joining tables 
select 
    cl."Date",
	cl."LandOceanAvg_temp",
	cl."LandAvg_temp",
    c."State",
	c."Country"
INTO "join_df"
from cleanglobal_temp c
join "cleanWorld_temp" cl
using ("Date");
