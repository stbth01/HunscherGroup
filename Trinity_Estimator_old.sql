
-- not in new list 
select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
left join import_trinity im on i.PropertyID = im.TAX_ID -- and i.DGHID = im.DGHID
left join tblhistoricalvalue h on h.dghid = i.DGHID 
left join tlkjurisdiction j on i.jurisdictionID = j.jurisdictionID

where (i.ClientID = 3 or i.ClientId is null)
and im.TAX_ID is null
and i.isActive =1;


-- no history yet
select *
from import_trinity im
left join tblid i  on  im.TAX_ID = i.PropertyID 
where i.PropertyID is null;


-- no proeprty id
select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
left join import_trinity t on i.DGHID = t.DGHID
left join tlkjurisdiction j on i.jurisdictionID = j.jurisdictionID
where  i.ClientID =3 and  i.PropertyID in( 'NP#','N/A');

Select *
from import_trinity im 
left join tblid i on i.DGHID = im.DGHID
where im.TAX_ID = 'NP#'
and i.DGHID is null;






select i.DGHID, i.PropertyID,PropertyType, h.HistoricalValue, h.HistoricalValueYear, h.iHistoricalValueEstimated,
 (select ROUND(EXP(SUM(LOG(i.Value))),30)
	from inflationmultipliers i
	where year >= h.HistoricalValueYear) * h.HistoricalValue  as CurrentValue

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_trinity im on i.PropertyID = im.TAX_ID

where i.ClientID =3
and i.isActive = 1
and im.TAX_ID is not null;


SELECT DGHID, HistoricalValue, HistoricalValueYear, iHistoricalValueEstimated
, (select ROUND(EXP(SUM(LOG(i.Value))),30)
from inflationmultipliers i
where year >= HistoricalValueYear) * HistoricalValue  as current
FROM hg.tblhistoricalvalue



;



--
select *

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_trinity im on i.PropertyID = im.TAX_ID

where i.ClientID =3
and i.isActive = 1;



-- Sum

 


-- count of properties (needs updated missing new proeprties)

select count(i.DGHID) as CountOfProperties

from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_trinity im on i.PropertyID = im.TAX_ID

where i.ClientID =3
and i.isActive = 1;


-- count of jurisdiction

select count(distinct i.jurisdictionID) as CountOfjurisdiction
from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_trinity im on i.PropertyID = im.TAX_ID

where i.ClientID =3
and i.isActive = 1;



-- additional value is risk minus taxable value

select sum(2017_TV)
from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
left join import_trinity im on i.PropertyID = im.TAX_ID

where i.ClientID =3
and i.isActive = 1;

-- value from 2012 is this years plus what was in last year report (last years was an estimate multiply by 4)


