﻿SELECT Олімпіада.Талісман, Олімпіада.Бюджет,Змагання.[Код змагання], Змагання.[Дата проведення змагання]
FROM (Олімпіада INNER JOIN Змагання 
ON Змагання.[Код олімпіади]=Олімпіада.[Код олімпіади])
WHERE Змагання.[Код змагання]>2

SELECT * from dbo.Спортсмен
ORDER BY Прізвище ASC

SELECT  Бюджет, COUNT([Код олімпіади]) as Кількість from dbo.Олімпіада
GROUP BY Олімпіада.Бюджет;

