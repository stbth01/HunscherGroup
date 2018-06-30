#drop table tlkClient;


CREATE TABLE `hg`.`tlkClient`(
    ClientID INT(6) NOT NULL AUTO_INCREMENT,
    `Client` varchar(75) NOT NULL,
    PRIMARY KEY (ClientID)
);


insert into tlkClient (Client)
SELECT distinct Client 
FROM hg.tblimporthv
order by Client;


select *
from tlkClient