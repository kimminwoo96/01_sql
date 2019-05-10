-- DAY 02 
2 -- �ּ� : ���α׷� ���࿡ ������ ���� 
3 -- SESSION ���� 
4 ALTER SESSION  
5   SET "_ORACLE_SCRIPT"=true 
6 ; 
7 
 
8 --SCOTT ���� ���� ��ũ��Ʈ ���� 
9 @C:\app\304\product\18.0.0\dbhomeXE\rdbms\admin\scott.sql 
10 ; 
11 
 
12 -- SCOTT ���� EMP ���̺� ��ȸ 
13 SELECT * 
14   FROM emp 
15 ; 
16 
 
17 -- SCOTT ���� DEPT ���̺� ��ȸ 
18 SELECT * 
19   FROM dept 
20 ;   
21 -- 2. DQL : SELECT  
22 -- 1) emp ���̺��� job �÷��� ��ȸ 
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
42 -- 2) emp ���̺��� �ߺ��� �����Ͽ� 
43 --    job �÷��� ��ȸ 
44 SELECT DISTINCT job 
45   FROM emp 
46 ; 
47 -- => �� JOB �� �ѹ����� ��ȸ�� ��� 
48 --    �� ���� �� �ִ�. 
49 --    �� ����� ȸ�翡�� �ټ� ������ 
50 --    JOB �� ������ Ȯ���� �� �ִ�. 
51 
 
52 /* ���� �� �ּ�  
53 JOB 
54 ---------- 
55 CLERK 
56 SALESMAN 
57 ANALYST 
58 MANAGER 
59 PRESIDENT 
60 */ 
61 
 
62 -- 3) emp ���̺��� job�� deptno �� ��ȸ 
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
 
82 -- 4) emp ���̺��� �ߺ��� �����Ͽ� 
83 --    job, deptno �� ��ȸ 
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
 
102 -- 5) emp ���̺��� �ߺ��� �����Ͽ�  
103 --    job �� ��ȸ�ϰ� 
104 --    ����� job�� ������������ �����Ͻÿ�. 
105 SELECT DISTINCT job 
106   FROM emp 
107  ORDER BY job 
108 ;  
109 -- (2) �� ������ ��������  
110 --    ���ļ����� �ٸ� ���� Ȯ���ϰ� �Ѿ��. 
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
 
122 -- 6) emp ���̺��� �ߺ��� �����Ͽ� 
123 --    job �� ��ȸ�ϰ� 
124 --    job �� ������������ �����Ͻÿ�. 
125 --    (5) ���� �������� �� 
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
 
140 -- 7) emp ���̺��� empno(���), ename(�����̸�), job(����)  
141 --    �� ��ȸ�Ͻÿ�. 
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
 
164 -- 8) emp ���̺��� 
165 --    empno, ename, job, hiredate(�Ի���)  
166 --    �� ��ȸ�Ͻÿ�. 
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
-- ORDER BY : ����
--9) emp ���̺� comm �� ���� ���� �޴� �������
-- empno,ename,job,hiredate,comm �÷��� ��ȸ�Ͻÿ�.
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
-- 10) emp ���̺���
--     comm �� ���� �������, job �� ��������(����), ename ��������(����)
--     �����Ͽ�
--     empno, ename, job, hiredate, comm �� ��ȸ�Ͻÿ�.
SELECT empno
      ,ename
     ,job
     ,hiredate
     ,comm
FROM emp
ORDER BY comm, job ASC, ename
;
--emp ���̺���
--comm �� ���� �������, job ��������, ename �������� ���� �����Ͽ�
--empno,ename,job,hiredate,comm �� ��ȸ�Ͻÿ�.
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

--Alias: ��Ī
--11) emp ���̺���
--    empno => Employee No.
--    ename => Employee Name
--    job   => Job Name
--    �� �÷��� �̸��� ��Ī���� �ٲپ ��ȸ
SELECT empno AS "Employee No."
      ,ename "Employee 
      
      
      
      
      
      
      
      
      
      
      
    --12) �ѱ� ��Ī�� ���
    --    emp ���̺��� �� �÷��� �ѱ� ��Ī�� ���
    --    empno => ���
    --    ename => �� �� (�ѱ� ��Ī ���̿� ���� ����)
    --    job   => ����
    SELECT empno ���
          ,ename "�� ��"
     
     
     
     
     
     
     
     
     
     
     
     
     
     --13) ���̺��� ��Ī ����
     --    emp ���̺��� empno, enme �� ��ȸ�Ͻÿ�
     -- 1. ��Ī ���� ���� �ۼ�
     SELECT empno
           ,ename
     FROM   emp
;
--2. SELECT���� �÷� ������ ��, �տ� ���̺� �̸��� ���� �� ����.
--   ���̺� �̸��� �ٿ��� �÷��� ��ȸ
SELECT emp.empno
      ,emp.ename
FROM emp
;

--3. FROM ���� emp ���̺� e ��� ��Ī�� �ְ�
--   SELECT ���� �÷��տ� ���̺� ��Ī e�� �ٿ��� ��ȸ
SELECT e.empno -- ���̺� ��Ī�� ���Ǵ� ��ġ: �÷� �̸� ��
      ,e name
FROM emp e -- ���̺� ��Ī ��� ��ġ 
;


-- 14) ���� ��Ī�� ����Ҷ�, �ֵ���ǥ�� ������� ������
-- => ��� ��½� ��Ī�� ��� �빮��ȭ �Ǿ� ��ȸ��
--  emp=> ���̺���
--  empno=> EmployeeNo
--  ename=> "Employee Name"
--  job  => " Job Name"
SELECT e.empno AS EmployeeNo
      ,e.ename "Employee Name"
      ,e.job "Job Name"
From emp e
;
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      





