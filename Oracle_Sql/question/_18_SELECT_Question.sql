-- 1) 학생중에 동명이인을 검색한다
SELECT DISTINCT s.SNAME
 from student s, STUDENT t
 WHERE s.sname = t.sname and s.sno != t.SNO
 ORDER BY s.SNAME;

-- 2) 전체 교수 명단과 교수가 담당하는 과목의 이름을 학과 순으로 검색한다
SELECT p.SECTION 학과, c.CNAME 과목이름, p.PNAME 교수
 from PROFESSOR p, COURSE c
 WHERE p.pno = c.pno(+)
 ORDER BY p.SECTION;


-- 3) 이번 학기 등록된 모든 과목과 담당 교수의 학점 순으로 검색한다
SELECT p.pname 교수 , c.cname "등록된 과목", c.st_num 학점
 from PROFESSOR p, COURSE c
 WHERE p.pno = c.pno
 ORDER BY p.pname;