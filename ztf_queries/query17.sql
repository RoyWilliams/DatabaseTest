SELECT count(*) FROM candidates
WHERE candidates.jd > 2458806 - 50.00000
AND ( ((ra BETWEEN 190.44 AND 198.67) AND (decl BETWEEN -78.32 AND -76.49))
OR ((ra BETWEEN 241.49 AND 243.95) AND (decl BETWEEN -40.41 AND -36.83))
OR ((ra BETWEEN 239.60 AND 241.14) AND (decl BETWEEN -43.12 AND -40.71))
OR ((ra BETWEEN 233.92 AND 237.04) AND (decl BETWEEN -35.91 AND -32.10))
OR ((ra BETWEEN 190 AND 244 ) AND (decl BETWEEN -79 AND -32))
OR ((ra BETWEEN 250.49 AND 251.90) AND (decl BETWEEN -22.89 AND -20.24))
OR ((ra BETWEEN 244.63 AND 251.85) AND (decl BETWEEN -2614 AND -22.09))
OR ((ra BETWEEN 244 AND 252 ) AND (decl BETWEEN -27 AND -20))
OR ((ra BETWEEN 82.99 AND 86.21 ) AND (decl BETWEEN -10.22 AND -4.57))
OR ((ra BETWEEN 85.06 AND 87.16 ) AND (decl BETWEEN -2.66 AND 0.93))
OR ((ra BETWEEN 82  AND 88 ) AND (decl BETWEEN -11 AND 1))
OR ((ra BETWEEN 50.66 AND 57.26 ) AND (decl BETWEEN 29.62 AND 33.16))
OR ((ra BETWEEN 276.80 AND 277.84) AND (decl BETWEEN -0.55 AND 1.86))
OR ((ra BETWEEN 61.85 AND 73.27 ) AND (decl BETWEEN 21.00 AND 30.02)));
