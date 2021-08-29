REM Author : 
REM Date :
REM Objective : Chapter 1. Introduction
REM Environment : Ubuntu Server 20.04 LTS, HeidiSQL 10.2.0, MySQL Community Server 5.7.34.0

REM SQL(Structured Query Language)
1. Database 에 접속하여 테이블 등 객체에 데이터를 입력, 수정, 삭제, 조회하기 위해 사용하는 언어
2. Database Server 와 통신하기 위한 명령언어
3. RDBMS 를 사용하기 위해 ANSI 에서 책정한 표준언어
4. SEQUEL(Structured English QUEry Language)
5. DBMS 제품별로 SQL 에 대한 추가 및 확장
6. 비 절차식 언어
7. 1970년 초에 IBM 의 SYSTEM R 프로젝트를 통해 개발
8. 표준화작업
	1) SQL-86
	2) SQL-89 
	3) SQL-92 
	4) SQL-1999
	5) SQL-2003
	6) SQL-2008
	7) SQL-2011
	8) SQL-2016
	9) SQL-2019


REM SQL 종류
1. Data Manipulation Language
	SELECT, INSERT, UPDATE, DELETE
2. Data Definition Language
	CREATE, ALTER, DROP
3. Data Control Language
	GRANT, REVOKE, COMMIT, ROLLBACK, SAVEPOINT


REM 로그인

	$ mysql -h <hostname> -u <username> -p
	$ mysql -u <username> -p
	

REM SQL문 작성방법
1. 특별히 대소문자를 구별하지는 않지만 유지보수/가독성을 위해 대문자 또는 소문자로 작성하라. 
	-KEYWORD 는 대문자, 개체(테이블, 필드 등)는 소문자

2. SQL의 각 절은 되도록 다른 행에 작성하여 읽기 쉽고 편집하기 쉽도록 구분하라.
3. TAB과 들여쓰기를 사용하여 좀 더 읽기 쉬운 SQL로 작성하라.
4. 띄워쓰기 법칙을 지켜서 SQL문을 통일시켜라.
5. 컬럼명과 TABLE명은 SQL 절과 구분되도록 작성하라.


REM 실습 테이블 소개
1. DEPT : 부서 정보를 저장. Primary Key는 DEPTNO column.
2. EMP : 사원 정보를 저장. Primary Key는 EMPNO column.
	-DEPTNO column은 DEPT table의 primary key인 DEPTNO column을 참조하는 Foreign Key

3. SALGRADE : 급여 등급 정보를 저장. 급여의 범위에 따라 1,2,3... 등급을 정하고 있으며 이 table에는 Primary Key, Foreign Key가 없다.
4. 특정 사원의 부서명이나 부서의 위치 정보를 알기 위해서는 Foreign Key인 DEPTNO column 값에 해당하는 DEPT table 정보를 검색해야 한다.
5. 특정 사원의 급여가 어떤 등급인지 확인하려면 SAL column 값이 SALGRADE table 의 LOSAL 과 HISAL column 값 사이에 있는 Grade를 찾아야 한다.


REM 각 테이블 정보를 확인해 보자.
	mysql> DESC dept;
	mysql> DESC emp;
	mysql> DESC salgrade;
