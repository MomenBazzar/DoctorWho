CREATE FUNCTION fnCompanions(@EpisodeId INT)
RETURNS VARCHAR(MAX) AS
BEGIN
	DECLARE @c varchar(MAX) = ''

	SELECT
		@c = @c + 
			CASE WHEN len(@c) > 0 THEN ', ' ELSE '' END + 
			c.CompanionName
		
	FROM
		tblEpisodeCompanion AS ec
		INNER JOIN tblCompanion AS c ON ec.CompanionId = c.CompanionId
	WHERE
		ec.EpisodeId = @EpisodeId
	RETURN @c
END;