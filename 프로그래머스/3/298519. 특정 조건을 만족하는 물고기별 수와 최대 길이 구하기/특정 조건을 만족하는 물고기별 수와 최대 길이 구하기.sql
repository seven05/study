-- 코드를 작성해주세요
SELECT count(*) as FISH_COUNT, max(LENGTH),FISH_TYPE
FROM FISH_INFO
group by FISH_TYPE
having sum(IF(LENGTH is null,10,LENGTH))/FISH_COUNT >=33
order by FISH_TYPE