

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


