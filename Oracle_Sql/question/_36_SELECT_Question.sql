
-- 1) 화학과 학생과 평점이 동일한 학생들을 검색하세요
SELECT DISTINCT s1.sname, s1.AVR, s2.sname, s2.avr
 from student s1, student s2
 WHERE s1.major = '화학' AND s2.major ='화학' 
 AND s1.avr = s2.avr;
-- 2) 화학과 교수와 부임일이 같은 직원을 검색하세요


-- 3) 화학과 학생과 같은 학년에서 평점이 동일한 학생들을 검색하세요
