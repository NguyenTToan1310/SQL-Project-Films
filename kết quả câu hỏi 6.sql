/*****những diễn viên và đạo diễn cùng tham gia từ 2 bộ phim trở lên.*****/
SELECT Actors.Actors, Directors.Directors
FROM Films
JOIN Film_Director ON Films.FID=Film_Director.FID
JOIN Directors ON Film_Director.DID=Directors.DID
JOIN Film_Actor ON Films.FID=Film_Actor.FID
JOIN Actors ON Film_Actor.AID=Actors.AID
GROUP BY Actors, Directors
HAVING COUNT (Actors) > 1 AND COUNT (Directors) > 1