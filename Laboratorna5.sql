SELECT Прізвище + ' ' +[Ім'я] AS ПІБ
FROM Спортсмен
UNION SELECT Прізвище + ' ' +[Ім'я] AS ПІБ 
FROM Суддя


SELECT [Код спортсмена] as Перетин
FROM Спортсмен
INTERSECT
SELECT  [Код судді]
FROM Суддя


SELECT [Код спортсмена] FROM Спортсмен
EXCEPT
SELECT [Код судді] FROM Суддя;


SELECT Назва,Населення FROM [Країна-господар]
CROSS JOIN Олімпіада