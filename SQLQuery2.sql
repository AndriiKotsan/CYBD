CREATE TABLE ��������� (
[��� ����������] INT NOT NULL PRIMARY KEY, 
������� NVARCHAR(30) NOT NULL, 
[��'�] NVARCHAR(30) NOT NULL, 
[��-�������] NVARCHAR(30), 
[���������� �����] INT NOT NULL, 
[���� ����������] DATE NOT NULL, 
����� NVARCHAR(7), 
������������ NVARCHAR(30) NOT NULL,
[��������� ������] NVARCHAR(40) NOT NULL);
CREATE TABLE ����� (
[��� ����] INT NOT NULL PRIMARY KEY, 
������� NVARCHAR(30) NOT NULL, 
[��'�] NVARCHAR(30) NOT NULL, 
[��-�������] NVARCHAR(30), 
[���������� �����] INT NOT NULL, 
[���� ����������] DATE NOT NULL, 
����� NVARCHAR(7), 
������������ NVARCHAR(30) NOT NULL,
[��������� ������] NVARCHAR(40) NOT NULL);
CREATE TABLE [��� ������] (
[��� ���� ������] INT NOT NULL PRIMARY KEY, 
����� NVARCHAR(30) NOT NULL, 
[��������� ������] NVARCHAR(100) NOT NULL, 
������� NVARCHAR(200), 
[���� ���������] NVARCHAR(70) NOT NULL);              
CREATE TABLE [�����-��������] (
[��� �����-���������] INT NOT NULL PRIMARY KEY, 
����� NVARCHAR(30) NOT NULL, 
������� NVARCHAR(30) NOT NULL, 
��������� INT, 
����� float,
[�������� ������] INT NOT NULL);
CREATE TABLE ������� (
[��� �������] INT NOT NULL PRIMARY KEY, 
[��� �����-���������] INT NOT NULL,
[���� ������� ��������] DATE NOT NULL,
[���� ������� ��������] DATE NOT NULL,
[г� ����������] DATE NOT NULL,
��� NVARCHAR(30) NOT NULL,
������ MONEY NOT NULL,
������� NVARCHAR(20) NOT NULL,
FOREIGN KEY ([��� �����-���������]) REFERENCES [�����-��������]([��� �����-���������]) ON DELETE CASCADE
ON UPDATE CASCADE);
CREATE TABLE ��������(
[��� ��������] INT NOT NULL PRIMARY KEY,
[��� �������] INT NOT NULL, 
[��� ����������] INT NOT NULL,
[��� ����] INT NOT NULL,
[��� ���� ������] INT NOT NULL,
[���� ���������� ��������] DATE NOT NULL,
[��� �������] time,
FOREIGN KEY ([��� ����������]) REFERENCES ���������([��� ����������]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ����]) REFERENCES �����([��� ����]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� ���� ������]) REFERENCES [��� ������]([��� ���� ������]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([��� �������]) REFERENCES �������([��� �������]) ON DELETE CASCADE ON UPDATE CASCADE
);
