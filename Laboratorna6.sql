﻿SELECT DISTINCT [Стать], [Ім'я] 
FROM dbo.Спортсмен

SELECT *
FROM dbo.Суддя
WHERE [Дата народження] >= '1980-01-01' 
AND [Дата народження] < '1982-11-1'


SELECT [Код спортсмена], dbo.Спортсмен.Прізвище, [Код судді],dbo.Суддя.Прізвище
FROM dbo.Спортсмен, dbo.Суддя 
WHERE [Код спортсмена] = [Код судді];


SELECT [Код судді], Суддя.[Ім'я], Спортсмен.Стать,
[Код спортсмена]
FROM Суддя, Спортсмен
WHERE [Код судді] = [Код спортсмена]
AND Суддя.Стать = Спортсмен.Стать;