CREATE DATABASE DoctorWho;

USE DoctorWho;

DROP TABLE IF EXISTS tblDoctor;
CREATE TABLE tblDoctor (
	DoctorId INT IDENTITY(1,1) PRIMARY KEY,
	DoctorNumber INT,
	DoctorName VARCHAR(50),
	BirthDate DATE,
	FirstEpisodeDate DATE,
	LastEpisodeDate DATE
)

DROP TABLE IF EXISTS tblAuthor;
CREATE TABLE tblAuthor (
	AuthorId INT IDENTITY(1,1) PRIMARY KEY,
	AuthorName VARCHAR(50),
)

DROP TABLE IF EXISTS tblEnemy;
CREATE TABLE tblEnemy (
	EnemyId INT IDENTITY(1,1) PRIMARY KEY,
	EnemyName VARCHAR(50),
	Descrpition VARCHAR(255)
)

DROP TABLE IF EXISTS tblCompanion;
CREATE TABLE tblCompanion (
	CompanionId INT IDENTITY(1,1) PRIMARY KEY,
	CompanionName VARCHAR(50),
	WhoPlayed VARCHAR(255)
)

DROP TABLE IF EXISTS tblEpisode;
CREATE TABLE tblEpisode (
	EpisodeId INT IDENTITY(1,1) PRIMARY KEY,
	SeriesNumber INT,
	EpisodeNumber INT,
	EpisodeType VARCHAR(50),
	Title VARCHAR(50),
	EpisodeDate DATE,
	AuthorId INT,
	DoctorId INT,
	Notes VARCHAR(255),
	CONSTRAINT FK_EpisodeAuthor FOREIGN KEY (AuthorId)
		REFERENCES tblAuthor(AuthorId),
	CONSTRAINT FK_EpisodeDoctor FOREIGN KEY (DoctorId)
		REFERENCES tblDoctor(DoctorId)
)

DROP TABLE IF EXISTS tblEpisodeCompanion;
CREATE TABLE tblEpisodeCompanion (
	EpisodeCompanionId INT IDENTITY(1,1) PRIMARY KEY,
	EpisodeId INT,
	CompanionId INT,
	CONSTRAINT FK_EpisodeCompanionEpisode FOREIGN KEY (EpisodeId)
		REFERENCES tblEpisode(EpisodeId),
	CONSTRAINT FK_EpisodeCompanionCompanion FOREIGN KEY (CompanionId)
		REFERENCES tblCompanion(CompanionId)
)

DROP TABLE IF EXISTS tblEpisodeEnemy;
CREATE TABLE tblEpisodeEnemy (
	EpisodeEnemyId INT IDENTITY(1,1) PRIMARY KEY,
	EpisodeId INT,
	EnemyId INT,
	CONSTRAINT FK_EpisodeEnemyEpisode FOREIGN KEY (EpisodeId)
		REFERENCES tblEpisode(EpisodeId),
	CONSTRAINT FK_EpisodeEnemyEnemy FOREIGN KEY (EnemyId)
		REFERENCES tblEnemy(EnemyId)
)