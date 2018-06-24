
-- not in new list 
select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
left join import_trinity im on i.DGHID = im.DGHID
left join tblhistoricalvalue h on h.dghid = i.DGHID 

where (i.ClientID = 3 or i.ClientId is null)
and i.isActive =1
and im.TAX_ID is null;


-- no history yet
select *
from import_trinity im
left join tblid i  on  i.DGHID = im.DGHID
where i.PropertyID is null;


-- no proeprty id
select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
where  i.ClientID = 3 and  i.PropertyID = 'NP#';

Select *
from import_trinity im 
where im.TAX_ID = 'NP#';

select i.DGHID, i.PropertyID,PropertyType, h.HistoricalValue, h.HistoricalValueYear, h.iHistoricalValueEstimated,
 (select ROUND(EXP(SUM(LOG(i.Value))),30)
	from inflationmultipliers i
	where year > h.HistoricalValueYear) * h.HistoricalValue  as CurrentValue

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_trinity im on i.DGHID = im.DGHID

where i.ClientID = 3
and i.isActive = 1
and im.TAX_ID is not null;


SELECT hv.DGHID, HistoricalValue, HistoricalValueYear, iHistoricalValueEstimated
, (select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue  as current, im.*
FROM hg.tblhistoricalvalue hv
left join import_trinity im on im.dghid = hv.dghid
left join tblid i on i.dghid = hv.dghid
where i.ClientID = 3
and i.isActive = 1;






--
select *
from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_trinity im on i.DGHID = im.DGHID

where i.ClientID = 3
and i.isActive = 0
order by Juristiction;



-- Sum (some Nulls)

/*select i.dghid, im.2017_TV * (m.MillRate / 1000), 
 ((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000) as current
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID =1
and i.isActive = 1;*/

select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal';
-- and i.dghid not in ( '01-020-0155','01-020-0156');



 -- addtional TV
 
 select sum((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue) as totalRick,sum(im.2017_TV) as totalActual, sum((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue) - 

sum(im.2017_TV) as AdditonalTV
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1;



-- count of properties (needs updated missing new proeprties)

select count(i.DGHID) as CountOfProperties

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID


where i.ClientID = 3
and i.isActive = 1;


-- count of jurisdiction

select count(distinct i.jurisdictionID) as CountOfjurisdiction
from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID


where i.ClientID = 3
and i.isActive = 1;



-- additional value is risk minus taxable value

select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal';

select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Real';


select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
left join tblhistoricalvalue h on i.DGHId = h.DGHID
where i.ClientID = 3
and i.isActive = 1
-- and i.PropertyID = '999-00-0093-000'
and title like "Michigan Orthopedic%";



-- value from 2012 is this years plus what was in last year report (last years was an estimate multiply by 4)
select i.dghid, im.2017_TV,  ((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000) as estimate, 

im.2017_TV * (m.MillRate / 1000) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal'
and i.DGHID in ('03-025-280',
'03-008-286',
'03-031-283'
);




select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal'
and i.DGHID in ('03-025-280',
'03-008-286',
'03-031-283'
);

select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal'
and i.DGHID in ('03-015-278');




select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal'
and i.DGHID in ('03-022-0213');



select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal'
and i.DGHID in ('03-015-278');

select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_trinity im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 3
and i.isActive = 1
and i.PropertyType = 'Personal'
and i.DGHID in ('03-015-278');
