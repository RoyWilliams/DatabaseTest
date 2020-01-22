SELECT distinct objects.objectId, ramean, decmean, jdmin-2400000.5 AS mjdmin, jdmax-2400000.5 AS mjdmax, magrmin, latestrmag, sherlock_classifications.classification, ncand,
(sherlock_crossmatches.distance*1000)*TAN((sherlock_crossmatches.separationArcsec/3600)*(PI()/180)) as sep
FROM candidates, objects, sherlock_classifications, sherlock_crossmatches
WHERE objects.objectId = candidates.objectId
AND objects.primaryId = sherlock_classifications.transient_object_id
AND objects.primaryId = sherlock_crossmatches.transient_object_id
AND objects.jdmax > 2458806 - 15.00000
AND candidates.jd > 2458806 - 15.00000
AND candidates.magpsf < 21.5
AND objects.ncand >= 2 AND objects.ncand < 5
AND objects.latestgmag - objects.latestrmag < 0.2
AND sherlock_classifications.classification NOT IN ("VS" , "AGN", "CV", "BS")
AND candidates.drb >= 0.6
AND objects.latestgmag - candidates.sgmag1 < 0.5
AND candidates.isdiffpos = "t"
AND (sherlock_crossmatches.rank = 1)
AND sherlock_crossmatches.catalogue_object_type = "galaxy"
AND sherlock_classifications.classification = "SN";
