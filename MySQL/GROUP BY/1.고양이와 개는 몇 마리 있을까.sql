SELECT a.ANIMAL_TYPE, count(a.ANIMAL_TYPE) AS count
  FROM ANIMAL_INS a
GROUP BY a.ANIMAL_TYPE
ORDER BY a.ANIMAL_TYPE
;