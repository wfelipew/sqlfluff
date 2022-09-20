ALTER VIEW v2 AS 
SELECT c, d FROM v1;

ALTER VIEW v1 (c,d) AS 
SELECT a,max(b) FROM t1 GROUP BY a;

ALTER VIEW v2 AS 
SELECT * FROM t2 WHERE s1 IN (SELECT s1 FROM t1) 
WITH CHECK OPTION;