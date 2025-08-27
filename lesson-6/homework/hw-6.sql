SELECT DISTINCT
    LEAST(col1, col2) AS col1,
    GREATEST(col1, col2) AS col2
FROM InputTbl;
SELECT DISTINCT
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
FROM InputTbl;
LOWER(TRIM(col1))
SELECT *
FROM TestMultipleZero
WHERE A <> 0 OR B <> 0 OR C <> 0 OR D <> 0;
SELECT *
FROM TestMultipleZero
WHERE COALESCE(A, 0) <> 0
   OR COALESCE(B, 0) <> 0
   OR COALESCE(C, 0) <> 0
   OR COALESCE(D, 0) <> 0;
To **exclude rows where all columns (`A`, `B`, `C`, `D`) are zero**, you can use a `WHERE` clause that checks if **at least one column is not zero**.

--
```

Let me know if you want a dynamic version (e.g., works for any number of columns).
SELECT *
FROM section1
WHERE id % 2 = 1;
SELECT *
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);
SELECT *
FROM section1
WHERE id = (SELECT MAX(id) FROM section1);
SELECT *
FROM section1
WHERE id = (SELECT MAX(id) FROM section1);
SELECT *
FROM section1
WHERE LOWER(name) LIKE 'b%';
SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';
