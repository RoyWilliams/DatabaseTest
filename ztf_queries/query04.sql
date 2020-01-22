SELECT objects.objectId, sherlock_classifications.classification, 
candidates.jd - 2400000.5 AS ago, candidates.magpsf, candidates.sigmapsf, candidates.fid 
FROM candidates, objects, sherlock_classifications 
WHERE objects.objectId = candidates.objectId 
AND objects.primaryId = sherlock_classifications.transient_object_id 
AND objects.objectId = 'ZTF18aavqmxr';



