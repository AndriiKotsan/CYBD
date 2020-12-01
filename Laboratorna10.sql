use master;
GO
CREATE PROCEDURE Procedure_0 AS
SELECT Прізвище,[Ім'я],[Спортивне звання]
FROM Спортсмен;
GO
EXEC Procedure_0;
GO;

CREATE FUNCTION FUNCTION0(@price money, @count as int)
RETURNS money
AS
	BEGIN
	if(@price<0 and @count<0)
		return 0
	Return (@price*@count)
END;
GO

Select [Код олімпіади], dbo.FUNCTION0(Бюджет,Площа)  as [Тест]
FROM Олімпіада
INNER JOIN [Країна-господар] ON [Країна-господар].[Код країни-господаря]= Олімпіада.[Код країни-господаря];