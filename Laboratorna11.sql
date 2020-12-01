USE master;

BEGIN TRANSACTION 
INSERT INTO dbo.[Країна-господар] VALUES (4, N'Італія',N'Рим',7200000,17000,89000); 
INSERT INTO dbo.[Країна-господар] VALUES (5, N'Португалія',N'Лісабон',4600000,9000,85000); 
INSERT INTO dbo.[Країна-господар] VALUES (6, N'Китай',N'Пекін',1500000000,127000,46000); 
INSERT INTO dbo.[Країна-господар] VALUES (7, N'Японія',N'Токіо',2300000,6000,90000); 
ROLLBACK;