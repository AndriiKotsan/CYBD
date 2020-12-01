USE master
GO
CREATE TRIGGER Del_Insert
ON [Країна-господар_1]
AFTER DELETE
AS
INSERT INTO [Країна-господар_2]
SELECT*
FROM DELETED;


GO
CREATE TRIGGER UP_Delete
ON [Країна-господар_2]
AFTER UPDATE
AS
DELETE FROM [Країна-господар_1] WHERE [Країна-господар_1].Столиця=(SELECT Столиця FROM DELETED);


GO
CREATE TRIGGER Insertic
ON [Країна-господар_1]
AFTER INSERT
AS
INSERT INTO [Країна-господар_2]([Код країни-господаря],[Назва],[Столиця],[Населення],[Площа],[Поштовий індекс])
SELECT [Код країни-господаря],[Назва],[Столиця],[Населення],[Площа],[Поштовий індекс]
FROM inserted;






DELETE FROM [Країна-господар_1]
WHERE[Код країни-господаря]=2; 

UPDATE [Країна-господар_2] SET Столиця=N'Тест' WHERE [Код країни-господаря]=3;

INSERT INTO [Країна-господар_1] VALUES (5, N'Бельгія',N'Брюсель',2300000,6000,54000);
