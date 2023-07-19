/****Hãy cho biết top 10 diễn viên có số lần góp mặt trong các bộ phim nhiều nhất với đánh giá trung bình, cao nhất, 
thấp nhất, trong các bộ phim đó ****/
SELECT TOP (10)
Actors.Actors, 
COUNT(Actors.Actors) AS N'Bộ phim đã đóng', 
AVG(F.Rating) AS AvgRating,
MAX(F.Rating) AS MaxRating,
MIN(F.Rating) AS MinRating
FROM (SELECT Films.FID, ROUND(Films.Rating,2) AS Rating
FROM Films) AS F
JOIN Film_Actor ON F.FID=Film_Actor.FID
JOIN Actors ON Film_Actor.AID=Actors.AID
GROUP BY Actors
HAVING COUNT(Actors.Actors) > 1 
ORDER BY N'Bộ phim đã đóng' DESC 

