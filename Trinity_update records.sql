

update tblid
set isActive = 0
where DGHID in (

'03-001-0155'
,'03-003-0156'
,'03-003-0163'
,'03-003-0159'
,'03-003-0160'
,'03-020-0200'
,'03-021-0203'
,'03-022-0206'
,'03-023-0215'
,'03-026-0225'
,'03-030-0228'
,'03-030-0229'
,'03-030-0230'
,'03-030-0231'
,'03-030-0232'
,'03-039-0273'

);

insert into tblnotes values ('03-001-0155','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-003-0156','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-003-0163','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-003-0159','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-003-0160','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-020-0200','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-021-0203','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-022-0206','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-023-0215','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-026-0225','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-030-0228','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-030-0229','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-030-0230','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-030-0231','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-030-0232','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-039-0273','Closed-2016', '2017-08-13');

update tblid
set isActive = 0
where DGHID in (

'03-024-0217'

);

insert into tblnotes values ('03-024-0217','Removed not on list or Hsitory', '2017-08-13');

update tblid
set isActive = 0
where DGHID in (

'03-030-0233'
,'03-018-0198'

);

insert into tblnotes values ('03-030-0233','Closed-2016', '2017-08-13');
insert into tblnotes values ('03-018-0198','removed BC we dont manage golfcourse', '2017-08-13');

select * from tblnotes;



update tblid i
set i.PropertyID = "06-99-30-070-740"
where i.DGHID = '03-009-0187' ;

insert into tblnotes
values ('03-009-0187', 'correct P# from 06-99-30-070-074 to 06-99-30-070-740', '2017-08-13');

Update tblhistoricalvalue h
 
inner join  (select i.DGHID, s.TaxableValue from tblstart s left join tblid i on s.TaxID = i.PropertyID) j on h.dghid = j.dghid
SET h.HistoricalValue = j.TaxableValue
where h.dghID IN ('03-003-0162'
,'03-009-0185'
,'03-009-0186'
,'03-009-0187'
,'03-022-0205'
,'03-022-0207'
,'03-026-0222'
,'03-026-0223'
,'03-026-0224'
,'03-030-0226'
,'03-030-0227'
,'03-031-0236'
,'03-031-0237'
,'03-031-0238'
,'03-033-0240'
,'03-033-0244'
,'03-033-0245'
,'03-033-0261'
,'03-033-0262'
,'03-039-0266'
,'03-039-0267'
,'03-039-0268'
,'03-039-0269'
,'03-039-0270'
,'03-039-0272'
);


Update tblhistoricalvalue h
 
inner join  (select i.DGHID, s.TaxableValue from tblstart s left join tblid i on s.TaxID = i.PropertyID) j on h.dghid = j.dghid
SET h.HistoricalValueYear = '2016'
where h.dghID IN ('03-003-0162'
,'03-009-0185'
,'03-009-0186'
,'03-009-0187'
,'03-022-0205'
,'03-022-0207'
,'03-026-0222'
,'03-026-0223'
,'03-026-0224'
,'03-030-0226'
,'03-030-0227'
,'03-031-0236'
,'03-031-0237'
,'03-031-0238'
,'03-033-0240'
,'03-033-0244'
,'03-033-0245'
,'03-033-0261'
,'03-033-0262'
,'03-039-0266'
,'03-039-0267'
,'03-039-0268'
,'03-039-0269'
,'03-039-0270'
,'03-039-0272'
) and h.HistoricalValue !=0;



update tblhistoricalvalue
set HistoricalValue = 77030, HistoricalValueYear ='2012'
where DGHID = '03-009-0187' ;

insert into tblnotes
values ('03-009-0187', 'Update base on PRC', '2017-08-13');



update tblhistoricalvalue
set HistoricalValue = 835200, HistoricalValueYear ='2017'
where DGHID = '03-003-0162' ;

insert into tblnotes
values ('03-003-0162', 'real value', '2017-08-13');

select *
from tblnotes
where ClientId = 3
and isActive =1 ;




/*
insert into tblnotes
select DGHID, Notes, '2017-10-14'
from trinityExtra;*/

/*
insert into tblid
select DGHID, PropertyID, ClientId, jurisdictionID, PropertyType, isActive
from trinityExtra;*/

select count(distinct DGHID)
from tblid
where ClientId = 3
and isActive =1 ;

update tblhistoricalvalue
set HistoricalValueYear =2015
where DGHID = '03-022-0211';

/*
update tblhistoricalvalue
set HistoricalValue = 108734, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '03-033-0240' ;

insert into tblnotes
values ('03-033-0240', 'Historical value updated copied tv from other parcel on lot', '2017-10-15');
update tblhistoricalvalue
set HistoricalValue = 2500000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2017
where DGHID = '03-033-281' ;

insert into tblnotes
values ('03-033-281', 'Historical value updated estimated based on 250 per sq ft', '2017-10-15');
update tblhistoricalvalue
set HistoricalValue = 108734, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '03-033-0262' ;

insert into tblnotes
values ('03-033-0262', 'Historical value updated copied tv from other parcel on lot', '2017-10-15');
update tblhistoricalvalue
set HistoricalValue = 108734, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '03-033-0245' ;

insert into tblnotes
values ('03-033-0245', 'Historical value updated copied tv from other parcel on lot', '2017-10-15');




update tbladdress
set Title = 'MOB', Address = '1600 Canton Center South'
where DGHID = '03-008-0177';


update tbladdress
set Title = 'SJMHS Clinical Lab', Address = 'N/A'
where DGHID = '03-023-0214';

update tbladdress
set Title = 'Parcel 9-Center for Digestive Care', Address = 'N/A'
where DGHID = '03-033-0262';

update tbladdress
set Title = '5315 Elliott Dr., Suites 101, 203,303', Address = 'N/A'
where DGHID = '03-033-0265';




 
update tblid i
set i.PropertyID = "06-88-12-476-007"
where i.DGHID = '01-009-0108' ;

insert into tblnotes
values ('01-031-0144', 'updated values was hard coded last year this is what assessor listed it as but 100%', '2017-06-08');



update tblhistoricalvalue
set HistoricalValue = 4610040, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-026-0222' ;

insert into tblnotes
values ('03-026-0222', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 146800, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-009-0186' ;

insert into tblnotes
values ('03-009-0186', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 225940, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-009-0185' ;

insert into tblnotes
values ('03-009-0185', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 14600, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-039-0267' ;

insert into tblnotes
values ('03-039-0267', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 35200, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-039-0269' ;

insert into tblnotes
values ('03-039-0269', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 41700, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-039-0270' ;

insert into tblnotes
values ('03-039-0270', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 46000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-039-0272' ;

insert into tblnotes
values ('03-039-0272', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 8794627, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-022-0205' ;

insert into tblnotes
values ('03-022-0205', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 22000000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-020-0201' ;

insert into tblnotes
values ('03-020-0201', 'Cost of construction $250 sq ft', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 261300, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2015
where DGHID = '03-020-0202' ;

insert into tblnotes
values ('03-020-0202', 'Used SEV as HV', '2017-10-27');

update tblhistoricalvalue
set HistoricalValue = 27650, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2008
where DGHID = '03-022-0211' ;

insert into tblnotes
values ('03-022-0211', 'Used SEV as HV', '2017-10-27');


update tblhistoricalvalue
set HistoricalValue = 3613656.15, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2008
where DGHID = '03-033-0240' ;

insert into tblnotes
values ('03-033-0240', 'Used SEV as HV', '2017-10-27');

*/
