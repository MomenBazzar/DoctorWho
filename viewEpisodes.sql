CREATE VIEW viewEpisodes AS
	SELECT 
		Title,
		AuthorName,
		DoctorName,
		dbo.fnCompanions(EpisodeId) AS Companions,
		dbo.fnEnemies(EpisodeId) AS Enemies
		FROM tblEpisode AS E
			LEFT JOIN tblAuthor AS A ON E.AuthorId = A.AuthorId
			LEFT JOIN tblDoctor AS D ON E.DoctorId = D.DoctorId