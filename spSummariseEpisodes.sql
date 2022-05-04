CREATE PROCEDURE spSummariseEpisodes AS
BEGIN
	SELECT C.CompanionName, Q.Appearences FROM tblCompanion AS C
	INNER JOIN (
		SELECT TOP(3) CompanionId, COUNT(CompanionId) AS Appearences FROM 
			tblEpisodeCompanion
			GROUP BY CompanionId
			ORDER BY Appearences DESC
		) AS Q ON Q.CompanionId = C.CompanionId

	SELECT E.EnemyName, Q.Appearences FROM tblEnemy AS E
	INNER JOIN (
		SELECT TOP(3) EnemyID, COUNT(EnemyId) AS Appearences FROM 
			tblEpisodeEnemy
			GROUP BY EnemyId
			ORDER BY Appearences DESC
		) AS Q ON Q.EnemyId = E.EnemyId
END;

