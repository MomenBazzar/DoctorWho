CREATE FUNCTION fnEnemies(@EpisodeId INT)
RETURNS VARCHAR(MAX) AS
BEGIN
	DECLARE @c varchar(MAX) = ''

	SELECT
		@c = @c + 
			CASE WHEN len(@c) > 0 THEN ', ' ELSE '' END + 
			c.EnemyName
		
	FROM
		tblEpisodeEnemy AS ec
		INNER JOIN tblEnemy AS c ON ec.EnemyId = c.EnemyId
	WHERE
		ec.EpisodeId = @EpisodeId
	RETURN @c
END;