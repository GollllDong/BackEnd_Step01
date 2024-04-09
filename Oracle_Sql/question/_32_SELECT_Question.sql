-- 1) 화학과를 제외하고 학생들의 평점 평균을 검색하세요
SELECT major 학과, sname 이름, avr 평점  
FROM STUDENT
where major != '화학';

-- 2) 화학과를 제외한 각 학과별 평균 평점 중에 평점이 2.0 이상인 정보를 검색하세요
SELECT major 학과, AVG(avr) 평점  
FROM STUDENT
where major != '화학'
GROUP BY major
HAVING AVG(avr) >= 2.0;


-- 3) 기말고사 평균이 60점 이상인 학생의 정보를 검색하세요(학번과 기말고사 평균)
SELECT sno 학번, ROUND(AVG(result))
 from SCORE
 GROUP BY sno
 HAVING AVG(result) >= 60;

-- 4) 강의 학점수가 3학점 이상인 교수의 정보를 검색하세요(교수번호, 이름과 담당 학점수)
SELECT p.pno, st_num, cname
 from PROFESSOR p, COURSE c
 WHERE p.pno = c.PNO AND c.ST_NUM >=3;
 