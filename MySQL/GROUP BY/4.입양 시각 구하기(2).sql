SET @HOUR := -1;
SELECT @HOUR := @HOUR + 1 as "HOUR"
     , (SELECT count(*) FROM ANIMAL_OUTS a WHERE HOUR(a.DATETIME) = @HOUR) "COUNT"
 FROM ANIMAL_OUTS     
 WHERE @HOUR < 23