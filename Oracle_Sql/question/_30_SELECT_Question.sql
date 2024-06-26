-- MAX  값들 중에 최대값을 반환
-- MIN  값들 중에 최소값을 반환
-- AVG  평균값을 계산
-- COUNT 반환된 행의 수를 계산
-- SUM  총합을 계산
-- STDDEV 표준편차를 계산
-- VARIANCE 분산을 계산

-- 1) 3학년 학생의 학과별 평점 평균과 분산 및 편차를 검색하세요
SELECT AVG(AVR) "학과별 평점 평균", VARIANCE(avr), STDDEV(AVR)
from student
WHERE SYEAR = 3;

-- 2) 화학과 학년별 평균 평점을 검색하세요
SELECT syear, AVG(avr) "평균 평점"
 from student
 WHERE major = '화학'
 GROUP BY SYEAR;

-- 3) 각 학생별 기말고사 평균을 검색하세요


-- 4) 각 학과별 학생 수를 검색하세요
select COUNT(*) "학과별 학생 수"
 from student
 GROUP BY major;

-- 5) 화학과와 생물학과 학생 4.5 환산 평점의 평균을 각각 검색하세요


-- 6) 부임일이 10년 이상 된 직급별(정교수, 조교수, 부교수) 교수의 수를 
--    검색하세요


-- 7) 과목명에 화학이 포함된 과목의 학점수 총합을 검색하세요


-- 8) 화학과 학생들의 기말고사 성적을 성적순으로 검색하세요


-- 9) 학과별 기말고사 평균을 성적순으로 검색하세요
