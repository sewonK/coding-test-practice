SET @rownum := 0;

SELECT c.NAME, c.DATETIME
FROM
(SELECT a.NAME, a.DATETIME, @rownum := @rownum + 1 AS rownum
FROM  ANIMAL_INS a
LEFT JOIN ANIMAL_OUTS b
on a.ANIMAL_ID = b.ANIMAL_ID
WHERE b.ANIMAL_ID is null
ORDER BY a.DATETIME) c
WHERE rownum < 4;
