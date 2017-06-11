
CREATE temporary TABLE `hg`.`jurisdiction`(
    jurisdictionID INT(6) NOT NULL AUTO_INCREMENT,
    Jurisdiction varchar(255) NOT NULL,
    PRIMARY KEY (jurisdictionID)
);


insert into jurisdiction (Jurisdiction)
SELECT distinct Jurisdiction 
FROM hg.tblhistoricalvalues;

select *
from jurisdiction