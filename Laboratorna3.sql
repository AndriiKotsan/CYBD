ALTER TABLE [dbo].[Спортсмен] 
ADD Історія CHAR(25);

ALTER TABLE [dbo].[Спортсмен]
DROP COLUMN Історія;

ALTER TABLE [dbo].[Спортсмен]
ALTER COLUMN [Ім'я] CHAR(40) NOT NULL;

ALTER TABLE [dbo].[Спортсмен]
ADD CHECK ([Телефонний номер] > 009999999);
