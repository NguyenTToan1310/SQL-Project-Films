-- Thông tin của bộ phim hài kịch sản xuất trước năm 2000 có doanh thu cao nhất 
SELECT Films.*, Categories.Categories, Directors.Directors, Actors.Actors
FROM Films
INNER JOIN Film_Actor ON Films.FID=Film_Actor.FID
INNER JOIN Actors ON Film_Actor.AID=Actors.AID
INNER JOIN Film_Director ON Films.FID=Film_Director.FID
INNER JOIN Directors ON Film_Director.DID=Directors.DID
INNER JOIN Film_Category ON Films.FID=Film_Category.FID
INNER JOIN Categories ON Film_Category.CID=Categories.CID
WHERE Films.Gross IN (SELECT MAX (Films.Gross)
FROM Films
INNER JOIN Film_Category ON Films.FID=Film_Category.FID
INNER JOIN Categories ON Film_Category.CID=Categories.CID
WHERE Categories='Drama'
AND Rating>7
AND Year<2000)