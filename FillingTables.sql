
INSERT INTO tblAuthor
	(AuthorName) 
	VALUES 
	('Anand East'),
	('Kelsea Frye'),
	('Rohaan Mcgill'),
	('Eden Hines'),
	('Belle Daugherty')
	;

INSERT INTO tblDoctor
	(DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, LastEpisodeDate) 
	VALUES 
	('+970 569-138-138', 'Zidan Keller', '1991-05-11', '2022-04-01', '2022-04-29'),
	('+970 598-345-678', 'Casper Redman', '1990-09-25', '2019-08-05', '2020-05-12'),
	('+970 569-876-543', 'Juan Dunlop', '1986-02-01', '2018-09-18', '2021-10-20'),
	('+970 569-100-112', 'Kaylem Barrett', '1984-12-20', '2019-02-21', '2021-11-15'),
	('+970 597-778-278', 'Jeff Mcdonald', '1996-06-10', '2016-02-07', '2017-11-02')
	;

INSERT INTO tblEpisode
	(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
	VALUES 
	(1, 1, 'Action', 'A mysterious enemy has appeared', '2016-02-07', 2, 4, 'something happend1'),
	(1, 5, 'Drama', 'Goodbye Linda', '2017-11-02', 1, 5, 'I am not sure what to say'),
	(2, 3, 'Drama', 'A new hope', '2018-09-28', 4, 1, 'Randa keef 7alek?'),
	(2, 8, 'Comedy', 'Lets take a break', '2020-12-25', 3, 3, 'a7la 7alqa'),
	(3, 12, 'Action and Drama', 'Beginning of the End', '2022-02-16', 5, 2, 'important notes')
	;

-- maybe I need more episodes
INSERT INTO tblEpisode
	(SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
	VALUES 
	(1, 2, 'Action and Drama', 'Betrayal', '2016-05-03', 2, 4, 'la la la la la'),
	(1, 12, 'new Type', 'new Title', '2018-03-12', 4, 5, 'I am not sure what to say again'),
	(2, 1, 'Comedy', 'Miss me?', '2018-04-19', 2, 1, 'Randa keef 7alek? again'),
	(3, 4, 'Action', 'Fire all the way', '2021-01-26', 3, 3, '7reeeeeqa'),
	(3, 5, 'Action', 'etfeelna alnaar ya walad', '2021-05-27', 5, 2, 'important notes akeed')
	;

INSERT INTO tblEnemy
	(EnemyName, Descrpition)
	VALUES
	('Lara Wells', 'crazy girl or something'),
	('Aviana White', 'Rich psycho girl'),
	('Jameel Moreno', 'random guy who is an enemy in the series'),
	('Georga Dawson', 'another random guy who is an enemy in the series'),
	('Clodagh Chapman', 'he knows the final boss'),
	('Rhodri Bravo', 'the final boss himself')
	;

INSERT INTO tblCompanion
	(CompanionName, WhoPlayed)
	VALUES
	('Karl Davie', 'I dont know what this column is'),
	('Linda Somran', 'The girl who died in episode 5'),
	('Marvin Irving', 'this guy comes from nowhere to help'),
	('Zachariah Roberts', 'german, but not a bad gu somehow'),
	('Emmanuella Avalos', 'I still dont know what this column is, but throwing data')
	;

INSERT INTO tblEpisodeEnemy
	(EpisodeId, EnemyId)
	VALUES
	(1, 5),
	(3, 6),
	(4, 2),
	(9, 4),
	(10, 3),
	(7, 1),
	(2, 2)
	;

INSERT INTO tblEpisodeCompanion
	(EpisodeId, CompanionId)
	VALUES
	(1, 2),
	(3, 3),
	(4, 1),
	(9, 4),
	(10, 5),
	(7, 4),
	(2, 1)
	;