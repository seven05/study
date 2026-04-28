-- 코드를 작성해주세요
SELECT count(*) as COUNT
FROM ECOLI_DATA 
WHERE GENOTYPE & 5 and not(GENOTYPE & 2)