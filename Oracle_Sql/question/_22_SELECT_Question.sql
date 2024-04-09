-- 1) 각 과목의 과목명과 담당 교수의 교수명을 검색하라
SELECT c.cname,p.pname
from course c left outer join professor p
on p.pno=c.pno;


-- 2) 화학과 학생의 기말고사 성적을 모두 검색하라
SELECT st.major 과, st.syear 학년, sc.result 기말성적
 from STUDENT st left OUTER JOIN SCORE sc
 on st.sno = sc.sno
 WHERE st.major = '화학'
 ORDER BY st.syear;

-- 3) 유기화학과목 수강생의 기말고사 시험점수를 검색하라
SELECT sname 이름, cname 수강과목, result 시험점수
 from STUDENT st
 NATURAL JOIN COURSE c
 NATURAL JOIN SCORE sc
 WHERE c.cname = '유기화학';

-- 4) 화학과 학생이 수강하는 과목을 담당하는 교수의 명단을 검색하라
SELECT SNAME 이름, cname 과목, pname 교수
 from STUDENT st
 NATURAL JOIN COURSE c
 NATURAL JOIN SCORE sc
 NATURAL JOIN PROFESSOR p
 WHERE major = '화학';

-- 5) 모든 교수의 명단과 담당 과목을 검색한다
SELECT pname 이름, SECTION 분야, cname "담당 과목"
 from PROFESSOR pr
 LEFT OUTER JOIN COURSE c
 on pr.PNO = c.PNO
 ORDER BY pname;


-- 6) 모든 교수의 명단과 담당 과목을 검색한다(단 모든 과목도 같이 검색한다)
select pname,section,cname
from professor p 
full outer join course c 
on p.pno=c.pno
order by pname;