-- this is to check the query
UPDATE tblEpisode
	SET DoctorId = NULL
	WHERE EpisodeType = 'new Type'

UPDATE tblEpisode
	SET Title = CONCAT(Title, '_CANCELLED')
	WHERE DoctorId IS NULL;
