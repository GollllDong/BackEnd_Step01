
-- 1) 화학과 학생을 검색하라
SELECT sname 이름, major 과목
 from student;

-- 2) 평점이 2.0 미만인 학생을 검색하라
SELECT sname 이름, avr 학점
 from STUDENT
 WHERE avr < 2.0;
-- 3) 관우 학생의 평점을 검색하라
SELECT sname 이름, avr 평점
 from STUDENT
 WHERE SNAME = '관우';

-- 4) 정교수 명단을 검색하라
SELECT * from PROFESSOR;
SELECT SECTION 담당과, orders 직위, pname 정교수
 from PROFESSOR
 WHERE ORDERS = '정교수';

-- 5) 화학과 소속 교수의 명단을 검색하라
SELECT orders 직위, pname 정교수
 from PROFESSOR
 WHERE SECTION = '화학';

-- 6) 송강 교수의 정보를 검색하라
SELECT pno 교번 ,pname 성함, section 담당과, orders 직위, HIREDATE 부임일
from PROFESSOR
WHERE PNAME = '송강';

-- 7) 학년별로 화학과 학생의 성적을 검색하라
SELECT * from STUDENT;

SELECT major 학과, sname 이름, SYEAR 학년, avr 성적
 from STUDENT
 WHERE MAJOR = '화학'
 ORDER BY syear desc;

-- 8) 2000년 이전에 부임한 교수의 정보를 부임일순으로 검색하라
SELECT pno 교번 ,pname 성함, section 담당과, orders 직위, HIREDATE 부임일
 from PROFESSOR
 WHERE HIREDATE <= '01/01/00'
 ORDER BY HIREDATE desc;

-- 9) 담당 교수가 없는 과목의 정보를 검색하라
SELECT * 
 from STUDENT 
 where major not in (SELECT section from PROFESSOR);