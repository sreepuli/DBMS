create table dept(deptno number(2), dname  varchar2(20), loc  varchar2(15),   
constraint pk_dept primary key (deptno));

create table emp(empno  number(4), ename varchar2(10), job varchar2(9), mgr number(4), hiredate date, 
sal number(7,2), comm number(7,2), deptno number(2), constraint pk_emp primary key (empno), 
constraint fk_deptno foreign key (deptno) references dept (deptno));

insert into dept values(10, 'ACCOUNTING', 'NEW YORK');

insert into dept values(20, 'RESEARCH', 'DALLAS');

insert into dept values(30, 'SALES', 'CHICAGO');

insert into dept values(40, 'OPERATIONS', 'BOSTON');

insert into emp values(7839, 'KING', 'PRESIDENT', null, to_date('17-11-1981','dd-mm-yyyy'), 5000, null, 10);

insert into emp values(7698, 'BLAKE', 'MANAGER', 7839, to_date('1-5-1981','dd-mm-yyyy'), 2850, null, 30);

insert into emp values(7782, 'CLARK', 'MANAGER', 7839, to_date('9-6-1981','dd-mm-yyyy'), 2450, null, 10);

insert into emp values(7566, 'JONES', 'MANAGER', 7839, to_date('2-4-1981','dd-mm-yyyy'),  2975, null, 20);

insert into emp values(7788, 'SCOTT', 'ANALYST', 7566, to_date('13-7-1987','dd-mm-yyyy'), 3000, null, 20);

insert into emp values(7902, 'FORD', 'ANALYST', 7566, to_date('3-12-1981','dd-mm-yyyy'),  3000, null, 20);

insert into emp values(7369, 'SMITH', 'CLERK', 7902, to_date('17-12-1980','dd-mm-yyyy'), 800, null, 20);

insert into emp values(7499, 'ALLEN', 'SALESMAN', 7698, to_date('20-2-1981','dd-mm-yyyy'),1600, 300, 30);

insert into emp values(7521, 'WARD', 'SALESMAN', 7698, to_date('22-2-1981','dd-mm-yyyy'), 1250, 500, 30);

insert into emp values(7654, 'MARTIN', 'SALESMAN', 7698, to_date('28-9-1981','dd-mm-yyyy'), 1250, 1400, 30);

insert into emp values(7844, 'TURNER', 'SALESMAN', 7698, to_date('8-9-1981','dd-mm-yyyy'), 1500, null, 30);

insert into emp values(7876, 'ADAMS', 'CLERK', 7788, to_date('13-7-1987', 'dd-mm-yyyy'), 1100, null, 20);

insert into emp values(7900, 'JAMES', 'CLERK', 7698, to_date('3-12-1981','dd-mm-yyyy'), 950, null, 30);

insert into emp values(7934, 'MILLER', 'CLERK', 7782, to_date('23-1-1982','dd-mm-yyyy'),1300, null, 10);

select * from dept;

select * from emp;

select * from emp where deptno=10;

select * from emp where deptno <>30;

select count(*) from emp;

select * from emp order by sal desc;

select * from emp where count<=5;

select * FROM EMP WHERE ROWNUM<=5;

SELECT * FROM EMP ORDER BY DEPTNO,SAL DESC;

SELECT * FROM EMP WHERE (MGR =7698 OR MGR=7566) AND SAL>1500;

SELECT * FROM EMP WHERE MGR IN(7698,7566) AND SAL>1500;

SELECT * FROM EMP WHERE SAL<3000;

SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='FORD');

SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='FORD');

SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='FORD');

SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='FORD');

SELECT * FROM EMP WHERE SAL<(SELECT SAL FROM EMP WHERE ENAME='FORD');

COMMIT 
 
;

SELECT ROWNUM AS ROWED * FROM EMP;

SELECT ROWNUM AS ROWED, * FROM EMP;

SELECT ROWNUM AS ROWED, EMP.* FROM EMP;

SELECT DISTINCT JOB FROM EMP;

SELECT * FROM EMP;

SELECT * FROM DEPT;

SELECT EMPNO,EMANE,SAL,SAL *1.15 AS INCREASED_SAL FROM EMP;

SELECT EMPNO,ENANE,SAL,SAL *1.15 AS INCREASED_SAL FROM EMP;

SELECT EMPNO,ENAME,SAL,SAL *1.15 AS INCREASED_SAL FROM EMP;

