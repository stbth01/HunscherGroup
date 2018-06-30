
SET @ClientId = 1;



--Get over view of current values
select i.DGHID, i.PropertyID, PropertyType, h.HistoricalValue, h.HistoricalValueYear, h.iHistoricalValueEstimated,
 (select ROUND(EXP(SUM(LOG(i.Value))),30)
	from inflationmultipliers i
	where year > h.HistoricalValueYear) * h.HistoricalValue  as CurrentValue

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_OHI im on i.DGHID = im.DGHID

where i.ClientID = 2
and i.isActive = 1
and im.TAX_ID is not null;


--Overview of current value for real Properties
SELECT hv.DGHID, HistoricalValue, HistoricalValueYear, iHistoricalValueEstimated
, (select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue  as current, im.*
FROM hg.tblhistoricalvalue hv
left join import_OHI im on im.dghid = hv.dghid
left join tblid i on i.dghid = hv.dghid
where i.ClientID = 2
and i.isActive = 1
and i.PropertyType = "Real";




--Estimates

--Total TV estimate for active properties
SELECT sum((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear))
FROM hg.tblhistoricalvalue hv
left join import_OHI im on im.dghid = hv.dghid
left join tblid i on i.dghid = hv.dghid
where i.ClientID = 2
and i.isActive = 1;


-- list risk, actual and diff for all active properties
 
 select sum((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue) as totalRick ,

sum(im.2017_TV) as totalActual,

 sum((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue) - 

sum(im.2017_TV) as AdditonalTV
from tblid i
left join import_OHI im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 2
and i.isActive = 1
-- and i.PropertyType = 'Personal'
and i.dghid not in ("02-011-0050");





--Savings


-- Estimates savings for personal

select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_OHI im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType = m.PropertyType

where i.ClientID = 2
and i.isActive = 1
and i.PropertyType = 'Personal';


-- estimated savings for real
select  sum(((select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year > HistoricalValueYear) * HistoricalValue) * (m.MillRate / 1000)) - 

sum(im.2017_TV * (m.MillRate / 1000)) as RealSavings
from tblid i
left join import_OHI im on im.dghid = i.dghid
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join tlkmillrate m on i.jurisdictionID = m.jurisdictionID and i.PropertyType  = m.PropertyType

where i.ClientID = 2
and i.isActive = 1
and i.PropertyType = 'Real'
and i.dghid not in ("02-011-0050") ;


 

--Counts

-- count of properties (needs updated missing new proeprties)

select count(i.DGHID) as CountOfProperties

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
where i.ClientID = 2
and i.isActive = 1;


-- count of jurisdiction

select count(distinct i.jurisdictionID) as CountOfjurisdiction
from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
where i.ClientID = 2
and i.isActive = 1;







