I just practice this tool.
I try to modify the document.
 
--  STEPS to create EXCLUDE_VIP set –-
--		Reserved Patients - VIP and test
--		Reserved Cases
--
-- 	>> Run on RT0 (virtual to HT0 source)
--  

SET SCHEMA "SAPYP0";

--**if modification needed, drop table**
Drop table CCT.EXCLUDE_VIP_PATIENT;

--**Create materialized table using sql create script (sample)  check data types and modify if needed**
Create column table CCT.EXCLUDE_VIP_PATIENT
	( PATNR  varchar(20)
 	) UNLOAD PRIORITY 5 AUTO MERGE;
 
--**TRUNCATE table CCT.BASE_FALNR**
truncate table CCT.EXCLUDE_VIP_PATIENT;

--**POPULATE materialized table; add/edit patients as needed ** 
insert into CCT.EXCLUDE_VIP_PATIENT   
	values ('1000175888');
insert into CCT.EXCLUDE_VIP_PATIENT   
	values ('1000122210');
insert into CCT.EXCLUDE_VIP_PATIENT   
	values ('1000844817');
	
/*	
--**Check SQL**
select * 
  from CCT.EXCLUDE_VIP_PATIENT;
	
*/