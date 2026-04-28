-- 코드를 작성해주세요
SELECT 
#    G1.ID,G1.PARENT_ID ,G2.ID,G2.PARENT_ID,
    G3.ID
FROM 
    ECOLI_DATA G1 -- 1세대
JOIN 
    ECOLI_DATA G2 ON G1.ID = G2.PARENT_ID -- 1세대를 부모로 둔 2세대
JOIN 
    ECOLI_DATA G3 ON G2.ID = G3.PARENT_ID -- 2세대를 부모로 둔 3세대
WHERE 
    G1.PARENT_ID IS NULL -- 출발점은 반드시 1세대여야 함
ORDER BY 
    G3.ID ASC;