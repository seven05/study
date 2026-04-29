-- 코드를 작성해주세요
SELECT count(*) as FISH_COUNT, MONTH(TIME) as MONTH
FROM FISH_INFO 
group by MONTH
order by MONTH