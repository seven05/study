-- 코드를 작성해주세요
SELECT round(sum(IFNULL(LENGTH,10))/count(*),2) as AVERAGE_LENGTH
FROM FISH_INFO 