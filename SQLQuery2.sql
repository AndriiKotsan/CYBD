CREATE TABLE Спортсмен (
[Код спортсмена] INT NOT NULL PRIMARY KEY, 
Прізвище NVARCHAR(30) NOT NULL, 
[Ім'я] NVARCHAR(30) NOT NULL, 
[По-батькові] NVARCHAR(30), 
[Телефонний номер] INT NOT NULL, 
[Дата народження] DATE NOT NULL, 
Стать NVARCHAR(7), 
Громадянство NVARCHAR(30) NOT NULL,
[Спортивне звання] NVARCHAR(40) NOT NULL);
CREATE TABLE Суддя (
[Код судді] INT NOT NULL PRIMARY KEY, 
Прізвище NVARCHAR(30) NOT NULL, 
[Ім'я] NVARCHAR(30) NOT NULL, 
[По-батькові] NVARCHAR(30), 
[Телефонний номер] INT NOT NULL, 
[Дата народження] DATE NOT NULL, 
Стать NVARCHAR(7), 
Громадянство NVARCHAR(30) NOT NULL,
[Суддівське звання] NVARCHAR(40) NOT NULL);
CREATE TABLE [Вид спорту] (
[Код виду спорту] INT NOT NULL PRIMARY KEY, 
Назва NVARCHAR(30) NOT NULL, 
[Олімпійська історія] NVARCHAR(100) NOT NULL, 
Правила NVARCHAR(200), 
[Сайт федерації] NVARCHAR(70) NOT NULL);              
CREATE TABLE [Країна-господар] (
[Код країни-господаря] INT NOT NULL PRIMARY KEY, 
Назва NVARCHAR(30) NOT NULL, 
Столиця NVARCHAR(30) NOT NULL, 
Населення INT, 
Площа float,
[Поштовий індекс] INT NOT NULL);
CREATE TABLE Олімпіада (
[Код олімпіади] INT NOT NULL PRIMARY KEY, 
[Код країни-господаря] INT NOT NULL,
[Дата церемонії відкриття] DATE NOT NULL,
[Дата церемонії закриття] DATE NOT NULL,
[Рік проведення] DATE NOT NULL,
Тип NVARCHAR(30) NOT NULL,
Бюджет MONEY NOT NULL,
Талісман NVARCHAR(20) NOT NULL,
FOREIGN KEY ([Код країни-господаря]) REFERENCES [Країна-господар]([Код країни-господаря]) ON DELETE CASCADE
ON UPDATE CASCADE);
CREATE TABLE Змагання(
[Код змагання] INT NOT NULL PRIMARY KEY,
[Код олімпіади] INT NOT NULL, 
[Код спортсмена] INT NOT NULL,
[Код судді] INT NOT NULL,
[Код виду спорту] INT NOT NULL,
[Дата проведення змагання] DATE NOT NULL,
[Час початку] time,
FOREIGN KEY ([Код спортсмена]) REFERENCES Спортсмен([Код спортсмена]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код судді]) REFERENCES Суддя([Код судді]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код виду спорту]) REFERENCES [Вид спорту]([Код виду спорту]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код олімпіади]) REFERENCES Олімпіада([Код олімпіади]) ON DELETE CASCADE ON UPDATE CASCADE
);
