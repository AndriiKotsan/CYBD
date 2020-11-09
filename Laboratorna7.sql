 SELECT*
FROM dbo.Спортсмен
WHERE Прізвище 
LIKE 'А%'


SELECT*
FROM dbo.Спортсмен
WHERE Прізвище 
BETWEEN 'А%' 
AND 'Д%'


SELECT*
FROM dbo.Спортсмен
WHERE [По-батькові] IS NULL


SELECT*
FROM dbo.Спортсмен
WHERE [По-батькові] IS NOT NULL

 
 SELECT*
FROM dbo.Спортсмен
WHERE [Спортивне звання] 
IN ('МС','КМС')


SELECT*
FROM dbo.Спортсмен
WHERE [Спортивне звання] 
NOT IN ('МС','КМС')

 
 SELECT*
FROM dbo.Спортсмен
WHERE [Телефонний номер] > ALL(
SELECT [Телефонний номер]
FROM dbo.Суддя
WHERE [Суддівське звання]='Заслужений суддя') 

 
 SELECT*
FROM dbo.Спортсмен
WHERE [Телефонний номер] > ANY(
SELECT [Телефонний номер]
FROM dbo.Суддя
WHERE [Суддівське звання]='Заслужений суддя')

 
 SELECT*
FROM dbo.Спортсмен
WHERE [Телефонний номер] > SOME(
SELECT [Телефонний номер]
FROM dbo.Суддя
WHERE Стать='Ч'
AND [Телефонний номер]> 300000000) 

 
 
 SELECT [Код спортсмена] FROM Спортсмен
      AS Код
      WHERE EXISTS (
	  SELECT
      [Код спортсмена] FROM Спортсмен
      WHERE Прізвище='Кортез'
      AND [Код спортсмена]=Код.[Код спортсмена])	