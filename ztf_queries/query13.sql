SELECT o.objectId, c.jd as mjd, c.fid, c.magpsf, o.jdmin as mjdmin, jdmax as mjdmax,
o.maggmin, o.maggmax, o.magrmin, o.magrmax, o.latestrmag, o.sherlock_classification,
o.ramean, o.decmean, o.ncand  FROM objects o NATURAL JOIN candidates c
WHERE c.magpsf < 21
AND c.jd > 2458806 - 20
AND o.jdmin > 2458806 - 20
AND o.jdmax > 2458806 - 3
AND o.ncand >= 3
AND abs(glatmean) > 10.0
AND o.sherlock_classification != 'VS'
AND o.sherlock_classification != 'AGN'
AND o.sherlock_classification != 'CV'
AND o.sherlock_classification != 'BS'
AND o.sherlock_classification != 'NT'
AND c.rb >= 0.4 AND c.nbad = 0 AND c.fwhm <= 5 AND c.elong <= 1.2 AND abs(c.magdiff) <= 0.2 AND c.isdiffpos = 't'
AND c.distnr > 5 ;
