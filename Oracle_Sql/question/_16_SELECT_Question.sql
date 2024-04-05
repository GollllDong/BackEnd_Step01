
-- 1) 송강 교수가 강의하는 과목을 검색한다
SELECT *
 from PROFESSOR
 where PNAME = '송강';

-- 2) 화학 관련 과목을 강의하는 교수의 명단을 검색한다
SELECT COURSE.CNAME "담당 과목", COURSE.ST_NUM 학점, PROFESSOR.PNAME "담당 교수"
 from COURSE, PROFESSOR
 where COURSE.pno = PROFESSOR.PNO
 AND cname LIKE'%화학%';

-- 3) 학점이 2학점인 과목과 이를 강의하는 교수를 검색한다
SELECT * from COURSE;

SELECT COURSE.ST_NUM 학점, COURSE.CNAME 과목, PROFESSOR.PNAME 교수
 from COURSE, PROFESSOR
 WHERE COURSE.ST_NUM = 2;

-- 4) 화학과 교수가 강의하는 과목을 검색한다
SELECT *
 from PROFESSOR
 where SECTION = '화학';

-- 5) 화학과 1학년 학생의 기말고사 성적을 검색한다
SELECT * from score;
SELECT * from student;

SELECT student.MAJOR 과, student.SYEAR 학년, STUDENT.SNAME 이름 , SCORE.result 기말성적
 from STUDENT, SCORE
 where STUDENT.sno = SCORE.sno AND student.MAJOR = '화학' AND student.SYEAR=1
 ORDER BY result desc;


-- 6) 일반화학 과목의 기말고사 점수를 검색한다
SELECT COURSE.CNAME 과목, SCORE.RESULT 기말성적
 from COURSE, SCORE
 WHERE COURSE.CNO = SCORE.CNO AND COURSE.CNAME = '일반화학';

-- 7) 화학과 1학년 학생의 일반화학 기말고사 점수를 검색한다
SELECT STUDENT.MAJOR 과, STUDENT.SYEAR 학년, COURSE.CNAME 과목이름, STUDENT.SNAME 이름, SCORE.RESULT "기말고사 점수"
 from STUDENT, COURSE, SCORE
 WHERE STUDENT.SNO = SCORE.SNO AND SCORE.CNO = COURSE.CNO 
 AND STUDENT.SYEAR = 1 AND COURSE.CNAME ='일반화학' AND STUDENT.MAJOR = '화학';

-- 8) 화학과 1학년 학생이 수강하는 과목을 검색한다
SELECT STUDENT.MAJOR 학과 ,STUDENT.SYEAR 학년, STUDENT.SNAME 이름 , COURSE.CNAME 수강과목
 from STUDENT, COURSE, SCORE
 WHERE STUDENT.SNO = SCORE.SNO AND SCORE.CNO = COURSE.CNO 
 AND STUDENT.SYEAR = 1 AND STUDENT.MAJOR = '화학';

-- 9) 유기화학 과목의 평가점수가 F인 학생의 명단을 검색한다
SELECT STUDENT.MAJOR 학과 ,STUDENT.SYEAR 학년, STUDENT.SNAME 이름 , COURSE.CNAME 수강과목, SCGRADE.GRADE 학점
 from STUDENT, COURSE, SCORE, SCGRADE
 WHERE STUDENT.SNO = SCORE.SNO AND SCORE.CNO = COURSE.CNO 
 AND SCORE.result BETWEEN SCGRADE.LOSCORE and SCGRADE.HISCORE
 AND COURSE.CNAME = '유기화학' AND SCGRADE.GRADE = 'F'
 ORDER BY sname, score.result;