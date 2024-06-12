CREATE TABLE dept
	(deptno TINYINT(2) ,
	dname VARCHAR(14) ,
	loc VARCHAR(13) ) ;

ALTER TABLE dept 
    ADD CONSTRAINT pk_dept PRIMARY KEY(deptno);
	
CREATE TABLE emp
    (empno SMALLINT(4),
	ename VARCHAR(10),
	job VARCHAR(9),
	mgr SMALLINT(4),
	hiredate DATE,
	sal FLOAT(7,2),
	comm FLOAT(7,2),
	deptno TINYINT(2));
	
ALTER TABLE emp 
	ADD  CONSTRAINT pk_emp PRIMARY KEY(empno),
	ADD  CONSTRAINT fk_deptno FOREIGN KEY(deptno) 
			REFERENCES dept(deptno);
	
INSERT INTO dept VALUES
	(10,'ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES (20,'RESEARCH','DALLAS');
INSERT INTO dept VALUES
	(30,'salES','CHICAGO');
INSERT INTO dept VALUES
	(40,'OPERATIONS','BOSTON');
INSERT INTO emp VALUES
(7369,'SMITH','CLERK',7902, CAST('1980-12-17' AS DATE),800,NULL,20);
INSERT INTO emp VALUES
(7499,'ALLEN','salESMAN',7698,CAST('1981-2-20' AS DATE),1600,300,30);
INSERT INTO emp VALUES
(7521,'WARD','salESMAN',7698,CAST('1981-2-22' AS DATE),1250,500,30);
INSERT INTO emp VALUES
(7566,'JONES','MANAGER',7839,CAST('1981-4-2' AS DATE),2975,NULL,20);
INSERT INTO emp VALUES
(7654,'MARTIN','salESMAN',7698,CAST('1981-9-28' AS DATE),1250,1400,30);
INSERT INTO emp VALUES
(7698,'BLAKE','MANAGER',7839,CAST('1981-5-1' AS DATE),2850,NULL,30);
INSERT INTO emp VALUES
(7782,'CLARK','MANAGER',7839,CAST('1981-6-9' AS DATE),2450,NULL,10);
INSERT INTO emp VALUES
(7788,'SCOTT','ANALYST',7566,CAST('1987-7-13' AS DATE),3000,NULL,20);
INSERT INTO emp VALUES
(7839,'KING','PRESIDENT',NULL,CAST('1981-11-17' AS DATE),5000,NULL,10);
INSERT INTO emp VALUES
(7844,'TURNER','salESMAN',7698,CAST('1981-9-8' AS DATE),1500,0,30);
INSERT INTO emp VALUES
(7876,'ADAMS','CLERK',7788,CAST('1987-7-13' AS DATE),1100,NULL,20);
INSERT INTO emp VALUES
(7900,'JAMES','CLERK',7698,CAST('1981-12-3' AS DATE),950,NULL,30);
INSERT INTO emp VALUES
(7902,'FORD','ANALYST',7566,CAST('1981-12-3' AS DATE),3000,NULL,20);
INSERT INTO emp VALUES
(7934,'MILLER','CLERK',7782,CAST('1982-1-23' AS DATE),1300,NULL,10);

CREATE TABLE salgrade
      (grade TINYINT(1),
	losal SMALLINT(4),
	hisal SMALLINT(4));
INSERT INTO salgrade VALUES (1,700,1200);
INSERT INTO salgrade VALUES (2,1201,1400);
INSERT INTO salgrade VALUES (3,1401,2000);
INSERT INTO salgrade VALUES (4,2001,3000);
INSERT INTO salgrade VALUES (5,3001,9999);

commit;