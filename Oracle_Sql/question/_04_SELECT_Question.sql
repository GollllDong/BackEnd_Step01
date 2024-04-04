
-- 1) 각 학생의 평점을 검색하라(별명을 사용)
SELECT * FROM STUDENT;
SELECT sname 이름, avr 평균 FROM STUDENT;

-- 2) 각 과목의 학점수를 검색하라(별명을 사용)
SELECT * FROM STUDENT;
SELECT MAJOR 과목, avr 평균 FROM STUDENT;

-- 3)  각 교수의 지위를 검색하라(별명을 사용)
SELECT orders 지위 FROM PROFESSOR;

-- 4) 급여를 10%인상했을 때 연간 지급되는 급여를 검색하라(별명을 사용)
SELECT * FROM EMP;
SELECT eno||' '||ename||' '||(sal+(sal/10)) "월급 +10%" FROM EMP;


-- 5) 현재 학생의 평균 평점은 4.0만점이다. 이를 4.5만점으로 환산해서 검색하라(별명을 사용)
-- SELECT * FROM STUDENT WHERE avr = (SELECT MAX(avr) FROM STUDENT);
SELECT sno, sname,round((avr*1.125), 2) 학점 FROM STUDENT;