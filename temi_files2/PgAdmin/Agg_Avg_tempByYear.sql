SELECT cg."Year", avg(cg."Avg_temp") AS Avg_temp,avg(cg."Avg_temp_Uncer") AS Avg_temp_Uncer 
FROM cleanglobal_temp AS cg
Group BY cg."Year";