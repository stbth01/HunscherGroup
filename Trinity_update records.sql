

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






/*
 
update tblid i
set i.PropertyID = "06-88-12-476-007"
where i.DGHID = '01-009-0108' ;

insert into tblnotes
values ('01-031-0144', 'updated values was hard coded last year this is what assessor listed it as but 100%', '2017-06-08');

*/
