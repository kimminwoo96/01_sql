-- DAY 02 
2 -- 주석 : 프로그램 실행에 영향이 없음 
3 -- SESSION 설정 
4 ALTER SESSION  
5   SET "_ORACLE_SCRIPT"=true 
6 ; 
7 
 
8 --SCOTT 계정 생성 스크립트 실행 
9 @C:\app\304\product\18.0.0\dbhomeXE\rdbms\admin\scott.sql 
10 ; 
11 
 
12 -- SCOTT 계정 EMP 테이블 조회 
13 SELECT * 
14   FROM emp 
15 ; 
16 
 
17 -- SCOTT 계정 DEPT 테이블 조회 
18 SELECT * 
19   FROM dept 
20 ;   
21 -- 2. DQL : SELECT  
22 -- 1) emp 테이블에서 job 컬럼을 조회 
23 SELECT job 
24   FROM emp 
25 ; 
26 /* 
27 JOB 
28 ---------- 
29 CLERK 
30 SALESMAN 
31 SALESMAN 
32 MANAGER 
33 SALESMAN 
34 MANAGER 
35 MANAGER 
36 PRESIDENT 
37 SALESMAN 
38 CLERK 
39 ANALYST 
40 CLERK 
41 */ 
42 -- 2) emp 테이블에서 중복을 제거하여 
43 --    job 컬럼을 조회 
44 SELECT DISTINCT job 
45   FROM emp 
46 ; 
47 -- => 각 JOB 이 한번씩만 조회된 결과 
48 --    를 얻을 수 있다. 
49 --    이 결과로 회사에는 다섯 종류의 
50 --    JOB 이 있음을 확인할 수 있다. 
51 
 
52 /* 다중 행 주석  
53 JOB 
54 ---------- 
55 CLERK 
56 SALESMAN 
57 ANALYST 
58 MANAGER 
59 PRESIDENT 
60 */ 
61 
 
62 -- 3) emp 테이블에서 job과 deptno 를 조회 
63 SELECT job  
64      , deptno 
65   FROM emp 
66 ; 
67 /* 
68 CLERK	    20 
69 SALESMAN	30 
70 SALESMAN	30 
71 MANAGER	    20 
72 SALESMAN	30 
73 MANAGER	    30 
74 MANAGER	    10 
75 PRESIDENT	10 
76 SALESMAN	30 
77 CLERK	    30 
78 ANALYST	    20 
79 CLERK	    10 
80 */ 
81 
 
82 -- 4) emp 테이블에서 중복을 제거하여 
83 --    job, deptno 를 조회 
84 SELECT DISTINCT job 
85      , deptno 
86   FROM emp 
87 ; 
88 /* 
89 JOB,    DEPTNO 
90 -------------- 
91 CLERK	    20 
92 MANAGER	    20 
93 MANAGER	    30 
94 MANAGER	    10 
95 SALESMAN	30 
96 PRESIDENT	10 
97 CLERK	    30 
98 ANALYST	    20 
99 CLERK	    10 
100 */ 
101 
 
102 -- 5) emp 테이블에서 중복을 제거하여  
103 --    job 을 조회하고 
104 --    결과를 job의 오름차순으로 정렬하시오. 
105 SELECT DISTINCT job 
106   FROM emp 
107  ORDER BY job 
108 ;  
109 -- (2) 번 쿼리의 실행결과와  
110 --    정렬순서가 다른 것을 확인하고 넘어가자. 
111 
 
112 /* 
113 JOB 
114 -------- 
115 ANALYST 
116 CLERK 
117 MANAGER 
118 PRESIDENT 
119 SALESMAN 
120 */ 
121 
 
122 -- 6) emp 테이블에서 중복을 제거하여 
123 --    job 을 조회하고 
124 --    job 을 내림차순으로 정렬하시오. 
125 --    (5) 번의 실행결과와 비교 
126 SELECT DISTINCT job 
127   FROM emp 
128  ORDER BY job DESC 
129 ;   
130 /* 
131 JOB 
132 --------- 
133 SALESMAN 
134 PRESIDENT 
135 MANAGER 
136 CLERK 
137 ANALYST 
138 */ 
139 
 
140 -- 7) emp 테이블에서 empno(사번), ename(직원이름), job(직무)  
141 --    를 조회하시오. 
142 SELECT empno 
143       ,ename 
144       ,job 
145   FROM emp 
146 ; 
147 /* 
148 EMPNO,  ENAME,  JOB 
149 ------------------------- 
150 7369	SMITH	CLERK 
151 7499	ALLEN	SALESMAN 
152 7521	WARD	SALESMAN 
153 7566	JONES	MANAGER 
154 7654	MARTIN	SALESMAN 
155 7698	BLAKE	MANAGER 
156 7782	CLARK	MANAGER 
157 7839	KING	PRESIDENT 
158 7844	TURNER	SALESMAN 
159 7900	JAMES	CLERK 
160 7902	FORD	ANALYST 
161 7934	MILLER	CLERK 
162 */ 
163 
 
164 -- 8) emp 테이블에서 
165 --    empno, ename, job, hiredate(입사일)  
166 --    을 조회하시오. 
167 SELECT empno 
168       ,ename 
169       ,job 
170       ,hiredate 
171   FROM emp 
172 ; 
173 /* 
174 EMPNO,  ENAME,  JOB,        HIREDATE 
175 ------------------------------------ 
176 7369	SMITH	CLERK	    80/12/17 
177 7499	ALLEN	SALESMAN	81/02/20 
178 7521	WARD	SALESMAN	81/02/22 
179 7566	JONES	MANAGER	    81/04/02 
180 7654	MARTIN	SALESMAN	81/09/28 
181 7698	BLAKE	MANAGER	    81/05/01 
182 7782	CLARK	MANAGER	    81/06/09 
183 7839	KING	PRESIDENT	81/11/17 
184 7844	TURNER	SALESMAN	81/09/08 
185 7900	JAMES	CLERK	    81/12/03 
186 7902	FORD	ANALYST	    81/12/03 
187 7934	MILLER	CLERK	    82/01/23 
188 */ 
-- ORDER BY : 정렬
--9) emp 테이블 comm 을 가장 많이 받는 순서대로
-- empno,ename,job,hiredate,comm 컬럼을 조회하시오.
SELECT empno
      ,ename
      ,job
      ,hiredate
      ,comm
FROM emp
ORDER BY comm DESC
174 EMPNO,  ENAME,  JOB,        HIREDATE 
175 ------------------------------------ 
176 7369	SMITH	CLERK	    80/12/17 
177 7499	ALLEN	SALESMAN	81/02/20 
178 7521	WARD	SALESMAN	81/02/22 
179 7566	JONES	MANAGER	    81/04/02 
180 7654	MARTIN	SALESMAN	81/09/28 
181 7698	BLAKE	MANAGER	    81/05/01 
182 7782	CLARK	MANAGER	    81/06/09 
183 7839	KING	PRESIDENT	81/11/17 
184 7844	TURNER	SALESMAN	81/09/08 
185 7900	JAMES	CLERK	    81/12/03 
186 7902	FORD	ANALYST	    81/12/03 
187 7934	MILLER	CLERK	    82/01/23 
*/
-- 10) emp 테이블에서
--     comm 은 적은 순서대로, job 은 오름차순(영문), ename 오름차순(영문)
--     정렬하여
--     empno, ename, job, hiredate, comm 을 조회하시오.
SELECT empno
      ,ename
     ,job
     ,hiredate
     ,comm
FROM emp
ORDER BY comm, job ASC, ename
;
--emp 테이블에서
--comm 이 적은 순서대로, job 오름차순, ename 내림차순 으로 정렬하여
--empno,ename,job,hiredate,comm 을 조회하시오.
SELECT empno
      ,ename
      ,job
      ,hiredate
      ,comm
FROM emp
ORDER BY comm, job, ename DESC
;
/*
EMPNO  ENAME    JOB         HIREDATE   COMM
7844	TURNER	SALESMAN	81/09/08	0
7499	ALLEN	SALESMAN	81/02/20	300
7521	WARD	SALESMAN	81/02/22	500
7654	MARTIN	SALESMAN	81/09/28	1400
7902	FORD	ANALYST	    81/12/03	
7900	JAMES	CLERK	    81/12/03	
7934	MILLER	CLERK	    82/01/23	
7369	SMITH	CLERK	    80/12/17	
7698	BLAKE	MANAGER	    81/05/01	
7782	CLARK	MANAGER	    81/06/09	
7566	JONES	MANAGER	    81/04/02	
7839	KING	PRESIDENT	81/11/17	

--Alias: 별칭
--11) emp 테이블에서
--    empno => Employee No.
--    ename => Employee Name
--    job   => Job Name
--    세 컬럼의 이름을 별칭으로 바꾸어서 조회
SELECT empno AS "Employee No."
      ,ename "Employee 
      
      
      
      
      
      
      
      
      
      
      
    --12) 한글 별칭을 사용
    --    emp 테이블에서 각 컬럼에 한글 별칭을 사용
    --    empno => 사번
    --    ename => 이 름 (한글 별칭 사이에 공백 주의)
    --    job   => 직무
    SELECT empno 사번
          ,ename "이 름"
     
     
     
     
     
     
     
     
     
     
     
     
     
     --13) 테이블에서 별칭 설정
     --    emp 테이블에서 empno, enme 을 조회하시오
     -- 1. 별칭 없이 구문 작성
     SELECT empno
           ,ename
     FROM   emp
;
--2. SELECT절에 컬럼 나열할 때, 앞에 테이블 이름을 붙일 수 있음.
--   테이블 이름을 붙여서 컬럼을 조회
SELECT emp.empno
      ,emp.ename
FROM emp
;

--3. FROM 절의 emp 테이블에 e 라는 별칭을 주고
--   SELECT 절의 컬럼앞에 테이블 별칭 e를 붙여서 조회
SELECT e.empno -- 테이블 별칭이 사용되는 위치: 컬럼 이름 앞
      ,e name
FROM emp e -- 테이블 별칭 사용 위치 
;


-- 14) 영문 별칭을 사용할때, 쌍따옴표를 사용하지 않으면
-- => 결과 출력시 별칭이 모두 대문자화 되어 조회됨
--  emp=> 테이블에서
--  empno=> EmployeeNo
--  ename=> "Employee Name"
--  job  => " Job Name"
SELECT e.empno AS EmployeeNo
      ,e.ename "Employee Name"
      ,e.job "Job Name"
From emp e
;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      





