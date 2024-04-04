-- 1) 평점이 3.0에서 4.0사이의 학생을 검색하라
SELECT *
 from student
 WHERE avr BETWEEN '3.0' AND '4.0';

-- 2) 1994년에서 1995년까지 부임한 교수의 명단을 검색하라
SELECT *
 from PROFESSOR
 where hiredate BETWEEN '1994/01/01' AND '1995/12/31'
 ORDER BY hiredate;

-- 3) 화학과와 물리학과, 생물학과 학생을 검색하라
SELECT *
 from STUDENT
 WHERE major IN('화학','물리','생물');

-- 4) 정교수와 조교수를 검색하라
SELECT *
 from PROFESSOR
 WHERE ORDERS IN('정교수','부교수')
 ORDER BY ORDERS;

-- 5) 학점수가 1학점, 2학점인 과목을 검색하라
SELECT *
 from COURSE
 where ST_NUM BETWEEN '1' AND '2';

-- 6) 1, 2학년 학생 중에 평점이 2.0에서 3.0사이인 학생을 검색하라
SELECT *
 from STUDENT
 WHERE (SYEAR BETWEEN '1' AND '2') AND AVR BETWEEN '2.0' AND '3.0';

-- 7) 화학, 물리학과 학생 중 1, 2 학년 학생을 성적순으로 검색하라

SELECT *
 from STUDENT
 WHERE (SYEAR BETWEEN '1' AND '2') AND MAJOR IN('화학', '물리')
 ORDER BY AVR DESC;