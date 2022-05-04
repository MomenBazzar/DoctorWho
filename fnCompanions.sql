CREATE FUNCTION fnCompanions(@EpisodeId INT)
RETURNS VARCHAR(MAX) AS
BEGIN
	DECLARE @answer VARCHAR(MAX) = '';

	DECLARE cursorEC CURSOR
		FOR 
			SELECT CompanionName FROM tblCompanion AS C
				INNER JOIN tblEpisodeCompanion AS EC 
				ON C.CompanionId = EC.CompanionId
				WHERE EpisodeId = @EpisodeId;
	
	DECLARE @name VARCHAR(MAX);
	OPEN cursorEC;
	FETCH NEXT FROM cursorEC INTO @name;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @answer = @answer + ', ' + @name;
		FETCH NEXT FROM cursorEC INTO @name;
	END;

	IF LEN(@answer) > 2
	BEGIN
		SET @answer = RIGHT(@answer, LEN(@answer) - 2);
	END;

    RETURN @answer
END;