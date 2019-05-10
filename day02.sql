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
