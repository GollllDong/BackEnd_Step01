-- --NATURAL JOIN / USING 절로 해결

-- 1) 송강 교수가 강의하는 과목을 검색한다
SELECT p.PNAME 교수, c.CNAME 과목
 from PROFESSOR p, COURSE c
 WHERE p.pno = c.pno
 AND PNAME = '송강';

-- 2) 화학 관련 과목을 강의하는 교수의 명단을 검색한다
SELECT p.PNAME 교수, c.CNAME 과목
from PROFESSOR p, COURSE c
WHERE p.pno = c.pno
AND CNAME LIKE '%화학%';

-- 3) 학점이 2학점인 과목과 이를 강의하는 교수를 검색한다
SELECT c.ST_NUM 학점, p.PNAME 교수
 from COURSE c, PROFESSOR p
 WHERE c.pno = p.pno
 AND c.ST_NUM = 2 AND c.pno = p.pno;

-- 4) 화학과 교수가 강의하는 과목을 검색한다
SELECT p.PNAME 교수, c.CNAME 강의과목
 from PROFESSOR p, COURSE c
 WHERE p.pno = c.PNO
 AND SECTION = '화학';

-- 5) 화학과 1학년 학생의 기말고사 성적을 검색한다
SELECT st.MAJOR 학과, st.SYEAR 학년, sc.result 성적
 from STUDENT st, SCORE sc
 WHERE st.sno = sc.sno
 AND st.SYEAR = 1;

-- 6) 일반화학 과목의 기말고사 점수를 검색한다
SELECT c.CNAME 과목, s.result 기말점수
 from COURSE c, SCORE s
 WHERE c.cno = s.cno
 AND c.CNAME = '일반화학';


-- 7) 화학과 1학년 학생의 일반화학 기말고사 점수를 검색한다


-- 8) 화학과 1학년 학생이 수강하는 과목을 검색한다
