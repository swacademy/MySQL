REM Author : 
REM Date :
REM Objective : Chapter 2-1. Basic SELECT 실습
REM Environment : Ubuntu Server 20.04 LTS, HeidiSQL 10.2.0, MySQL Community Server 5.7.34.0

1. 모든 사원에 대해 200$씩 급여차감을 계산한 후 출력결과를 새 열 "SAL-200"로 표시하는 SQL문을 작성하시오.

	SELECT sal-200 AS "SAL-200"
	FROM emp;


2. 모든 사원에 대해 사원의 이름, 급여 및 연간 총수입을 표시하는 SQL문을 작성하시오. 단 연간 총 수입은 년봉에 상여금 200$씩 합하여 출력해야 합니다.

	SELECT ename AS "이름" , sal AS "급여" ,  sal*12 + 200 AS "연간 총 수입"
	FROM emp;


3. 모든 사원에 대해 다음과 같은 출력이 나오도록 SQL문을 작성하시오.
        Monthly Salary
        --------------------------------------
        SMITH : 1 Month salary = 800 (이하생략)

	SELECT CONCAT(ename, ' : 1 Month salary = ', sal) 
	AS "Monthly Salary"
	FROM emp;


4. 모든 사원에 대해 사번, 이름, 급여, 담당업무를 표시하되 각각 열이름을 한글로 출력하게 하는 SQL문을 작성하시오.

	SELECT empno AS "사번" ,  ename AS "이름" ,  sal AS "급여" , job AS "담당업무"
	FROM emp;


5. 모든 사원에 대해 사번, 이름, 급여, 보너스(comm), 보너스금액을 출력하는  SQL문을 작성하시오. 단 보너스금액은 실급여(급여와 보너스의 합)에 10%를 더해서 출력합니다.

	SELECT empno AS "사번", ename AS "이름" ,  sal AS "급여" ,  comm AS "보너스" ,  
	(sal + IFNULL(comm, 0)) * 1.1 AS "보너스금액"
	FROM emp;


6. 부서에 대한 정보를 출력하되, 각 부서의 이름과 부서의 위치를 아래와 같은 형태로 출려하게 하는 SQL문을 작성하시오.  
        부서상세정보
        ----------------------------------
        ACCOUNTING  is at NEW YORK

	SELECT CONCAT(dname, ' is at ', loc)  AS "부서상세정보"
	FROM dept;


7. 모든 사원에 대해 이름과 연봉을 "KING : 1 Year Salary = 60000"형식으로 출력하되 칼럼제목을 "Annual Salary"라고 출력하는 SQL문을 작성하시오.

	SELECT CONCAT(ename, ' : 1 Year Salary = ', sal*12) AS "Annual Salary"
	FROM emp;


8. emp 테이블에서 담당하고 있는 업무는 모두 몇가지인가요?

	SELECT DISTINCT job
	FROM emp;


9. 부서별로 담당하는 업무를 출력하는 SQL문을 작성하시오.

	SELECT DISTINCT deptno, job
	FROM emp;


10. 다음을 수행하고 혹시 Error가 난다면 올바르게 실행할 수 있도록 디버깅을 하시오.
        
	SELECT empno, ename, sal X 12 년 봉
   FROM  emp;

	SELECT empno, ename, sal * 12 AS "년 봉"
	FROM emp;


11. 1983년 이후에 입사한 사원의 사번, 이름, 입사일을 출력하시오.

12. 급여가 보너스(comm) 이하인 사원의 이름, 급여 및 보너스를 출력하시오.

13. 관리자의 사원번호가 7902, 7566, 7788인 모든 사원의 사원번호,이름,급여 및 관리자의 사원번호를 출력하시오.

14. 이름이 FORD 또는 ALLEN인 사원의 사번, 이름, 관리자 사원번호, 부서번호를 출력하시오.

15. job이 CLERK이면서 급여가 $1100 이상인 사원의 사번, 이름, 직위, 급여를 출력하시오.

16. 직위가 CLERK, MANAGER, ANALYST가 아닌 모든 사원의 이름 및 직위를 출력하시오.

17. 두가지 조건을 만족하는 쿼리를 작성하시오. 이름, 직위, 급여를 출력합니다.
   1) 직위가 PRESIDENT면서 급여가 1500을 넘어야 한다.
   2) 직위가 SALESMAN이어야 한다.

18. 두가지 조건을 만족하는 쿼리를 작성하시오. 이름, 직위, 급여를 출력합니다.
   1) 직위가 PRESIDENT 또는 SALESMAN이어야 한다.
   2) 급여가 1500을 넘어야 한다.

19. 다음 2개의 쿼리를 생각해 보자.
	SELECT empno, ename, job, sal
	FROM emp
	WHERE job= 'PRESIDENT' AND sal >= 2000 OR job = 'SALESMAN';

	SELECT empno, ename, job, sal
	FROM emp
	WHERE (job = 'PRESIDENT' OR job = 'SALESMAN') AND sal >= 2000;


20. EMP Table에서 이름, 급여, 커미션 금액, 총액(sal + comm)을 구하여 총액이 많은 순서로 출력하라. 단, 커미션이 NULL인 사람은 제외한다.

21. 10번 부서의 모든 사람들에게 급여의 13%를 보너스로 지불하기로 하였다. 이름, 급여, 보너스 금액, 부서번호를 출력하라.

22. 30번 부서의 연봉을 계산하여 이름, 부서번호, 급여, 연봉을 출력하라. 단, 연말에 급여의 150%를 보너스로 지급한다.

23. 부서번호가 20인 부서의 시간당 임금을 계산하여 출력하라. 단, 1달의 근무일수는 12일이고, 1일 근무시간은 5시간이다. 출력양식은 이름, 급여, 시간당 임금(소수이하 첫 번째 자리에서 반올림)을 출력하라

24. 모든 사원의 실수령액을 계산하여 출력하라. 단, 이름, 급여, 실수령액을 출력하라.(실수령액은 금여에 대해 10%의 세금을 뺀 금액)

25. dept 테이블의 구조와 내용을 조회하라.

26. dept 테이블에서 부서명과 위치를 연결하여 출력하라.

27. emp 테이블에서 사원번호가 7788인 사원의 이름과 부서번호를 출력하는 문장을 작성하시오.

28. EMP Table에서 이름, 급여, 커미션 금액, 총액(sal + comm)을 구하여 총액이 많은 순서로 출력하라. 단, 커미션이 NULL인 사람은 제외한다.

	SELECT ename, sal, comm, sal +comm AS Total
	FROM emp
	WHERE comm IS NOT NULL 
	ORDER BY Total DESC; 


29. 10번 부서의 모든 사람들에게 급여의 13%를 보너스로 지불하기로 하였다. 이름, 급여, 보너스 금액, 부서번호를 출력하라.

	SELECT ename, sal, sal * 1.13, deptno
	FROM emp
	WHERE deptno = 10;

30. 30번 부서의 연봉을 계산하여 이름, 부서번호, 급여, 연봉을 출력하라. 단, 연말에 급여의 150%를 보너스로 지급한다.
	
	SELECT ename, deptno, sal, (sal*12)+(sal*1.5)
	FROM emp
	WHERE deptno = 30;


31. 부서번호가 20인 부서의 시간당 임금을 계산하여 출력하라. 단, 1달의 근무일수는 12일이고, 1일 근무시간은 5시간이다. 출력양식은 이름, 급여, 시간당 임금(소수이하 첫 번째 자리에서 반올림)을 출력하라
	
	SELECT ename, sal, (sal/12)/5
	FROM emp
	WHERE deptno = 20;


32. 부서번호가 10번인 부서의 사람 중 사원번호, 이름, 월급을 출력하시오

	SELECT dname  FROM DEPT  WHERE deptno = 10;
	SELECT empno, ename, sal
	FROM EMP
	WHERE deptno = 10;


33. 사원번호가 7369번 인 사람의 이름, 입사일, 부서번호를 출력하시오.

34. 이름이 ALLEN인 사람의 모든 정보를 출력하시오.

35. 입사일이 1981년 9월 8일 사원의 이름, 부서번호, 월급을 출력하시오.

	SELECT ename, deptno, sal, hiredate
	FROM EMP
	WHERE CAST(hiredate AS DATE) = '1981-9-8';


36. 직업이 MANAGER 가 아닌 사람의 모든 정보를 출력하시오.

	SELECT * FROM EMP WHERE NOT job = 'MANAGER';


37. 입사일이 81년 4월 2일 이후에 입사한 사람의 모든 정보를 출력하시오.

	SELECT * FROM EMP
	WHERE CAST(hiredate AS DATE) >= '1981-4-2';


38. 급여가 800 이상인 사람의 이름, 급여, 부서번호를 출력하시오.

39. 부서번호가 20번 이상인 사원의 모든 정보를 출력하시오.

40. 이름이 K로 시작하는 사람보다 높은 이름을 가진 사람의 모든 정보를 출력하시오.

41. 입사일이 1981년 12월 9일보다 먼저 입사한 사원의 모든 정보를 출력하시오.

42. 입사번호가 7698보다 작거나 같은 사원의 입사번호와 이름을 출력하시오.

43. 입사일이 1981년 4월 2일보다 늦고 1982년 12월 9일보다 빠른 사원의 이름, 월급, 부서번호를 출력하시오.

44. 급여가 1600만원보다 크고 3000만원보다 작은 사람의 이름, 직업, 급여를 출력하시오.

45. 사원번호가 7654와 7782 사이 이외의 사원의 모든 정보를 출력하시오.

46. 입사일이 1981년 이외에 입사한 사람의 모든 정보를 출력하시오.

47. 직업이 MANAGER와 SALESMAN인 사람의 모든 정보를 출력하시오.

48. 부서번호가 20번 30번을 제외한 모든 사람의 이름, 사원번호,부서번호를 출력하시오.

49. 이름이 S로 시작하는 사원의 사원번호, 이름, 입사일, 부서번호를 출력하시오.

50. 입사일이 1981년도인 사원의 모든 정보를 출력하시오.

51. 이름중 S가 들어가 있는 사람의 모든 정보를 출력하시오.

52. 이름이 J로 시작하고 마지막 글자가 S로 끝나는 사람의 모든 정보(단 이름은 전체 5글자이다.)를 출력하시오.

53. 첫번째 문자는 관계없고, 두번째 문자가 A인 사람의 모든 정보를 출력하시오.

54. 커미션이 NULL인 사람의 모든 정보를 출력하시오.

55. 커미션이 NULL이 아닌 사람의 모든 정보를 출력하시오.

56. 부서가 30번 부서이고 급여가 1500만원이상인 사람의 이름,부서, 월급을 출력하시오.

57. 이름의 첫글자가 K로 시작하거나 부서번호가 30인 사람의 사원번호, 이름, 부서번호를 출력하시오.

58. 급여가 1500만원이상이고, 부서번호가 30번인 사원 중 직업이 MANAGER인 사람의 정보를 출력하시오.

59. 부서번호가 30인 사람 중 사원번호로 정렬하시오.

60. 급여가 많은 순으로 정렬하시오.

61. 부서번호로 오름차순 정렬한 후 급여가 많은 사람순으로 출력하시오.

62. 부서번호로 내림차순 정렬하고 이름순으로 오름차순으로 정렬하고 급여순으로 내림차순으로 출력하시오.

63. 이름이 B와 J 사이의 모든 사원의 정보출력하시오.