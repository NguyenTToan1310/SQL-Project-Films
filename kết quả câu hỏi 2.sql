-- 5 bộ phim kịch có doanh thu cao nhất và tên đạo diễn của 5 bộ film đó --
SELECT TOP (5) 
Films.VietnameseTitle, 
Films.Gross, 
Categories.Categories,
Directors.Directors
FROM Films
INNER JOIN Film_Category ON Films.FID=Film_Category.FID
INNER JOIN Categories ON Film_Category.CID=Categories.CID
INNER JOIN Film_Director ON Films.FID=Film_Director.FID
INNER JOIN Directors ON Film_Director.DID=Directors.DID
WHERE Categories='DRAMA' 
ORDER BY Gross DESC

