USE master
GO

DROP DATABASE IF EXISTS Warhammer_Ed2_DB
GO

CREATE DATABASE Warhammer_Ed2_DB
GO

DROP TABLE IF EXISTS Player_Character
GO

CREATE TABLE PLayer_Character
(
CharName varchar(50) NOT NULL,
Race varchar(25) NOT NULL,
CurrentCareer varchar(50) NOT NULL,
PreviousCareers varchar(200),
Age smallint NOT NULL,
Gender varchar(6),
CONSTRAINT chk_gender CHECK(Gender IN ('Female','Male', 'Other')) 
)