SELECT DISTINCT o.objectId
FROM objects o, candidates c
WHERE o.sherlock_classification IN ('NT')
AND o.jdmin > 2458806 - 100 
AND o.jdmin < 2458806 - 0 
AND o.ncand > 3 
AND c.objectId = o.objectId 
AND (c.jd > 2458806 - 100 AND c.jd < 2458806 - 0) 
AND c.magpsf < 20 AND c.drb >= 0.75;
