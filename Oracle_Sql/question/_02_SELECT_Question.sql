--5) 모든 학생의 정보를 검색해라
SELECT * FROM STUDENT;

--7) 모든 과목의 정보를 검색해라
SELECT major FROM STUDENT;

--8) 기말고사 시험점수를 검색해라
SELECT AVR FROM STUDENT;

--9) 학생들의 학과와 학년을 검색해라
SELECT syear, major FROM STUDENT;

--10) 각 과목의 이름과 학점을 검색해라
SELECT major, avr FROM STUDENT;

--11) 모든 교수의 직위를 검색해라
SELECT ORDERS FROM PROFESSOR;
