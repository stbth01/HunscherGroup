
drop table tblStart

create table tblStart
SELECT concat(LPAD(c.ClientID , 2, '0'),'-', LPAD(j.jurisdictionID, 3 , '0'),'-',lpad(i.tblImportHV_id,4, '0')) as DGHID ,c.ClientID,  j.jurisdictionID, i.*
FROM hg.tblimporthv i
left join tlkclient c on c.Client = i.Client
left join tlkjurisdiction j on j.Jurisdiction = i.Jurisdiction;

select *
from tblStart

drop table tblID

create table tblID
Select DGHID, TaxID as PropertyID, ClientId, jurisdictionID , PropertyType, 1 as isActive
from tblStart

select *
from tblID


drop table tblAddress

create table tblAddress
Select DGHID, Title, Address
from tblStart

select *
from tblAddress

drop table tblHistoricalValue

create table tblHistoricalValue
Select DGHID, HistoricalValue, iHistoricalValueEstimated, HistoricalValueYear
from tblStart

select *
from tblHistoricalValue

drop table tblRisk

create table tblRisk

Select DGHID, Year, TaxableValue, StateEqValue
from tblStart
union
Select DGHID, '2016', 2016_TV, 2016_SV
from tblStart

select *
from tblRisk


drop table tblNotes

create table tblNotes

Select DGHID, Notes, '2016-30-06' as DateModified
from tblStart




select *
from tblNotes




Select i.tblImportHV_id, c.ClientID, j.jurisdictionID, TaxID, PropertyType
FROM hg.tblimporthv i
left join tlkclient c on c.Client = i.Client
left join tlkjurisdiction j on j.Jurisdiction = i.Jurisdiction 




/*
SELECT 
    `tblimporthv`.`Year`,
    `tblimporthv`.`TaxableValue`,
    `tblimporthv`.`StateEqValue`,
    `tblimporthv`.`NextYrRisk`,
    `tblimporthv`.`2016_TV`,
    `tblimporthv`.`2016_SV`,
    `tblimporthv`.`Notes`
FROM `hg`.`tblimporthv`;
*/