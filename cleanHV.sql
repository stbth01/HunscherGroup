select i.DGHID, i.PropertyID, h.HistoricalValue, h.HistoricalValueYear, h.iHistoricalValueEstimated, replace(h.HistoricalValue,',',''), cast(h.HistoricalValue as UNSIGNED) as test, h.dghid = cast(h.HistoricalValue as UNSIGNED)
from tblid i
left join tblhistoricalvalue h on i.DGHId = h.DGHID
where HistoricalValue like '%,%' or HistoricalValue like '%.%'

;


-- update tblhistoricalvalue
set HistoricalValue = replace(HistoricalValue,',','')
where HistoricalValue like '%,%';

select jurisdictionID, Jurisdiction
from tlkjurisdiction