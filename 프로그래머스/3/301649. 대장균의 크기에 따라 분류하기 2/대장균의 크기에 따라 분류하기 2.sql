-- 코드를 작성해주세요
SELECT 
    ID,
    CASE 
        WHEN ranking <= 0.25 THEN 'CRITICAL'
        WHEN ranking <= 0.50 THEN 'HIGH'
        WHEN ranking <= 0.75 THEN 'MEDIUM'
        ELSE 'LOW'
    END as COLONY_NAME
FROM (
    SELECT 
        ID, 
        PERCENT_RANK() OVER (order by SIZE_OF_COLONY desc) as ranking
    FROM ECOLI_DATA
) as tmp
ORDER BY ID 