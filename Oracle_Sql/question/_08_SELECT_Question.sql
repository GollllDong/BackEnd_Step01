
-- 1) 성적순으로 학생의 이름을 검색하라
SELECT * from STUDENT;
SELECT sno 학번, sname 이름, avr 학점
 from STUDENT
 ORDER BY AVR DESC;

-- 2) 학과별 성적순으로 학생의 정보를 검색하라
SELECT major 학과, sno 학번, sname 이름, avr 학점
 from STUDENT
 ORDER BY major, avr DESC; 

-- 3) 학년별 성적순으로 학생의 정보를 검색하라
SELECT  syear 학년, major 학과, sno 학번, sname 이름, avr 학점
 from STUDENT
 ORDER BY syear desc, avr DESC;

-- 4) 학과별 학년별로 학생의 정보를 성적순으로 검색하라
SELECT syear 학년, major 학과, sno 학번, sname 이름, avr 학점
 from STUDENT
 ORDER BY major desc , syear desc, avr desc; 

-- 5) 학점순으로 과목 이름을 검색하라
SELECT major 학과, avr 학점
 from STUDENT
 ORDER BY avr desc;

-- 6) 각 학과별로 교수의 정보를 검색하라
SELECT pname 교수, SECTION 학과
 from PROFESSOR
 ORDER BY ORDERS;

-- 7) 지위별로 교수의 정보를 검색하라
SELECT * from PROFESSOR;
SELECT pno 교번, pname 성함, ORDERS 직위
 from PROFESSOR
 ORDER BY orders desc;

-- 8) 각 학과별로 교수의 정보를 부임일자 순으로 검색하라
SELECT pno 교번, pname 성함, ORDERS 직위, HIREDATE 부임일자
 from PROFESSOR
 ORDER BY HIREDATE DESC;