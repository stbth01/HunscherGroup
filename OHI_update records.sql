
/*
update tblhistoricalvalue
set HistoricalValue = 13700
where dghid = "02-011-0036";





insert into tblID
Select DGHID, Tax_ID as PropertyID, 2, 38 , 'Personal', 1 as isActive
from import_OHI
where dghid = '02-038-0288';

select *
from tblID
where dghid = '02-038-0288';


select *
from tblAddress
where dghid = '02-038-0288';


insert into tblAddress
values ('02-038-0288', 'Oakwood Healthcare Center- Westland', '2001 S. Merriman Rd');


select *
from tblAddress
where dghid = '02-038-0288';



select *
from tblHistoricalValue
where dghid = '02-038-0288';

insert into tblHistoricalValue
values  ('02-038-0288', 35000, 1, 2016);


select *
from tblHistoricalValue
where dghid = '02-038-0288';


select *
from tblRisk
where dghid = '02-038-0288';


insert into tblRisk
values ('02-038-0288', 2017, 0,0);


select *
from tblRisk
where dghid = '02-038-0288';



update tblid
set isActive = 0
where DGHID = "02-011-0043"



insert into tblID
Select DGHID, Tax_ID as PropertyID, 2, 11 , 'Personal', 1 as isActive
from import_OHI
where dghid = '02-038-0288';

select *
from tblID
where dghid = '02-038-0288';


select *
from tblAddress
where dghid = '02-038-0288';


insert into tblAddress
values ('02-038-0288', 'PPD DBN Residency Program', '18181 Oakwood, Suite 410');


select *
from tblAddress
where dghid = '02-038-0288';



select *
from tblHistoricalValue
where dghid = '02-038-0288';

insert into tblHistoricalValue
values  ('02-038-0288', 5000, 1, 2016);


select *
from tblHistoricalValue
where dghid = '02-038-0288';


select *
from tblRisk
where dghid = '02-038-0288';


insert into tblRisk
values ('02-038-0288', 2017, 0,0);


select *
from tblRisk
where dghid = '02-038-0288';






insert into tblID
Select DGHID, Tax_ID as PropertyID, 1, 9 , 'Personal', 1 as isActive
from import_iha
where dghid = '02-038-0288';

select *
from tblID
where dghid = '02-038-0288';


select *
from tblAddress
where dghid = '02-038-0288';


insert into tblAddress
values ('01-009-0278', 'IHA Pulmonary, Critical Care & Sleep Consultants', '775 S. Main Street');


select *
from tblAddress
where dghid = '01-009-0278';



select *
from tblHistoricalValue
where dghid = '01-009-0278';

insert into tblHistoricalValue
values  ('01-009-0278', 5000, 1, 2017);


select *
from tblHistoricalValue
where dghid = '01-009-0278';


select *
from tblRisk
where dghid = '01-009-0278';


insert into tblRisk
values ('01-009-0278', 2017, 0,0);


select *
from tblRisk
where dghid = '01-009-0278';







update import_iha
set DGHID = '01-009-0278'
where import_iha_id = 28;

delete from tblid
where dghid = '01-020-0178';

delete from tbladdress
where dghid = '01-020-0178';

delete from tblhistoricalvalue
where dghid = '01-020-0178';



/*
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




update tblhistoricalvalue 
set HistoricalValue = 5000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '02-007-0009' ;

insert into tblnotes
values ('02-007-0009', '5000 2016 estimate from others', '2017-11-05');
 
 
update tblhistoricalvalue 
set HistoricalValue = 0, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2017
where DGHID = '02-011-0050' ;

insert into tblnotes
values ('02-011-0050', 'Real Not including estiamte', '2017-11-05');
 
 
update tblhistoricalvalue 
set HistoricalValue = 5000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '02-028-0057' ;

insert into tblnotes
values ('02-028-0057', '5000 2016 estimate from others', '2017-11-05');
 
update tblhistoricalvalue 
set HistoricalValue = 380000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '02-035-0072' ;

insert into tblnotes
values ('02-035-0072', '380000 from 2016 Assessment', '2017-11-05');

update tblhistoricalvalue 
set HistoricalValue = 0, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2017
where DGHID = '02-036-0073' ;

insert into tblnotes
values ('02-036-0073', 'Real Not including estiamte', '2017-11-05');
 
update tblhistoricalvalue 
set HistoricalValue = 0, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2017
where DGHID = '02-036-0074' ;

insert into tblnotes
values ('02-036-0074', 'Real Not including estiamte', '2017-11-05');

update tblhistoricalvalue 
set HistoricalValue = 6800, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '02-036-0077' ;

insert into tblnotes
values ('02-036-0077', '6800 from 2016 Assessment', '2017-11-05');

update tblhistoricalvalue 
set HistoricalValue = 30000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '02-037-0078' ;

insert into tblnotes
values ('02-037-0078', 'from 2016 PPS', '2017-11-05');

update tblhistoricalvalue 
set HistoricalValue = 15000, iHistoricalValueEstimated = 1 ,HistoricalValueYear =2016
where DGHID = '02-037-0079' ;

insert into tblnotes
values ('02-037-0079', 'average within jurisdiction', '2017-11-05');

*/