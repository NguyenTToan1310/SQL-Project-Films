/*****bộ phim nào có AVG (rating 50%, vote 50%) cao nhất ****/
SELECT Directors.Directors, Films.EnglishTitle, (Gross+Rating)/2 AS N'phim có trung bình gross và rating cao nhất'
FROM Films
INNER JOIN Film_Director ON Films.FID=Film_Director.FID
INNER JOIN Directors ON Film_Director.DID=Directors.DID
WHERE (Gross+Rating)/2 IN (
SELECT MAX((Gross+Rating)/2) AS N'phim có trung bình gross và rating cao nhất'
FROM Films)
