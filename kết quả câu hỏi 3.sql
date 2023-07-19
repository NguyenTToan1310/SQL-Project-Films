--Có bao nhiêu diễn viên đã từng cùng tham gia bộ phim do Victor Vũ đạo diễn trên 1 lần và số lần cùng tham gia của họ--
SELECT 
Actors.Actors,
COUNT(Actors) AS N'Lần tham gia'
FROM Actors
JOIN Film_Actor ON Actors.AID=Film_Actor.AID
JOIN Films ON Films.FID=Film_Actor.FID
JOIN Film_Director ON Films.FID=Film_Director.FID
JOIN Directors ON Film_Director.DID=Directors.DID
WHERE Directors='Victor Vu'
GROUP BY Actors
HAVING COUNT (Actors) > 1
ORDER BY COUNT(Actors) DESC