

update tblid
set isActive = 0
where DGHID in (

'01-003-0082'
,'01-003-0083'
,'01-003-0084'
,'01-003-0085'
,'01-004-0086'
,'01-004-0087'
,'01-018-0117'
)

select *
from  tblid
where DGHID in (
'01-003-0082'
,'01-003-0083'
,'01-003-0084'
,'01-003-0085'
,'01-004-0086'
,'01-004-0087'
,'01-018-0117'
)

create table tblHistory
select *
from  tblid
where DGHID in (
'01-003-0082'
,'01-003-0083'
,'01-003-0084'
,'01-003-0085'
,'01-004-0086'
,'01-004-0087'
,'01-018-0117'
)

select *
from tblnotes

insert into tblnotes
values ('01-003-0082' , 'moved to Scio so new parcel number', '2017-30-07');
insert into tblnotes values ('01-003-0083', 'moved to Scio so new parcel number', '2017-30-07');
insert into tblnotes values ('01-003-0084', 'moved to Scio so new parcel number', '2017-30-07');
insert into tblnotes values ('01-003-0085', 'moved to Scio so new parcel number', '2017-30-07');
insert into tblnotes values ('01-004-0086','Closed', '2017-30-07');
insert into tblnotes values ('01-004-0087','Unkown but removed', '2017-30-07');
insert into tblnotes values ('01-018-0117','Closed', '2017-30-07');

 
update tblid i
set i.PropertyID = "06-88-12-476-007"
where i.DGHID = '01-009-0108' ;

insert into tblnotes
values ('01-031-0144', 'updated values was hard coded last year this is what assessor listed it as but 100%', '2017-06-08');

select *
from tblhistoricalvalue
where dghid = '01-031-0144';

insert into tblnotes values ('01-031-0144','updated HV from assessor eval', '2017-24-09');

update tblid i
set i.isActive = 1
where i.DGHID = '01-004-0087' ;


/*


update tblhistoricalvalue
set HistoricalValue = 8296080
where dghid = '01-031-0144'
select *
from import_iha
where dghid = '01-031-0144';


insert into tblID
Select DGHID, Tax_ID as PropertyID, 1, 9 , 'Personal', 1 as isActive
from import_iha
where dghid = '01-009-0278';

select *
from tblID
where dghid = '01-009-0278';


select *
from tblAddress
where dghid = '01-009-0278';


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
*/