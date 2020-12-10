use testjson;

CREATE TABLE X(Y JSON);

SELECT * FROM X;
INSERT INTO X VALUES('["A", "B", "C"]');
INSERT INTO X VALUES(JSON_ARRAY("E","F","G"));

UPDATE X SET Y = JSON_ARRAY_APPEND(Y, '$[1]', 'B1', '$[2]', 'C1');

UPDATE X SET Y = JSON_ARRAY_INSERT(Y, '$[2][2]', 'Y');

SELECT * FROM X;
UPDATE X SET Y = JSON_ARRAY_APPEND(Y, '$', 'D1');
SET SQL_SAFE_UPDATES=0;