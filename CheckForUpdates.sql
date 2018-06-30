SET @ClientId = 1;


-- not in update and should review and marked as inactive 
select i.*, a.*
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
left join import_iha_new im on i.DGHID = im.DGHID
-- left join tblhistoricalvalue h on h.dghid = i.DGHID 
where (i.ClientID = @ClientId  or i.ClientId is null)
and i.isActive =1
and im.TAX_ID is null;



-- no history yet new this year and need to reviewed and given a hv
select *
from import_iha_new im
left join tblid i  on  i.DGHID = im.DGHID
where i.PropertyID is null;


-- no proeprty id
select *
from tblid i
left join tbladdress a on i.DGHId = a.DGHID
where  i.ClientID = @ClientId and  i.PropertyID = 'NP#';

-- Select *
-- from import_OHI im 
-- where im.TAX_ID = 'NP#';