--drop table tlkjurisdiction;


CREATE TABLE `hg`.`tlkjurisdiction`(
    jurisdictionID INT(6) NOT NULL AUTO_INCREMENT,
    Jurisdiction varchar(255) NOT NULL,
    PRIMARY KEY (jurisdictionID)
);


insert into tlkjurisdiction (Jurisdiction)
SELECT distinct Jurisdiction 
FROM hg.tblimporthv
order by Jurisdiction;

select *
from tlkjurisdiction