
--1) 유공과와 생물과, 식영과 학생을 검색하라
SELECT * from STUDENT;

SELECT sno
 from STUDENT
 WHERE major = '생물' AND major = '식영' AND MAJOR = '유공';

--2) 화학과가 아닌 학생중에 1학년 학생을 검색하라
SELECT * 
 from STUDENT
 WHERE MAJOR != '화학' AND SYEAR = 1;

--3) 물리학과 3학년 학생을 검색하라
SELECT *
 from STUDENT
 WHERE SYEAR = '3' AND MAJOR = '물리';

--4) 평점이 2.0에서 3.0사이인 학생을 검색하라
SELECT *
 from STUDENT
 WHERE avr >= 2.0 AND avr <=3.0;

--5) 교수가 지정되지 않은 과목중에 학점이 3학점인 과목을 검색하라
SELECT * from COURSE
WHERE pno is null AND ST_NUM = 3;

--6) 화학과 관련된 과목중 평점이 2학점 이하인 과목을 검색하라
SELECT * 
 from STUDENT
 WHERE MAJOR = '화학' AND avr <= 2.0;

--7) 화학과 정교수를 검색하라
SELECT *
 from PROFESSOR
 WHERE ORDERS = '정교수' AND SECTION = '화학';

--8) 물리학과 학생중에 성이 사마씨인 학생을 검색하라
SELECT *
 from STUDENT
 WHERE MAJOR = '물리' AND SNAME LIKE '사마%';


--9) 부임일이 1995년 이전인 정교수를 검색하라
SELECT *
 from PROFESSOR
 WHERE HIREDATE <= '01/01/95';

--10) 성과 이름이 각각 1글자인 교수를 검색하라
SELECT *
 from PROFESSOR
 WHERE pname LIKE '__';
