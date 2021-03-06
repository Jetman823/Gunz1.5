USE GunzDB
GO

ALTER PROCEDURE dbo.spWebGetSurvivalRankingByPageNumber
	@SID TINYINT
	, @PageNum INT
	, @PagePerCount	INT
AS BEGIN
	SET NOCOUNT ON;
	
	DECLARE @StartRow	INT;
	DECLARE @EndRow		INT;
	
	SELECT TOP 1 @StartRow = RowNum FROM dbo.SurvivalCharacterInfoWeb WHERE SID = @SID
	SET @StartRow = @StartRow + ((@PageNum - 1) * @PagePerCount)
	SET @EndRow = @StartRow + @PagePerCount - 1;

	SELECT	r.Ranking AS Ranking
			, c.Name AS CharacName
			, a.UserID AS UserID
			, c.Level AS Level
			, t.RankRP AS RankingPoint
	FROM 	(	SELECT	ci.RowNum, ci.SID, ci.CID, i.RankRP
				FROM	dbo.SurvivalCharacterInfoWeb ci(NOLOCK)
						, dbo.SurvivalCharacterInfo i(NOLOCK)
				WHERE	ci.RowNum BETWEEN @StartRow AND @EndRow
				AND		ci.SID = @SID
				AND		ci.SID = i.SID
				AND		ci.CID = i.CID			
			) t	
			, dbo.Character c(NOLOCK)
			, dbo.SurvivalRanking r(NOLOCK)
			, dbo.Account a(NOLOCK)
	WHERE	c.CID = t.CID
	AND		a.AID = c.AID
	AND		r.SID = t.SID	
	AND		r.RP = t.RankRP
	AND		c.DeleteFlag != 1
	ORDER BY Ranking ASC
END
GO