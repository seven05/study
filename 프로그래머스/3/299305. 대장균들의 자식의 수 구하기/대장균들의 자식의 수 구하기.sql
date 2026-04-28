-- 코드를 작성해주세요
SELECT A.ID, COUNT(B.ID) AS CHILD_COUNT
FROM ECOLI_DATA A
LEFT JOIN ECOLI_DATA B ON A.ID = B.PARENT_ID
GROUP BY A.ID
ORDER BY A.ID

#테이블 A (부모 후보): 모든 개체의 리스트
#테이블 B (자식 후보): 누가 누구의 자식인지 확인하기 위한 리스트
#A.ID = B.PARENT_ID 조건으로 조인하면, A의 ID를 부모로 둔 B의 데이터가 옆에 붙게 됨
