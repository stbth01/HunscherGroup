
-- no history yet
select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
left join import_iha im on i.PropertyID = im.TAX_ID

where i.ClientID =1
and im.TAX_ID is null;


-- not in new list
select *
from import_iha im
left join tblid i  on  im.TAX_ID = i.PropertyID 
where i.PropertyID is null;

-- no proeprty id
select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
where  i.ClientID =1 and  i.PropertyID = 'NP#';

Select *
from import_iha im 
where im.TAX_ID = 'NP#';

select i.DGHID, i.PropertyID, h.HistoricalValue, h.HistoricalValueYear, h.iHistoricalValueEstimated,
 (select ROUND(EXP(SUM(LOG(i.Value))),30)
	from inflationmultipliers i
	where year >= h.HistoricalValueYear) * h.HistoricalValue  as CurrentValue

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_iha im on i.PropertyID = im.TAX_ID

where i.ClientID =1
and i.isActive = 1
and im.TAX_ID is not null;

SELECT DGHID, HistoricalValue, HistoricalValueYear, iHistoricalValueEstimated
, (select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue  as current
FROM hg.tblhistoricalvalue



;


