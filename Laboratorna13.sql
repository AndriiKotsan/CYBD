﻿USE master;
GO

SET SHOWPLAN_ALL ON;
GO
SELECT Олімпіада.Бюджет, Олімпіада.[Дата церемонії відкриття], Олімпіада.Талісман,
Олімпіада.[Код олімпіади],[Країна-господар].[Код країни-господаря],[Країна-господар].Назва,
[Країна-господар].Площа, [Країна-господар].[Поштовий індекс], Змагання.[Дата проведення змагання],Змагання.[Час початку]
FROM Олімпіада, [Країна-господар], Змагання
WHERE Олімпіада.[Код олімпіади]>2
AND Столиця LIKE N'Л'
GO
SET SHOWPLAN_ALL OFF;

GO

SET SHOWPLAN_ALL ON;
GO
SELECT Олімпіада.Бюджет, Олімпіада.[Дата церемонії відкриття], Олімпіада.Талісман,
Олімпіада.[Код олімпіади],[Країна-господар].[Код країни-господаря],[Країна-господар].Назва,
[Країна-господар].Площа, [Країна-господар].[Поштовий індекс], Змагання.[Дата проведення змагання],Змагання.[Час початку]
FROM(Олімпіада INNER JOIN [Країна-господар] 
ON Олімпіада.[Код країни-господаря]=[Країна-господар].[Код країни-господаря])
INNER JOIN Змагання ON Змагання.[Код олімпіади]=Олімпіада.[Код олімпіади]
WHERE Олімпіада.[Код олімпіади]>2
AND Столиця LIKE N'Л'
GO
SET SHOWPLAN_ALL OFF;
