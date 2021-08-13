SELECT * FROM DICT;
--����Ŭdb�� ���� ������ ������ �ִ� ���̺� : DATA DICTIONARY��� ��.
SELECT * FROM DICTIONARY;
--���� DB�� ��ϵ� ����ڰ��� ��������
SELECT * FROM DBA_USERS;

-- ������ ������ ����, ����� ����
-- �����ڰ��� : ����� ������ ���, ���Ѻο� �ϰ�, ��ü ������ TABLE�� �����ϴ� ���� -> DBBASE�� ��ü������ ����
-- SYSTEM : �Ϲݰ����� ������ ���̽���ü�� ����, ������ �� ����
-- SYS : ���۰����� �����ͺ��̽� ����, ����, DATADICTIONARY ������ �ְ� ������!

-- �⺻������ ����Ŭ DATA BASE�� �̿��ϱ� ���ؼ� ����� ������ �ʿ���.
-- ����� ���������, ���� ���� �� �̿���Ѻο�
-- ����� ������ SYSTEM, SYS AS SYSDBA �������� ��ɾ �����.
-- CREATE USER ������ IDENTIFIED BY ��й�ȣ;
CREATE USER KH IDENTIFIED BY KH;
SELECT * FROM DBA_USERS;
-- ����ڰ����� CREATE�� �����Ѵٰ� �ؼ� ������ DB�̿��� �����Ѱ��� �ƴ�
-- �̿��� �� �ִ� ������ SYSTEM/SYS������ �ο��������.
-- GRANT ���Ѹ�(ROLE) TO ����ڰ�����;
-- RESOURCE, CONNECT����(ROLE)�� �ο��Ѵ�.
GRANT RESOURCE, CONNECT TO KH;

-- test���� ���� �� ���� �ϴ°� 
CREATE USER TEST IDENTIFIED BY TEST;
--RESOURCE, CONNECT 
-- -> RESOURCE ���̺��� ���� ������ �� �ִ� ����
-- -> CONNECT �Ҵ�� ������ ������ �� �ִ� ����
GRANT RESOURCE, CONNECT TO TEST;

-- KH���� ���� Ȯ���ϱ�
SELECT * FROM TAB; --������ ������ �ִ� ��ü ���̺��� ��ȸ

-- ������ KH������ ���̺�Ȯ���غ���
SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEE;
SELECT * FROM JOB;
SELECT * FROM LOCATION;
SELECT * FROM SAL_GRADE;
SELECT * FROM NATIONAL;

-- KH������ EMPLOYEE ���̺��� ��ȸ�غ���.
-- ���(EMP_ID),�̸�(EMP_NAME), ����(SALARY) ��ȸ
SELECT EMP_ID, EMP_NAME, SALARY
FROM EMPLOYEE;

-- EMPLOYEE���̺��� ����̸�, �̸���, �μ��ڵ�, ��å�ڵ� ��ȸ�ϱ�
SELECT EMP_NAME, EMAIL, DEPT_CODE,JOB_CODE
FROM EMPLOYEE;

-- EMPLOYEE���̺� �ִ� ��ü �÷��� ��ȸ�ϼ���!
SELECT EMP_ID, EMP_NAME, EMP_NO, EMAIL, 
       PHONE, DEPT_CODE, JOB_CODE, SAL_LEVEL, 
       SALARY, BONUS, MANAGER_ID, HIRE_DATE, ENT_DATE, ENT_YN
FROM EMPLOYEE;
-- ���̺� �ִ� �÷��� ��ü ��ȸ�Ҷ��� *�� �������
SELECT * 
FROM EMPLOYEE;


-- SELECT���� �ܼ��� ��ȸ�Ӹ� �ƴ϶� ��ȸ�Ҷ� �������ó���� ����
-- �� ��������� ������Ÿ���� ���
-- SELECT �÷���||���ͷ���
SELECT 10*100
FROM DUAL; -- DUAL���̺��� ����Ŭ���� �⺻�����ϴ� ���̺�� ������ �׽�Ʈ�� ���� ���̺�

-- SELECT������ ��������Ҷ��� �÷����� ������ ����� ���� ����
SELECT * 
FROM EMPLOYEE;

-- ����� ������ ������
SELECT EMP_NAME, SALARY, SALARY*12
FROM EMPLOYEE;
-- �� ����� ���ʽ��� ������
SELECT EMP_NAME,SALARY, BONUS, SALARY*BONUS
FROM EMPLOYEE;

-- �÷����� NULL�� ROW�� ���� ���°� ������ -> ������ ����� X

-- EMPLOYEE ���̺��� �����, �μ��ڵ�, ��å�ڵ�, ����, ����, ���ʽ� ������ ���� ��ȸ�ϱ�
SELECT EMP_NAME, DEPT_CODE, JOB_CODE, 
        SALARY, SALARY*12, (SALARY+(SALARY*BONUS))*12
FROM EMPLOYEE;

-- RESULTSET�� �÷��� �����ϱ� �÷��� ��Ī�ο��ϱ�
-- �÷��� AS ��Ī��, �÷��� ��Ī, 
SELECT EMP_NAME, EMAIL, PHONE 
FROM EMPLOYEE;
SELECT EMP_NAME AS �����, EMAIL AS �̸���, PHONE ��ȭ��ȣ
FROM EMPLOYEE;

-- ��Ī�� �ƹ��ų� �� ����� �����Ѱ�? ���� Ư����ȣ
-- Ư����ȣ, ù���ڼ���, ���⸦ ����Ҷ��� ""���� ���ξ���.
-- ""�� ���Ѱ��� ���ڿ� ���ͷ��� �ƴϴ�! �ڹٶ� �ٸ�!!!! -> ���ڿ����ͷ� '' ���� ǥ��
SELECT EMP_NAME AS "�� �� ��", EMAIL AS "^�̸���",
     DEPT_CODE AS "1�μ�"
FROM EMPLOYEE;

-- SELECT������ ���ڿ����ͷ� ����ϱ�
SELECT EMP_NAME,'��', SALARY,'��'
FROM EMPLOYEE;

-- �࿡�� �ߺ����� �����ϰ� ����ϱ�
-- DISTINCT : �ߺ��� ���� ���� �Ѱ��� ���
SELECT JOB_CODE
FROM EMPLOYEE;
SELECT DISTINCT JOB_CODE
FROM EMPLOYEE; -- JOB_CODE ����Ҷ� �ߺ��Ǵ� ���� �Ѱ��� ���

SELECT JOB_CODE, DISTINCT DEPT_CODE
FROM EMOPLOYEE; -- DISTINCT�� SELECT������ �ѹ� ����� ������. SELECT �� �տ�.

SELECT DISTINCT JOB_CODE, DEPT_CODE
FROM EMPLOYEE;

-- �÷�, ���ͷ��� �����غ���.
-- || ������ : SELECT �� �ۼ��� �÷�||���ͷ��� �Ѱ��� �÷����� �����ִ� ���
SELECT EMP_NAME,'��',SALARY,'��'
FROM EMPLOYEE;

SELECT EMP_NAME||'��'||SALARY||'��',DEPT_CODE||JOB_CODE AS �μ���å
FROM EMPLOYEE;

-- SELECT �÷���, �÷���, ���ͷ�
-- FROM ���̺��
-- [WHERE �÷��� �񱳿�����(=,>=,<=,<,>!=) �÷���||���ͷ� ] : ���ǹ� ROW(��)�� (DATA) ���͸����ִ� ����!
-- �񱳿�����
-- = : �����(����) 10=10, A=20
-- !=,<>,^= : ���� �ʴ� ��
-- >,<,<=,>= : ��Һ�(����,��¥)
-- BETWEEN ���� AND ���� : Ư�� ������ ���� �� // 1<=A&&A<=10;
-- LIKE /NOT LIKE : Ư�����Ͽ� ���� ���� �� * �κ���ġ����
-- IN / NOT IN : ���߰��� ���Կ��θ� �� A IN 10,20,30
-- IS NULL / IS NOT NULL : NULL���� ���� ��
-- ������ : �������θ� Ȯ���ϴ� ������ �� && �� �� || ��
-- AND : �׸��� && ������ ���
-- OR : �Ǵ� || ������ ���
-- NOT : ��������
SELECT EMP_NAME, SALARY
FROM EMPLOYEE;

-- EMPLOYEE ���̺��� ������ 350���� �̻��� ���� ��ȸ + �μ��ڵ尡 D5�� ���
-- �����, �μ��ڵ�, �޿�
SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY >= 3500000 AND DEPT_CODE='D5';

-- �μ��ڵ尡 D6�� �ƴ� ����� ��ü �÷� ��ȸ�ϱ�
SELECT * 
FROM EMPLOYEE
--WHERE DEPT_CODE!='D6';
--WHERE DEPT_CODE<>'D6';
WHERE NOT DEPT_CODE='D6';

-- �����ڵ尡 J1�ƴ� ������� SAL_LEVEL�� �ߺ����� ����ϼ���
-- DISTINCT
SELECT DISTINCT SAL_LEVEL
FROM EMPLOYEE
WHERE DEPT_CODE!='J1';

-- �μ��ڵ尡 D5�̰ų� �޿��� 300�����̻� �޴� ���
-- �����, �μ��ڵ�, �޿� 
SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D5' OR SALARY >=3000000;

-- ����� �޿��� 200�����̻� 400���� ������ ����� �����, ��å�ڵ�, �޿� ��ȸ
SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY >=2000000 AND SALARY <= 4000000;
-- ������ ��ȸ�Ҷ� BETWEEN AND �� ����� �� �ִ�.
SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 2000000 AND 4000000;

-- ��Һ񱳴� ��¥�� �� ���� ��¥�� ���ڿ��� '��/��/��' -> '00/00/00'
-- EMPLOYEE ���̺��� �����(HIRE_DATE)�� 00��01��01�� ���� ���� ����� ��ȸ
SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE < '00/01/01'; --'��/��/��' ->'01/JAN/00'

-- LIKE : ���Ͽ� ���� �����͸� ��ȸ�ϴ� ���
-- WHERE �÷��� LIKE '%��%��_��_'
-- % : ���ڰ� 0�� �̻� �ƹ����ڳ� �� ��� -> 
  --    '%��' -> ������ ������ ������ / '%��%' �����Ϳ� ���� ���ԵǾ��ִ���
  --    �����ٶ󸶰� o , ��, �����ٰ��󳪾ƶ�, ���ϳ��Ѽ�
-- _ : �� �ڸ� �ƹ����ڳ� �Ѱ�
  --    '_��' -> ������ ������ �α��� 
  --    '___'
  
-- EMPLOYEE ���̺��� ���� ���� ���� ����� ��ȸ�ض�
-- �����, �޿�
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
--WHERE EMP_NAME LIKE '��%';
WHERE EMP_NAME LIKE '��__%';

-- ������� �߰��� ���̵��� ��� �̸� �μ��ڵ� ��ȸ
SELECT EMP_NAME, DEPT_CODE
FROM EMPLOYEE
--WHERE EMP_NAME LIKE '_��%';
WHERE EMP_NAME LIKE '_��_';

SELECT EMP_NAME, EMAIL
FROM EMPLOYEE;
-- EMPLOYEE���̺��� �̸����� _���� ���ڰ� 3������ ����� ��ȸ
-- �����, �̸���
SELECT EMP_NAME, EMAIL
FROM EMPLOYEE
--WHERE EMAIL LIKE '____%';
WHERE EMAIL LIKE '___#_%' ESCAPE '#';

-- ���� �̾��� �ƴ� ��� ��ȸ�ϱ� �����, �̸���
SELECT EMP_NAME, EMAIL
FROM EMPLOYEE
--WHERE EMP_NAME NOT LIKE '��__%';
WHERE NOT EMP_NAME LIKE '��__%';

-- NULL�� ���غ���
-- BONUS�� NULL�� ����� ����ϱ�
-- �����, BONUS
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
--WHERE BONUS = NULL;
WHERE BONUS = (null);
-- null�� ���ϱ� ���ؼ��� ����Ŭ���� �����ϴ� ���� ���
-- IS NULL /IS NOT NULL
SELECT EMP_NAME, BONUS
FROM EMPLOYEE
--WHERE BONUS IS NULL;
WHERE BONUS IS NOT NULL;

-- ���߰��� ���ϱ� 
-- IN / NOT IN : ���߰��� �ѹ��� �����
-- EMPLOYEE���̺��� �μ��ڵ尡 D5, D6�� ��� ��ȸ�ϱ�
-- �����, �μ��ڵ� ��ȸ
SELECT EMP_NAME, DEPT_CODE
FROM EMPLOYEE
--WHERE DEPT_CODE = 'D5' OR DEPT_CODE='D6';
--WHERE DEPT_CODE IN('D5','D6'); -- ������ ���������� ���� ���
--WHERE DEPT_CODE IN (SELECT DEPT_CODE FROM EMPLOYEE WHERE EMP_NAME LIKE '��%'); 
WHERE DEPT_CODE NOT IN('D5','D6');


-- ��å�� J2�Ǵ� J7�� ����� �޿��� 200���� ���� ���� ����� ��ȸ�ϱ�
SELECT EMP_NAME, JOB_CODE, SALARY
FROM EMPLOYEE
--WHERE JOB_CODE='J7' OR JOB_CODE='J2' AND SALARY>=2000000;
WHERE (JOB_CODE='J7' OR JOB_CODE='J2') AND SALARY>=2000000;

--���ڿ� �Լ��� ���� �˾ƺ���
--LENGTH : ���ڿ�||�÷��� ���̸� �˷��ִ� ���
SELECT LENGTH('�ȳ��ϼ���') FROM DUAL;
SELECT EMP_NAME, LENGTH(EMP_NAME), EMAIL, LENGTH(EMAIL) FROM EMPLOYEE;
--�̸����� ���ڼ��� 16�̻��� ������
SELECT EMP_NAME, EMAIL, LENGTH(EMAIL) 
FROM EMPLOYEE
WHERE LENGTH(EMAIL)>=16;
--LENGTHB : ���ڿ�||�÷��� ���� BYTE������ ���
SELECT EMP_NAME, LENGTHB(EMP_NAME) FROM EMPLOYEE;
--����Ŭ EXPRESS�������� �ѱ��� 3BYTE / ENTERPRICE -> 2BYTE
SELECT LENGTHB('ASB') FROM EMPLOYEE;

-- INSTR
-- ã�� ���ڿ��� ������ ��ġ���� ������ Ƚ����°�� ��Ÿ���� ��ġ ��ȯ( �ε�����ȣ)
-- INSTR(���ڿ�||�÷� TARGET,���ڿ�||�÷� ã�¹���,������ġ, ���°����ã���ǰ�)
SELECT INSTR('KH����������','KH') FROM DUAL;--����Ŭ�� 0�� ������� ����, ���� 1
SELECT INSTR('KH���������� KH������ȭ����','KH',3) FROM DUAL;
SELECT INSTR('KH���������� KH������ȭ���� KH RCLASS������','KH',3,2) FROM DUAL;
SELECT INSTR('KH���������� KH������ȭ���� KH RCLASS������','KH',-1,2) FROM DUAL;

-- EMPLOYEE ���̺��� EMAIL�� @�� ��ġ�� ���ϼ���
SELECT EMAIL,INSTR(EMAIL,'@') FROM EMPLOYEE;

-- LPAD/RPAD : �Ҵ�� �������� ������� ��,�������� Ư�����ڷ� ä��� ���
-- L/RPAD(���ڿ�||�÷�, ������ũ��,����)
SELECT LPAD('YOOBS',10,'*') FROM DUAL;
SELECT RPAD('YOOBS',20,'^^') FROM DUAL;
SELECT EMAIL, RPAD(EMAIL,16,'#') FROM EMPLOYEE;
SELECT LPAD('YOOBS',10) FROM DUAL; --DEFAULT�� ����

-- LTRIM/RTRIM : ���ڿ��� ����, �����ʿ� �ִ� ����, �������ڸ� ����
-- L/RTRIM(���ڿ�||�÷�[,����])
SELECT LTRIM('   ����   ') FROM DUAL;
SELECT RTRIM('    ����    ') FROM DUAL;
--SELECT * FROM EMPLOYEE WHERE EMP_NAME='����';
SELECT LTRIM('000012345653','0') FROM DUAL;
SELECT LTRIM('0000110001100011','0') FROM DUAL;
SELECT LTRIM('0000110001100011','01') FROM DUAL;
--- 12314123092635123�����¿��� �����¸� ���⼼��
SELECT LTRIM('12314123092635123������','0123456789') FROM DUAL;
-- 1231912039184������102938124123714907493 �����¸� ���⼼�� ��Ʈ~ ��ȯ����
SELECT LTRIM(RTRIM('1231912039184������102938124123714907493','0123456789'),'0123456789') FROM DUAL;

-- TRIM : ����, �ɼǿ� ���� ����,������,������ Ư�� ����(1��)�� ����
-- TRIM(���ڿ�||�÷�) -> ��������
-- TRIM(�Ѱ����� FROM ���ڿ�||�÷�) ���ʿ��� ���ڸ� ����
-- TRIM(LEADING||TRAILING||BOTH ���� FROM ���ڿ�||�÷�) 
SELECT '    ����    ', TRIM('    ����    ') AS A FROM DUAL;
SELECT TRIM('   A   ����   B   ') FROM DUAL;
SELECT TRIM('Z' FROM 'ZZZAZZ����ZZBZZ') FROM DUAL;--�ѱ��ڸ� ����
SELECT TRIM(LEADING FROM '     ����     ') AS A FROM DUAL;
SELECT TRIM(TRAILING FROM '    ����     ') AS A FROM DUAL;
SELECT TRIM(LEADING '��' FROM '������������������������') AS A FROM DUAL;

-- SUBSTR : �÷��̳� ���ڿ����� ������ ��ġ���� ������ ������ŭ �߶󳻴� �Լ�
-- SUBSTR(���ڿ�||�÷�, ������ġ[,����]) 
SELECT SUBSTR('SHOWMETHEMONEY',5) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY',5,2) FROM DUAL;
SELECT SUBSTR('SHOWMETHEMONEY',-3,3) FROM DUAL;

SELECT EMP_NAME, SUBSTR(EMP_NO,1,6) FROM EMPLOYEE;
--���ڻ������ϱ�
SELECT EMP_NAME, EMP_NO 
FROM EMPLOYEE
WHERE SUBSTR(EMP_NO,8,1)=2;
SELECT SUBSTR(EMAIL,INSTR(EMAIL,'@')+1) FROM EMPLOYEE;

-- �����ڰ��� �빮��, �ҹ���, ù���ڸ� �빮�ڷ�
-- LOWER/UPPER/INITCAP
SELECT LOWER('Welcome to OralceWorld') FROM DUAL;
SELECT UPPER('Welcome to OralceWorld') FROM DUAL;
SELECT INITCAP('Welcome to OralceWorld') FROM DUAL;

SELECT EMAIL 
FROM EMPLOYEE
WHERE EMAIL LIKE LOWER('%KH%');

-- CONCAT : ���Ῥ���� �ϴ� �Լ�. == ||
-- CONCAT(���ڿ�||�÷�,���ڿ�||�÷�)
SELECT CONCAT('������',' ����Ŭ ����ֳ���?') FROM DUAL;
SELECT '������'||' ����Ŭ ����ֳ���?' FROM DUAL;
SELECT CONCAT(EMP_NAME,'��') FROM EMPLOYEE;

-- REPLACE : Ư�������� �����ϴ°�
-- REPLACE(Ÿ�Ϲ���||�÷�,����� ����, ��ü�� ����)
SELECT REPLACE('I LOVE MY LIFE','LOVE','HATE') FROM DUAL;
SELECT REPLACE(EMAIL,'kh.or.kr','bs.com') FROM EMPLOYEE;

-- REVERSE : �ش� ���ڿ� ���ٷ� ����� ��� - �ѱ��� ��������
SELECT REVERSE('ABC') FROM DUAL;
SELECT REVERSE(REVERSE('������')) FROM DUAL;

-- TRANSLATE : ��Ī�Ǿ��ִ� ������ ���
SELECT TRANSLATE('010-3644-6259','0123456789','�����̻�����ĥ�ȱ�') FROM DUAL;


SELECT EMP_NAME, EMP_NO, REVERSE(EMP_NO) 
FROM EMPLOYEE;


-- ����ó���Լ�
-- ABS : ���밪ó���ϴ� �Լ�
SELECT ABS(10), ABS(-10) FROM DUAL;
-- MOD : �������� ���ϴ� �Լ�
-- MOD(����, ������)
SELECT MOD(3,2) FROM DUAL;
SELECT MOD(SALARY,3) FROM EMPLOYEE;
SELECT * 
FROM EMPLOYEE
WHERE MOD(SALARY,3)=0;

-- ROUND : �Ҽ��� �ݿø��ϴ� ���
-- ROUND(�Ҽ����ڸ�����[,�ڸ���]) -> �Ҽ������� �ݿø�
SELECT ROUND(126.456),ROUND(126.543) FROM DUAL;
SELECT ROUND(126.456,1) FROM DUAL;
SELECT ROUND(126.456,-2) FROM DUAL;

-- FLOOR : �Ҽ����ڸ��� ����
SELECT FLOOR(123.456) FROM DUAL;
SELECT FLOOR(1.456) FROM DUAL;

-- TRUNC : ����(��ġ����)
SELECT TRUNC(123.456),TRUNC(123.456,2), TRUNC(123.456,1) ,TRUNC(125.1234,-1) FROM DUAL;

-- CEIL : �����ǿø�
SELECT CEIL(122.123), CEIL(122.123) FROM DUAL;

SELECT EMP_NAME, FLOOR(SALARY+(SALARY*BONUS)/3) FROM EMPLOYEE;

-- ��¥ó���Լ�
-- SYSDATE : �ý����� ���ݳ�¥�� ���
SELECT SYSDATE FROM DUAL;
SELECT SYSDATE, CURRENT_DATE, LOCALTIMESTAMP, CURRENT_TIMESTAMP 
FROM DUAL;

SELECT SYSDATE, TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS')
FROM DUAL;

-- ��¥�� ��������� ���� +, - 
-- +/-�� ���ڸ� ���.
SELECT SYSDATE-1 AS ���� ,SYSDATE AS ���� ,SYSDATE+1 AS ����
FROM DUAL;
-- ��¥���� ��� LONGŸ���� ����
SELECT SYSDATE - TO_DATE('01/02/24','YY/MM/DD') FROM DUAL;

--ADD_MONTHS : �������� �������ִ� �Լ� ������ �� ���ִ� �Լ�
--ADD_MONTHS(��¥,���� ����)
SELECT ADD_MONTHS(SYSDATE,3) FROM DUAL;

--EMPLOYEE���̺��� �Ի� 3���� �� ��¥�� ���ϼ���
SELECT HIRE_DATE, ADD_MONTHS(HIRE_DATE,3) FROM EMPLOYEE;

-- ���úη� �������� ����� ������(���Դ�) �������Ⱓ 1�� 6����
-- �������ڸ� ���ϰ�, �������� �Դ� «���� ���� ���ϼ��� �Ϸ�3���� ���
SELECT ADD_MONTHS(SYSDATE,18) AS ������, (ADD_MONTHS(SYSDATE,18)-SYSDATE)*3 AS «���
FROM DUAL;


-- MONTHS_BETWEEN : �������� ���ϴ� �Լ� 
-- MONTHS_BETWEEN(D1, D2)
SELECT FLOOR(MONTHS_BETWEEN(SYSDATE, TO_DATE('21/07/10','RR/MM/DD')))
FROM DUAL;
-- EMPLOYEE���̺��� ����� �ٹ��������� ������
-- �̸�, �μ�, ��å �ٹ������� ��ȸ
SELECT EMP_NAME, DEPT_CODE, JOB_CODE, FLOOR(MONTHS_BETWEEN(SYSDATE,HIRE_DATE))
FROM EMPLOYEE;


-- NEXT_DAY : ��¥�� �Է¹��� ������ ���尡��� ���� ������ ���
SELECT SYSDATE, NEXT_DAY(SYSDATE,'������') FROM DUAL;
SELECT NEXT_DAY(SYSDATE,'��') FROM DUAL;
SELECT NEXT_DAY(SYSDATE,'MON') FROM DUAL;
SELECT NEXT_DAY(SYSDATE,'MONDAY') FROM DUAL;
SELECT NEXT_DAY(SYSDATE,'FRIDAY') FROM DUAL;
-- ����Ŭ LOCALE ��������� ���� ����
SELECT * FROM V$NLS_PARAMETERS;
ALTER SESSION SET NLS_LANGUAGE=KOREAN;

-- LAST_DAY :  �״��� ���������� ���
SELECT LAST_DAY(SYSDATE) FROM DUAL;

-- EXTRACT : ��¥�� ��, ��, ���� ���� ����� �� �ְ� 
-- EXTRACT(YEAR FROM ��¥) :  �⸸ ���
-- EXTRACT(MONTH FROM ��¥)  : ���� ���
-- EXTRACT(DAY FROM ��¥) :  �ϸ� ���
SELECT EXTRACT(YEAR FROM SYSDATE), EXTRACT(MONTH FROM SYSDATE), EXTRACT(DAY FROM SYSDATE)
FROM DUAL;
SELECT EXTRACT(HOUR FROM CAST(SYSDATE AS TIMESTAMP)) FROM DUAL;
SELECT EXTRACT(MINUTE FROM CAST(SYSDATE AS TIMESTAMP)) FROM DUAL;
SELECT EXTRACT(SECOND FROM CAST(SYSDATE AS TIMESTAMP)) FROM DUAL;
SELECT EXTRACT(HOUR FROM CAST(SYSDATE AS TIMESTAMP))||':'||EXTRACT(MINUTE FROM CAST(SYSDATE AS TIMESTAMP))
||':'||EXTRACT(SECOND FROM CAST(SYSDATE AS TIMESTAMP)) FROM DUAL;
--�Ի����� 90����� ����� �̸� �μ� �Ի��� ��ȸ
SELECT EMP_NAME, DEPT_CODE, EXTRACT(YEAR FROM HIRE_DATE) 
FROM EMPLOYEE
WHERE EXTRACT(YEAR FROM HIRE_DATE) BETWEEN 1900 AND 1999;

-- ����ȯ �Լ�
-- ����Ŭ���� �����͸� �����ϱ� ���� TYPE�� ������ ����
-- ���� : NUMBER -> ����, �Ҽ��� �� ����
-- ���� : CHAR, VARCHAR2, NCHAR, NVARCHAR2 * VARCHAR2 ����.

--CREATE TABLE TEST(
--    NAME CHAR(10),
--    NAME2 VARCHAR2(10)
--)

-- ��¥ : DATE

-- ����ȯ�Լ�
--TO_CHAR : DATE, NUMBER�� �ڷ����� CHARACTER������ �����ϴ°�
SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD DY HH24:MI:SS'),
   TO_CHAR(SYSDATE+1,'YY/MM/DD (DY)')
FROM DUAL;
-- NUMBER -> CHARACTER������ ����
SELECT 12345,
    TO_CHAR(912345,'999,999,999'),
    TO_CHAR(435123,'9,999'),
    TO_CHAR(8500000,'L999,999,999'),
    TO_CHAR(800,'$999,999,999'),
    TO_CHAR(912345,'000,000,000'),
    TO_CHAR(123456,'000,000'),
    TO_CHAR(80.5,'999,999.00'),
    TO_CHAR(100,'999,999.00')
FROM DUAL;

-- EMPLOYEE���̺��� �޿��� �̻ڰ� ����غ���
-- �����, �μ��ڵ� ����(�̻ڰ�)
SELECT  EMP_NAME, DEPT_CODE,
    TO_CHAR(SALARY,'L999,999,999,999')||'��'
FROM EMPLOYEE;    

-- TO_DATE : ����, ���ڸ� ��¥�� �����ϴ� �Լ�
SELECT TO_DATE('19960626','YYYYMMDD') FROM DUAL;
--'00/01/01' -> �ڵ�����ȯ
SELECT TO_CHAR(TO_DATE('19981027 14:18:15','YYYYMMDD HH24:MI:SS'),'YYYY/MM/DD DY HH24:MI') FROM DUAL;
SELECT TO_DATE(960925,'YYMMDD') FROM DUAL;
-- �ּ��� �ǹ̰�
SELECT TO_DATE('000224','YYMMDD') 
FROM DUAL;

SELECT * FROM TAB WHERE TNAME='EMPLOYEE';
SELECT * --�ּ��� �ǹ̰� ��������!
FROM KH.EMPLOYEE;


--SELECT RPAD('ABDC',10,'') FROM DUAL;

--TO_NUMBER : �����������͸� �����������ͷ� ��ȯ, ��������Ҷ� ���
-- TO_NUMBER(����||�÷�,����)
SELECT '1,000,000'+'2,000,000' FROM DUAL;
SELECT TO_NUMBER('1,000,000','999,999,999') + TO_NUMBER('2,000,000','999,999,999')
FROM DUAL;
SELECT TO_NUMBER('123A','999') FROM DUAL;

-- NVL() : NULL���� Ư����(����, ����)���� ��ü �����ִ� �Լ�
-- NVL(�÷�, ��ü��)
SELECT EMP_NAME, SALARY,BONUS, (SALARY+(SALARY*NVL(BONUS,0)))*12 
FROM EMPLOYEE;
SELECT EMP_NAME, SALARY, BONUS, NVL(BONUS,0)
FROM EMPLOYEE;

-- DEPT_CODE�� NULL�� ����� �������� ����ϱ�
-- �����, DEPT_CODE 
SELECT EMP_NAME, NVL(DEPT_CODE,'����')
FROM EMPLOYEE
WHERE DEPT_CODE IS NULL;

-- NVL2() : NULL�̸�, NULL�� �ƴϸ� �ΰ����� �� ��ü�ϴ� �Լ�
SELECT EMP_NAME, BONUS, NVL2(BONUS,'�ִ�','����')
FROM EMPLOYEE;

--GREATEST / LEAST : �ִ�/�ּұ��ϱ�
SELECT GREATEST(1,2,3,4,5), GREATEST('��','��','��') FROM DUAL;
SELECT LEAST(1,2,3,4,5), LEAST('��','��','��') FROM DUAL;
SELECT GREATEST(1,2,3,4,5)
FROM DUAL;

-- DECODE : �����Լ� * �ڹ��� SWITCH���� ����� ����
-- DECODE(ǥ����,����,���,����1,���,����2,���.....)
--EMPLOYEE ���̺� ������ �߰�����.
SELECT EMP_NAME, EMP_NO,
        DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��','3','��','4','��') AS ����
FROM EMPLOYEE;
SELECT EMP_NAME, JOB_CODE,
    DECODE(JOB_CODE,'J1','��ǥ','J2','�λ���','��Ÿ')
FROM EMPLOYEE;

-- CASE�� : DECODE�� Ȱ���� �����.
-- CASE 
--      WHEN ����1 THEN ���
--      WHEN ����2 THEN ���2
--      WHEN ����3 THEN ���3
--      ELSE ���
-- END

SELECT EMP_NAME, EMP_NO,
    CASE 
        WHEN SUBSTR(EMP_NO,8,1)=1 THEN '��'
        --WHEN SUBSTR(EMP_NO,8,1)=2 THEN '��'
        ELSE '��'
    END AS ����,
    CASE 
        WHEN SALARY > 4000000 THEN '��׿�����'
        WHEN SALARY > 3000000 THEN '�߰�������'
        ELSE '������'
    END
FROM EMPLOYEE;

SELECT EMP_NAME,
    CASE SUBSTR(EMP_NO,8,1)
        WHEN '1' THEN '��'
        WHEN '3' THEN '��'
        ELSE '��'        
    END
FROM EMPLOYEE;

--��� ���̺��� ���糪�̸� ���غ�����
-- �����ȣ, �����, EMP_NO, ����

SELECT EMP_ID, EMP_NAME, EMP_NO,
    EXTRACT(YEAR FROM SYSDATE)- EXTRACT(YEAR FROM TO_DATE(SUBSTR(EMP_NO,1,2),'YY'))+1 AS "����(YY)",
    EXTRACT(YEAR FROM SYSDATE)- EXTRACT(YEAR FROM TO_DATE(SUBSTR(EMP_NO,1,2),'RR'))+1 AS "����(RR)",
    TO_NUMBER(EXTRACT(YEAR FROM SYSDATE)) - 
    (TO_NUMBER(SUBSTR(EMP_NO,1,2))+CASE WHEN SUBSTR(EMP_NO,8,1) IN('1','2') THEN 1900 ELSE 2000 END)+1 AS ����
FROM EMPLOYEE;

insert into KH.EMPLOYEE  
values ('250','��ι�','470808-2123341','go_dm@kh.or.kr',null,'D2','J2','S5',4480000,null,null,to_date('94/01/20','RR/MM/DD'),null,'N');
commit;


-- SELECT �� ������ �����ϴ� ����� 
-- ORDER BY 

-- SELECT �÷�,.... -> COLUMN���͸�
-- FROM ���̺�
-- [WHERE �񱳿���, ������....] -> ROW���͸�
-- [ORDER BY �÷���,..] -> Ư�� �÷��� �������� ���� �����ϴ� �� (��������, ��������)

-- ASC : ������������(������ -> ū��, ������ A -> Z, �� -> ��, ��¥ ������ NULL �ǾƷ�)
-- DESC : ������������ (ū�� -> ������, �������� Z -> Z, �� -> ��, ��¥ ������  NULL �� ����)

SELECT EMP_NAME, SALARY, BONUS, HIRE_DATE
FROM EMPLOYEE
--ORDER BY EMP_NAME ASC;
--ORDER BY SALARY DESC;
--ORDER BY BONUS;--DEFAULT���� ASC(������������)
--ORDER BY BONUS DESC;
--ORDER BY HIRE_DATE DESC;
--ORDER BY SALARY DESC, EMP_NAME;
ORDER BY 1;

SELECT EMP_NAME, DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��') 
FROM EMPLOYEE
ORDER BY 2;

--��Ī�� ����� �����ұ�?
SELECT EMP_NAME AS ��� 
FROM EMPLOYEE
WHERE  EMP_NAME LIKE '%��%'
ORDER BY ���;

-- �׷��Լ�
-- RESULTSET�� ���ุ ������ �Լ� -> ����(�հ�, ���, ���� �ִ밪, �ּҰ�)
-- SUM : �÷��� ���� (NUMBER��)
-- ������ ������ ���Ͻÿ�
SELECT SALARY FROM EMPLOYEE;
SELECT SUM(SALARY) 
FROM EMPLOYEE
WHERE DEPT_CODE='D6';

SELECT EMP_NAME, SUM(SALARY) 
FROM EMPLOYEE;

-- AVG : ��� 
SELECT TO_CHAR(FLOOR(AVG(SALARY)),'L999,999,999')
FROM EMPLOYEE
WHERE DEPT_CODE='D5';

-- COUNT : ROW������ �˷��ִ� �Լ�
SELECT COUNT(*) 
FROM EMPLOYEE;

--����� ��å��  J6�� ����� ����?
SELECT COUNT(*) 
FROM EMPLOYEE
WHERE JOB_CODE='J6';

SELECT COUNT(BONUS)
FROM EMPLOYEE; -- �÷��� �ִ� NULL���� ���ܽ�Ű�� ���ڸ� ��

SELECT COUNT(*), COUNT(BONUS), SUM(SALARY), AVG(SALARY)
FROM EMPLOYEE;

-- MAX / MIN
SELECT MAX(SALARY), MIN(SALARY)
FROM EMPLOYEE;

-- �μ��� D5,D6,D7�� ����� ���� ������ ���� ����� ������
SELECT MAX(SALARY)
FROM EMPLOYEE
WHERE DEPT_CODE IN('D5','D6','D7');

-- �μ��� ���� ���� �޿���?
SELECT DEPT_CODE, MAX(SALARY) 
FROM EMPLOYEE
WHERE DEPT_CODE IS NOT NULL
GROUP BY DEPT_CODE;

-- �μ��� �޿� ���
SELECT EMP_NAME, DEPT_CODE, FLOOR(AVG(SALARY))
FROM EMPLOYEE
GROUP BY DEPT_CODE;
-- ��å�� �հ�
SELECT JOB_CODE, SUM(SALARY)
FROM EMPLOYEE
GROUP BY JOB_CODE
ORDER BY 1;

-- ��å�� �ο��� ���ϱ�
SELECT JOB_CODE, COUNT(JOB_CODE)
FROM EMPLOYEE
GROUP BY JOB_CODE;

--�μ��� ���ʽ��� �޴� ����� ��
SELECT DEPT_CODE, COUNT(BONUS)
FROM EMPLOYEE
GROUP BY DEPT_CODE;

SELECT DEPT_CODE, COUNT(*)
FROM EMPLOYEE
WHERE BONUS IS NOT NULL
GROUP BY DEPT_CODE;

-- GROUP BY ������ �Ѱ��̻��� �÷��� ����� �� �ִ�.
SELECT DEPT_CODE, JOB_CODE, COUNT(*)
FROM EMPLOYEE
GROUP BY DEPT_CODE,JOB_CODE
ORDER BY 1,2;

-- �μ��� ���� �ο��� ���ϱ�
SELECT DEPT_CODE, DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��') AS ����,
    COUNT(*)
FROM EMPLOYEE
GROUP BY DEPT_CODE, DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��')
ORDER BY 1;

-- �μ��� �޿� ����� 300�鸸�� �̻��� �μ��鿡 ���� �μ���, �μ������ ��ȸ�ϼ���
SELECT DEPT_CODE, FLOOR(AVG(SALARY))
FROM EMPLOYEE
--WHERE FLOOR(AVG(SALARY))>3000000
GROUP BY DEPT_CODE
HAVING FLOOR(AVG(SALARY))>3000000;

-- GROUP �Լ��� �������� ����� ��쿡�� HAVING�� �̿��Ѵ�.

--�μ��� ������� 3�� �̻��� �μ� ����ϱ�
SELECT DEPT_CODE, COUNT(*) 
FROM EMPLOYEE
GROUP BY DEPT_CODE
HAVING COUNT(*) > 3;

-- �Ŵ����� �����ϴ� ����� 2���̻��� �Ŵ������̵�� �����ϴ� ����� ����ϱ�
SELECT MANAGER_ID, COUNT(*) 
FROM EMPLOYEE
WHERE MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID
HAVING COUNT(*) >= 2;

-- �հ�(SUM), ROW�ϰ� ���� ������ �հ�
-- GROUP�� �հ�, ���հ���� ���� ����ϰ� �غ���
-- ROLLUP, CUBE 
SELECT DEPT_CODE, COUNT(*) 
FROM EMPLOYEE 
WHERE DEPT_CODE IS NOT NULL
--GROUP BY DEPT_CODE;
--GROUP BY ROLLUP(DEPT_CODE);
GROUP BY CUBE(DEPT_CODE);

SELECT DEPT_CODE, SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_CODE IS NOT NULL
--GROUP BY ROLLUP(DEPT_CODE);
GROUP BY CUBE(DEPT_CODE);

-- ROLLUP�� CUBE�� �ٸ� ����� ��ȯ�ϰ� ��. -> 2���̻��� �÷��� GROUP BY ������
-- ROLLUP : �ΰ��� �÷� �� ���ʿ� ����� �÷��� �������� �հ� �Ѱ踦 ���ϰ�
-- CUBE : �ΰ��� �÷� ��θ� �������� �׷��Լ��� ����� �ϰ� �հ� �Ѱ踦 ����
SELECT DEPT_CODE, JOB_CODE, COUNT(*)
FROM EMPLOYEE
WHERE DEPT_CODE IS NOT NULL
--GROUP BY ROLLUP(DEPT_CODE, JOB_CODE)
--GROUP BY ROLLUP(JOB_CODE,DEPT_CODE)
GROUP BY CUBE(DEPT_CODE, JOB_CODE)
ORDER BY 1,2;

-- GROUPING
-- GROUP BY �� ���� ����� ROW�� ��쿡�� 0�� ��ȯ, 
-- ROLLUP, CUBE�� �̿��ؼ� ����� ROW�� 1�� ��ȯ.
SELECT DEPT_CODE, GROUPING(DEPT_CODE), JOB_CODE, GROUPING(JOB_CODE),  COUNT(*) 
FROM EMPLOYEE 
WHERE DEPT_CODE IS NOT NULL
--GROUP BY DEPT_CODE
--GROUP BY ROLLUP(DEPT_CODE, JOB_CODE);
GROUP BY CUBE(DEPT_CODE, JOB_CODE)
ORDER BY 1,2;


SELECT CASE
            WHEN GROUPING(DEPT_CODE)=0 AND GROUPING(JOB_CODE)=1 THEN '�μ��� �հ�'
            WHEN GROUPING(DEPT_CODE)=1 AND GROUPING(JOB_CODE)=0 THEN '��å�� �հ�'
            WHEN GROUPING(DEPT_CODE)=1 AND GROUPING(JOB_CODE)=1 THEN '���հ�'
            ELSE '�׷��հ�'
        END AS ����,DEPT_CODE, JOB_CODE,
        SUM(SALARY)
FROM EMPLOYEE
WHERE DEPT_CODE IS NOT NULL
GROUP BY CUBE(DEPT_CODE, JOB_CODE)
ORDER BY 1;
-------------------------
-- ���տ����� : �������� SELECT���� ��ġ�ų� �ߺ����� �����ϰų�... �̷� �����ϴ°�
-- ���տ����ڸ� ����Ҷ��� ���� : ù��° SELECT���� �÷��� ������ ����, �÷��� Ÿ�Ե� �����ؾ� ��. 
-- UNION : �������� SELECT���� ��ġ�°� �� �ߺ��� �Ѱ��� ����.
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D5'
UNION
SELECT DEPT_ID, DEPT_TITLE, LOCATION_ID, 0
FROM DEPARTMENT
UNION 
SELECT JOB_CODE, JOB_NAME, NULL, 0
FROM JOB;
DESC JOB;

DESC DEPARTMENT;--���̺� ���ǵ� �÷�Ȯ���ϴ� ��ɾ�

-- UNION�ߺ����� �Ѱ��� ǥ��
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D5'
UNION ALL
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY>3000000
UNION
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE JOB_CODE='J6'
INTERSECT
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE MANAGER_ID IS NOT NULL;

-- INTERSECT : ������, �ߺ��Ǵ°�
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D5'
INTERSECT
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY>3000000;

--MINUS : �ߺ����� ������ ������
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE DEPT_CODE='D5'
MINUS
SELECT EMP_ID, EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE SALARY>3000000;

SELECT DEPT_CODE, JOB_CODE, MANAGER_ID, FLOOR(AVG(SALARY))
FROM EMPLOYEE
GROUP BY GROUPING SETS((DEPT_CODE, JOB_CODE, MANAGER_ID),
                        (DEPT_CODE, MANAGER_ID),
                        (JOB_CODE, MANAGER_ID));

SELECT DEPT_CODE, JOB_CODE, MANAGER_ID, FLOOR(AVG(SALARY))
FROM EMPLOYEE
GROUP BY DEPT_CODE, JOB_CODE, MANAGER_ID;
SELECT DEPT_CODE, MANAGER_ID, FLOOR(AVG(SALARY))
FROM EMPLOYEE
GROUP BY DEPT_CODE, MANAGER_ID;
SELECT JOB_CODE, MANAGER_ID, FLOOR(AVG(SALARY))
FROM EMPLOYEE
GROUP BY JOB_CODE, MANAGER_ID;

-------------------------------
--�⺻���� ���� �����غ���
--����Ŭ �����̿��ϱ�
SELECT EMP_NAME, DEPT_TITLE
FROM EMPLOYEE, DEPARTMENT
WHERE DEPT_CODE=DEPT_ID;

--ANSI ���� �̿��� JOIN ����ؾ� ��.
SELECT *
--FROM EMPLOYEE JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID;--��? �θ��𰬾�? DEPT_CODE�� NULL�� ����� �����
FROM EMPLOYEE RIGHT OUTER JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID;
SELECT COUNT(*) FROM EMPLOYEE;

-- JOIN �ΰ����� ����
-- 1. EQUI JOIN : ���̺� �����Ҷ� ����񱳷� �����ϴ� ��
-- INNER JOIN : ������ �Ǵ� �÷��� NULL�� �ִ� ROW �����ϰ� �����Ѵ�.
SELECT  E.*, EMP_NAME, DEPT_TITLE
FROM EMPLOYEE E JOIN DEPARTMENT D ON DEPT_CODE=DEPT_ID
WHERE DEPT_TITLE='�ѹ���';

-- EMPLOYEE ���̺� �ϰ� JOB���̺��� JOIN�غ���.
SELECT * 
--FROM EMPLOYEE E JOIN JOB J ON E.JOB_CODE=J.JOB_CODE;
-- �����̺��� �÷����� ��ġ�ϸ� ON -> USING���� ����� �� ����
FROM EMPLOYEE JOIN JOB USING(JOB_CODE);

SELECT * FROM EMPLOYEE;
SELECT * FROM JOB;

-- OUTER JOIN : �����̵Ǵ� ���̺��� ��� ����ϰ� ��Ī�Ǵ� ���� ������ �÷��� NULL���� �����
--   LEFT OUTER JOIN : ���� ���̺� ����
--   RIGHT OUTER JOIN : ������ ���̺� ����

-- ����Ŭ���빮�� -> (+)
SELECT *
FROM EMPLOYEE, DEPARTMENT
WHERE DEPT_CODE=DEPT_ID(+);


-- CROSS JOIN : īƼ�ǰ� -> �� ROW��ü�� �����ϴ°�
SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;

SELECT EMP_NAME, DEPT_TITLE
FROM EMPLOYEE CROSS JOIN DEPARTMENT
ORDER BY 1;

-- SELF JOIN : 
SELECT * FROM EMPLOYEE;
-- ������� ��� �̸� �Ŵ��� �̸��� ��ȸ�ϼ��� 
SELECT E.EMP_NAME,NVL(M.EMP_NAME,'����')
FROM EMPLOYEE E LEFT OUTER JOIN EMPLOYEE M ON E.MANAGER_ID=M.EMP_ID;

-- ���� JOIN : �ΰ� �̻��� ���̺��� �����ϴ� ��
-- ����� �μ���, ��å���� ��ȸ�ϴ� sql���� �ۼ�����
-- ����̸�(employee), �μ���(department), ��å��(job)
SELECT EMP_NAME, DEPT_TITLE, JOB_NAME
FROM EMPLOYEE 
    JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
    JOIN JOB USING(JOB_CODE);
    
-- �����, �μ���, �ٹ��ϰ� �ִ� ����(LOCAL_NAME)�� ���
SELECT EMP_NAME, DEPT_TITLE, LOCAL_NAME, JOB_NAME
FROM EMPLOYEE
    JOIN LOCATION ON LOCAL_CODE=LOCATION_ID
    JOIN DEPARTMENT ON DEPT_ID=DEPT_CODE
    JOIN JOB USING(JOB_CODE);

--OUTER INNER���� ����� �� ����
SELECT EMP_NAME, NVL(DEPT_TITLE,'����'), NVL(LOCATION_ID,'���߷�'), LOCAL_NAME, JOB_NAME
FROM EMPLOYEE
    LEFT JOIN DEPARTMENT ON DEPT_ID=DEPT_CODE
    LEFT JOIN LOCATION ON LOCAL_CODE=LOCATION_ID
    JOIN JOB USING(JOB_CODE)
WHERE DEPT_TITLE LIKE '%�ؿ�%' AND SALARY >3000000
ORDER BY 5;
    
SELECT * FROM DEPARTMENT;
SELECT * FROM LOCATION;
       
-- 2. NON-EQUI JOIN : ��Һ�, ����, NULL�� ���� �������� �����ϴ� ��. -> ���� x
SELECT EMP_NAME, SALARY, SAL_GRADE.SAL_LEVEL
FROM EMPLOYEE JOIN SAL_GRADE ON SALARY BETWEEN MIN_SAL AND MAX_SAL;

SELECT * FROM SAL_GRADE;

-- �������� 
-- �ϳ��� SQL��(MAIN����)�ȿ� ���ԵǾ��ִ� �� �ٸ� SQL��(��������)
-- ���������� �ݵ�� �Ұ�ȣ () ��������Ѵ�.
-- ���������� WHERE���� ���ÿ� �����ʿ� ��ġ��

-- ������ ����� ������ �̸��� ���
SELECT MANAGER_ID FROM EMPLOYEE WHERE EMP_NAME='������';
SELECT EMP_NAME FROM EMPLOYEE WHERE EMP_ID=214;

SELECT M.EMP_NAME 
FROM EMPLOYEE E JOIN EMPLOYEE M ON E.MANAGER_ID=M.EMP_ID
WHERE E.EMP_NAME='������';

SELECT EMP_NAME 
FROM EMPLOYEE
WHERE EMP_ID=(SELECT MANAGER_ID 
                FROM EMPLOYEE WHERE EMP_NAME='������');

-- ����� ��ձ޿����� ���� �޴� ����� ��ȸ�ϱ�
-- �����, �μ���, ��å��, �޿�
SELECT EMP_NAME, DEPT_TITLE, JOB_NAME, SALARY
FROM EMPLOYEE 
    JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
    JOIN JOB USING(JOB_CODE)
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE);

--1. ������ �������� : ���������� ����� �Ѱ���, �Ѱ� ���� �ǹ���.
-- ������ ����� ������ �޿��� �ް� �ִ� ����� ���ϼ���
SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY = (SELECT SALARY FROM EMPLOYEE WHERE EMP_NAME='������');
-- ����� �ִ�޿��� �ް��ִ� ����� �ּұ޿��� �ް��ִ� ����� �̸� �޿��� ��ȸ�ϼ���
SELECT EMP_NAME,SALARY
FROM EMPLOYEE
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE)
        OR SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE);
        
-- �����༭������ : �Ѱ��÷��� ���� �ټ��� ������ SELECT��
-- ���� �ټ��̱� ������ = �񱳰� �Ұ���, ������Ҷ��� IN / NOT IN
-- ANY, ALL, EXIST(�����������)
-- ������, �ڳ���� ���� �μ����� �ٹ��ϴ� ����� �̸� �μ��� ��ȸ
SELECT EMP_NAME, DEPT_CODE 
FROM EMPLOYEE 
--WHERE DEPT_CODE = (SELECT DEPT_CODE FROM EMPLOYEE WHERE EMP_NAME IN ('������','�ڳ���'));
--WHERE DEPT_CODE IN (SELECT DEPT_CODE FROM EMPLOYEE WHERE EMP_NAME IN ('������','�ڳ���'));
-- IN ('D9','D5')
WHERE DEPT_CODE NOT IN (SELECT DEPT_CODE FROM EMPLOYEE WHERE EMP_NAME IN ('������','�ڳ���'));
-- NOT IN('D9','D5');

-- ������ ��ǥ, �λ����� �ƴ� ��� �������ϱ�
-- ASIA1���� �ٹ��ϴ� ���� ��ȸ�ϱ� �������� �̿��Ұ�.
SELECT * 
FROM EMPLOYEE 
WHERE DEPT_CODE IN (SELECT DEPT_ID FROM DEPARTMENT 
                        JOIN LOCATION ON LOCATION_ID=LOCAL_CODE WHERE LOCAL_NAME='ASIA1');
-- ANY||SOME
-- ANY ��Һ�, ����� -> ANY�� �ִ� ���� �񱳸� OR ����
-- X >(=) ANY(��1,��2)  :  ANY�� �ִ� � ������ X�� ũ�⸸�ϸ� ��, �ּҰ����� ũ�� ��
-- X < ANY(��,��2) : ANY�� �ִ� ������� X�� �۱⸸�ϸ� ��, �ִ밪���� ���� ��

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY > ANY(SELECT SALARY FROM EMPLOYEE WHERE DEPT_CODE IN ('D5','D6'));

-- ��å�� J3�� ����� �� �ּұ޿����� ���� �޴� ����� ��ȸ�ϱ�
SELECT * 
FROM EMPLOYEE
--WHERE SALARY > ANY(SELECT SALARY FROM EMPLOYEE WHERE JOB_CODE='J3');
WHERE SALARY < ANY(SELECT SALARY FROM EMPLOYEE WHERE JOB_CODE='J3');


-- ALL : ��� ������ ũ��, �۴� -> AND
--X > ALL(��, ��1) : ALL�� ��簪 ���� ū X�� ��, ALL�� �ִ밪���� ũ�� ��.

SELECT EMP_NAME, SALARY
FROM EMPLOYEE
WHERE SALARY > ALL(2000000, 5000000);

-- �μ��� D2�� ����� �� �ִ�޿��� �޴� ������� �޿��� �޴� �����ȸ
SELECT EMP_NAME, SALARY
FROM EMPLOYEE 
--WHERE SALARY > ALL(SELECT SALARY FROM EMPLOYEE WHERE DEPT_CODE='D2');
WHERE SALARY > (SELECT MAX(SALARY) FROM EMPLOYEE WHERE DEPT_CODE='D2');


--1. 2000��1��1�� ���� �Ի����߿� 2000�� 1��1�� ���� �Ի��ں��� �޿��� (���� ���� �޴� �������) 
--���� �޴� ����� ������ ���޿��� ����ϼ���.
SELECT EMP_NAME, SALARY, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE < '00/01/01' 
        AND SALARY > ALL(SELECT SALARY FROM EMPLOYEE WHERE HIRE_DATE > '00/01/01');

--2. � 'J4'������ ������� ���� �޿��� �޴� ������ J5, J6, J7�� ��� ���.
SELECT EMP_NAME, JOB_CODE, SALARY
FROM EMPLOYEE
WHERE JOB_CODE IN ('J5','J6','J7')
    AND SALARY > ALL(SELECT SALARY FROM EMPLOYEE WHERE JOB_CODE='J4');

-- ���߿� �������� : ���� �Ѱ��̸鼭 �÷��� �������� �������� 
--������ ������� �����μ�, ���� ���޿� �ش��ϴ� ��� ��ȸ
SELECT DEPT_CODE, JOB_CODE FROM EMPLOYEE WHERE ENT_YN='Y';
SELECT *
FROM EMPLOYEE
--WHERE DEPT_CODE =(SELECT DEPT_CODE FROM EMPLOYEE WHERE ENT_YN='Y')
--    AND JOB_CODE=(SELECT JOB_CODE FROM EMPLOYEE WHERE ENT_YN='Y');
WHERE (DEPT_CODE, JOB_CODE) IN (SELECT DEPT_CODE, JOB_CODE FROM EMPLOYEE WHERE ENT_YN='Y');


----����������̸鼭 �޿��� 2000000�� ����� �ִٰ� �Ѵ�.
--�ش����� �̸�, �μ��ڵ�, �޿��� ����ϱ�
SELECT EMP_NAME, DEPT_CODE, SALARY
FROM EMPLOYEE
WHERE (DEPT_CODE,SALARY) IN (SELECT DEPT_CODE, SALARY
                                FROM EMPLOYEE
                                    JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
                                WHERE DEPT_TITLE='���������' AND SALARY=2000000);
                                
-- ������, ���߿� �������� : �൵ ������, ���� ������ 
--�μ��� �ּұ޿� ���ϱ�
SELECT DEPT_CODE, MIN(SALARY)
FROM EMPLOYEE
GROUP BY DEPT_CODE;

SELECT EMP_NAME,DEPT_TITLE, SALARY
FROM EMPLOYEE E
    JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
WHERE (DEPT_CODE,SALARY) IN (SELECT DEPT_CODE,SALARY);

-- �����������(��ȣ����)
-- ���������� �����Ҷ� ���������� �ִ� ���� ������ ����� �ϰ� �ۼ��� ��.
-- ������������� ���� FOR���̶� �����.
-- �������� ����� ���������� ���� ������ �ְ�,���������� ����� ���������� ����� ������ �ִ� ������

-- EXISTS : ROW 1�� �̻� �ִٸ� ������ TRUE, ROW�� 0���� FALSE;
SELECT *
FROM EMPLOYEE
WHERE EXISTS(SELECT 1 FROM EMPLOYEE WHERE DEPT_CODE='D20');

--���������� �ִ� ����� ��ȸ�ϼ���
SELECT EMP_ID, EMP_NAME, MANAGER_ID
FROM EMPLOYEE E
WHERE EXISTS (SELECT 1 FROM EMPLOYEE WHERE MANAGER_ID=E.EMP_ID);

--�ɺ�������� ���� �μ��� ����� �μ��ڵ�, ����� ��ȸ
SELECT DEPT_CODE,EMP_NAME
FROM EMPLOYEE E
WHERE EXISTS (SELECT EMP_NAME FROM EMPLOYEE WHERE E.DEPT_CODE=DEPT_CODE AND EMP_NAME='�ɺ���');
                                
-- ���� ���� �޿��� �޴� ����� EXISTS�����ڸ� �̿��ؼ� ���غ���.
-- NOT EXISTS �޿��� �������� ������ ��������� ������ �׻���� �ְ���
SELECT * 
FROM EMPLOYEE E
WHERE NOT EXISTS(SELECT SALARY FROM EMPLOYEE WHERE SALARY > E.SALARY);

-- �ּұ޿� �޴� ����� ������������� ���ϸ�?
SELECT * 
FROM EMPLOYEE E
WHERE NOT EXISTS(SELECT SALARY FROM EMPLOYEE WHERE SALARY < E.SALARY);

-- ��Į�󼭺����� : ������������� ����� �������� ������
-- ������� ���, �̸�, �����ڹ�ȣ, �����ڸ��� ��ȸ�ϼ���
SELECT E.EMP_ID, E.EMP_NAME, E.MANAGER_ID, M.EMP_NAME
FROM EMPLOYEE E JOIN EMPLOYEE M ON E.MANAGER_ID=M.EMP_ID;
-- ��Į�󼭺����� �̿��غ���
SELECT EMP_ID, EMP_NAME, MANAGER_ID,(SELECT EMP_NAME FROM EMPLOYEE WHERE E.MANAGER_ID=EMP_ID)AS �����ڸ�
FROM EMPLOYEE E;

-- �����, �μ��ڵ�, �޿�, �μ��� ����ӱ��� ��ȸ����
-- ��Į�󼭺������̿�
SELECT DEPT_CODE, AVG(SALARY) FROM EMPLOYEE GROUP BY DEPT_CODE;

SELECT AVG(SALARY) FROM EMPLOYEE WHERE DEPT_CODE='D9';
SELECT AVG(SALARY) FROM EMPLOYEE WHERE DEPT_CODE='D6';

SELECT EMP_NAME, DEPT_CODE, SALARY,
    TO_CHAR(FLOOR((SELECT AVG(SALARY) FROM EMPLOYEE 
                    WHERE NVL(DEPT_CODE,1)=NVL(E.DEPT_CODE,1))),'L999,999,999') AS �μ������
FROM EMPLOYEE E;
-- ������ J1�� �ƴ� ����߿��� �ڽ��� �μ��� ��ձ޿����� ���� �޿��� �޴� ������
-- �μ��ڵ�, �����, �޿�, �μ��� �޿����
SELECT DEPT_CODE, EMP_NAME, SALARY,
        FLOOR((SELECT AVG(SALARY) FROM EMPLOYEE WHERE DEPT_CODE=E.DEPT_CODE)) AS �μ������
FROM EMPLOYEE E
WHERE JOB_CODE<>'J1' AND SALARY < (SELECT AVG(SALARY) FROM EMPLOYEE WHERE DEPT_CODE=E.DEPT_CODE)
ORDER BY 1;

-- �ڽ��� ���� ������ ��� �޿����� ���� �޴� ������ �̸�, ��å��, �޿��� ��ȸ
SELECT EMP_NAME, JOB_NAME, SALARY
FROM EMPLOYEE JOIN JOB USING(JOB_CODE)
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE E WHERE JOB_CODE=E.JOB_CODE);

-- �ζ��� �� : FROM���� SELECT���� ���� ��
-- �������� ���̺��� �ƴ� RESULTSET�� ���̺� ���°� VIEW(����)
-- IN-LINE VIEW : FROM ���� ���������� ����� ��(���߿�, ������ ��������)
-- STORED VIEW : ���������� �����ϰ� ����ϴ� VIEW -> VIEW�����Ҷ� 

-- ������� ���, �����, �μ��ڵ�, ������ ���
SELECT EMP_ID, EMP_NAME, DEPT_CODE, DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��') AS ����
FROM EMPLOYEE
WHERE DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��')='��';

SELECT * 
FROM (SELECT EMP_ID, EMP_NAME, DEPT_CODE, DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��') AS ����
    FROM EMPLOYEE)
WHERE ���� = '��';

-- ȸ�� -> memberTbl, �Ϲ�, �����, ������ / ������, ������, �Ϲ�
-- ADMIN / 1234
SELECT * 
FROM(
        SELECT MEMBER_NO,USERID, PASSWORD, '�Ϲ�' AS DIV
        FROM MEMBERTBL
        UNION
        SELECT BUSINESS_NO, ID, PW, '�����' AS DIV 
        FROM BUSINESSMEMBER 
        UNION
        SELECT MANAGER_NO, USERID, PW, '������' AS DIV 
        FROM MANAGER
      )
WHERE USERID='ADMIN' AND PASSWORD=1234;

--��Į�󼭺����� ��������, ���������� ���� FOR��
SELECT DEPT_CODE, AVG(SALARY) 
FROM EMPLOYEE
GROUP BY DEPT_CODE;

SELECT E.* ,(SELECT AVG(SALARY) FROM EMPLOYEE WHERE DEPT_CODE =E.DEPT_ID)
FROM DEPARTMENT E;

-- �����, �μ���, ��å��, �޿�, ���ʽ�, ����
SELECT EMP_NAME, DEPT_TITLE, JOB_NAME, SALARY, BONUS,DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��')
FROM EMPLOYEE
    JOIN DEPARTMENT ON DEPT_ID=DEPT_CODE
    JOIN JOB USING(JOB_CODE)
WHERE DEPT_CODE='D6';

SELECT * 
FROM (
        SELECT EMP_NAME AS �����, DEPT_TITLE AS �μ���, JOB_NAME AS ��å��, 
        SALARY AS ����, BONUS AS ���ʽ�, DECODE(SUBSTR(EMP_NO,8,1),'1','��','2','��') AS ����
        FROM EMPLOYEE
            JOIN DEPARTMENT ON DEPT_ID=DEPT_CODE
            JOIN JOB USING(JOB_CODE)
        WHERE DEPT_CODE IN ('D5','D6')
    )
WHERE �μ��� LIKE '%�ؿ�%';


-- TOP-N�м� : ROW�� ������ �ο��ϴ� ���̶�� ���� ��. -> PAGINGó��
-- �޿��� ���� ���� �޴� 3��, ����� ���� ���� 10��, ���ƿ� ���� 5�� �Խñ�
SELECT * FROM EMPLOYEE ORDER BY SALARY;
-- 2���� ���
-- 1. ROWNUM : �⺻ ����Ŭ�� �����ϴ� �÷� -> ������̺� �ڵ����� ����! ROW�� ���� ��
-- 2. �Լ��̿� : ����Ŭ�� �����ϴ� TOP 

SELECT ROWNUM, E.* 
FROM EMPLOYEE E
WHERE ROWNUM BETWEEN 1 AND 10;

-- ROWNUM�� �̿��Ҷ� �����߻�!! ������~
-- �޿��� ���� ���� �޴� 3�� ����� ��ȸ �̸�, �޿�
SELECT ROWNUM, EMP_NAME, SALARY 
FROM EMPLOYEE;
--WHERE ROWNUM BETWEEN 1 AND 3
--ORDER BY SALARY DESC;

-- ROWNUM�� �̿��ؼ� ������ �����Ҷ��� INLINEVIEW�� �̿��� 
SELECT ROWNUM, E.*
FROM  (SELECT ROWNUM AS ����ROWNUM, EMP_NAME, SALARY
        FROM EMPLOYEE 
        ORDER BY SALARY DESC) E
WHERE ROWNUM <= 10;

--D5�μ��� ���� ���� �޴� ��� 3�� ��ȸ�ϱ�
-- �̸�, �μ��ڵ�, �޿�, ����
--�μ�������....
SELECT EMP_NAME, DEPT_TITLE, SALARY, ����
FROM (
    SELECT EMP_NAME, DEPT_CODE AS �μ���, DEPT_TITLE, SALARY, SALARY*12 AS ����
    FROM EMPLOYEE JOIN DEPARTMENT ON DEPT_CODE =DEPT_ID
    ORDER BY 4 DESC
    )
WHERE ROWNUM <=3 AND �μ���='D2';    
        --SELECT * FROM EMPLOYEE;

-- ����޿��� 4��°���� 8��° ���� �޴� ����� ��ȸ �����, �޿�
SELECT *
FROM (
        SELECT ROWNUM AS RNUM, E.*
        FROM (
                SELECT EMP_NAME, SALARY
                FROM EMPLOYEE
                ORDER BY SALARY DESC
            ) E
    ) A           
WHERE RNUM BETWEEN 4 AND 8;    


--�Լ��� �̿��ؼ� ������ �ű�� ���
-- RANK() OVER(���ı���)
SELECT EMP_NAME, SALARY,
        RANK() OVER(ORDER BY SALARY DESC) AS ����
FROM EMPLOYEE; 

-- TOP 3�� ��ȸ�ϼ���!
SELECT * 
FROM (
       SELECT EMP_NAME, SALARY, RANK() OVER(ORDER BY SALARY DESC) AS ����,
              RANK() OVER(PARTITION BY JOB_CODE ORDER BY SALARY DESC) AS "�μ��� ����"
       FROM EMPLOYEE
     )
WHERE  ���� BETWEEN 1 AND 3;

--DENSE_RANK() OVER : �ߺ��� ������ ������ ��ȣ �ο����� ���̰���
SELECT RANK() OVER(ORDER BY SALARY) AS ����,
       EMP_NAME, SALARY,
       DENSE_RANK() OVER(ORDER BY SALARY) AS DENSE����
FROM EMPLOYEE
WHERE RANK() OVER(ORDER BY SALARY) BETWEEN 1 AND 3;       

-- ������ ���� �����ð�. -> ��۷� ��ȸ�ؼ� �����ö� ���
-- ���������踦 ǥ���Ҷ� ��� -> ������, �޴�, �亯�� �Խ���(���)

SELECT LEVEL, EMP_ID, EMP_NAME, MANAGER_ID
FROM EMPLOYEE
    START WITH EMP_ID = 200 -- ������ ���۱��� ROOT LEVEL�÷��� �ο��ϴ� ����
    CONNECT BY PRIOR EMP_ID=MANAGER_ID;-- ���迬�� ����
    --ORDER BY LEVEL;
--LEVEL : ������ ����

SELECT LEVEL||' '||LPAD(' ',(LEVEL-1)*5,' ')||EMP_NAME||NVL2(MANAGER_ID,'('||MANAGER_ID||')','') AS ������
FROM EMPLOYEE
    START WITH MANAGER_ID IS NULL
    --START WITH EMP_ID=200
    CONNECT BY PRIOR EMP_ID=MANAGER_ID;

-- ����Ŭ���� ����ϴ� �������� �˾ƺ���
-- ������ : CHAR, VARCHAR2 NCHAR, NVARCHAR2
-- CHAR(����) : ������ ���ڿ� Ÿ������ ���̸�ŭ ������ Ȯ���Ͽ� ����Ѵ�. �ִ� 2000����Ʈ
-- VARCHAR2(����) : ������ ���ڿ� Ÿ������ ���̸�ŭ ������ Ȯ���� �� �ִ�. ���Ե� �����͸�ŭ�� ��� 4000����Ʈ
-- CHAR(10), VARCHAR(10)
-- '������','������' -> CHAR�� ������ 10�ݿ� VARCHAR2�� ���� �����͸�ŭ 9 �ݿ�

CREATE TABLE TBL_DATA_STR(
    A CHAR(6),
    B VARCHAR2(6),--���ڿ� ��뿡 ���� ���� �ڷ���
    C NCHAR(6),
    D NVARCHAR2(6)
);
SELECT * FROM TBL_DATA_STR;
INSERT INTO TBL_DATA_STR VALUES('ABC','ACB','ABC','ABC');
INSERT INTO TBL_DATA_STR VALUES('����','��','������','����');
INSERT INTO TBL_DATA_STR VALUES('��','��','��','����');
SELECT LENGTH(A),LENGTH(B),LENGTH(C),LENGTH(D)
FROM TBL_DATA_STR;

SELECT LENGTHB(A), LENGTHB(B), LENGTHB(C), LENGTHB(D)
FROM TBL_DATA_STR;

CREATE TABLE PERSON(
    NAME VARCHAR2(15)
);
--LONG : 2GB * ��������� ����Ŭ
--CLOB : 4GB * ���ڿ� ���̰� ũ��(4000����Ʈ �̻�) �̰��� ��� 

-- ������ : NUMBER
-- �Ǽ�, ���� �Ѵ� NUMBER ����!
--NUMBER(PRECISION, SCALE)
-- PRECISION : ǥ���Ҽ� �ִ� ��ü �ڷ��(1 ~ 38)
-- SCALE : �Ҽ������� �ڸ���(-84 ~ 127)
-- �Ѵ� ��������
CREATE TABLE TBL_DATA_NUM(
    A NUMBER,
    B NUMBER(5),
    C NUMBER(5,1),
    D NUMBER(5,-2)
);
SELECT * FROM TBL_DATA_NUM;
INSERT INTO TBL_DATA_NUM VALUES(1234.567,1234.567,1234.567,1234.567);
INSERT INTO TBL_DATA_NUM VALUES(1234.567,12340.47,1234.54,1234.567);

-- ��¥�� : DATE
CREATE TABLE TBL_DATA_DATE(
    BIRTHDAY DATE
);

SELECT * FROM TBL_DATA_DATE;
INSERT INTO TBL_DATA_DATE VALUES('93/07/10');
INSERT INTO TBL_DATA_DATE VALUES(TO_DATE(199307100945,'YYYYMMDDHHMI'));
-- �������� : BLOB, CLOB


-- �⺻ ���̺� �����ϱ�
-- ���̺��� ������ �Ҷ��� CREATE��ɾ �̿�
-- CREATE TABLE ���̺��( �÷�����,,,(�÷��� �ڷ���));
CREATE TABLE MEMBER (
    MEMBER_ID VARCHAR2(20),
    MEMBER_PWD VARCHAR2(20),
    MEMBER_NAME VARCHAR2(20)
);
SELECT * FROM MEMBER;

COMMENT ON COLUMN MEMBER.MEMBER_ID IS 'ȸ�����̵�';
COMMENT ON COLUMN MEMBER.MEMBER_PWD IS 'ȸ����й�ȣ';
COMMENT ON COLUMN MEMBER.MEMBER_NAME IS 'ȸ���̸�';

--COMMENTȮ���ϱ�
SELECT * 
FROM USER_COL_COMMENTS
WHERE TABLE_NAME='MEMBER';
COMMENT ON TABLE MEMBER IS 'ȸ����������';
SELECT *
FROM USER_TAB_COMMENTS;

--���̺� �����
--DROP TABLE ���̺��;
DROP TABLE TBL_DATA_DATE;


-- ���̺� �������� �����ϱ�
-- NOT NULL(C) : Ư���÷��� NULL�� ������� �ʴ°�. -> DEFAUL������ �Ǿ� ���� NULL�� ������
-- UNIQUE(U) : Ư���÷��� �ߺ����� ������� �ʴ°� -> NULL??
-- PRIMARY KEY(P) : �����͸� �����ϴ� �÷��� �����ϴ� ������������ UNIQUE, NOTNULL�� �ڵ�����, ���� ���̺� 1���� ������.
--                  ���̺� �ΰ� �̻��� PK�� ������ �� ����.-> ���̺�� PK�� 1��!
-- FOREIGN KEY(R) : Ư���÷��� ���� �ٸ����̺� �÷��� �ִ� ���� �����ϰ� �ϴ� ��������. ������ �ٸ����̺��� �÷��� �����ؾ���.
-- CHECK(C) : Ư���÷��� ���� ������ ���� ������ �� �ְ� �ϴ°� Ư������, ������ ����

-- DD�� �̿��ؼ� �������ǿ� ���� ������ Ȯ���ϱ�
--SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
SELECT * 
FROM USER_CONSTRAINTS
WHERE TABLE_NAME='EMPLOYEE';
SELECT * 
FROM USER_CONS_COLUMNS;

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, COLUMN_NAME
FROM USER_CONSTRAINTS JOIN USER_CONS_COLUMNS USING(CONSTRAINT_NAME);

-- NOT NULL�������� �����ϱ�
CREATE TABLE TBL_CONS_N(
    USER_NO NUMBER ,
    USER_ID VARCHAR2(20),
    USER_PWD VARCHAR2(30),
    USER_NAME VARCHAR2(30),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMILA VARCHAR2(50),
    --CONSTRAINT �̸� UNIQUE(�÷���)
    --UNIQUE(�÷���)
);

DROP TABLE TBL_CONS_N;

SELECT * FROM TBL_CONS_N;
--�� �÷��� �⺻������ NULL�� ����� 
INSERT INTO TBL_CONS_N VALUES(NULL,NULL,NULL,NULL,NULL,NULL,NULL);
SELECT * FROM TBL_CONS_N;
INSERT INTO TBL_CONS_N VALUES(1,'USER01','USER01','�����','��','010-1234-4445','SANG@SANG.COM');
-- NOT NULL�������� �����ϱ� 
-- ���������� �����ϴ� ��� 1. �÷�����, 2. ���̺���
-- �÷��������� ���� : �÷������ ���� ���������� �ۼ�
-- ���̺������� ���� : �÷������� �� ������ �ǳ��� �ۼ��ϴ� �� CONSTRAINT ������ �ۼ�
-- NOT NULL �������� �÷����������� ������ ����
-- �÷��� Ÿ��(����) NOT NULL,
CREATE TABLE TBL_CONS_NN(
    USER_NO NUMBER CONSTRAINT USER_NO_NN NOT NULL,--NOT NULL�������Ǽ���
    USER_ID VARCHAR2(20) NOT NULL,
    USER_PWD VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(20),
    PHONE VARCHAR2(20),
    EMAIL VARCHAR2(50)
);
DROP TABLE TBL_CONS_NN;

SELECT * FROM TBL_CONS_NN;
INSERT INTO TBL_CONS_NN VALUES(1,'USER2','USER2','������','��','010-1234-5555','TEA@TEA.COM');
INSERT INTO TBL_CONS_NN VALUES(NULL,'USER2','USER2','������','��','010-1234-5555','TEA@TEA.COM');
INSERT INTO TBL_CONS_NN VALUES(2,NULL,'USER2','������','��','010-1234-5555','TEA@TEA.COM');
INSERT INTO TBL_CONS_NN VALUES(3,'USER2','USER2','������',NULL,'010-1234-5555','TEA@TEA.COM');

-- UNIQUE
-- �÷�����, ���̺����� ����
SELECT * FROM TBL_CONS_N;
INSERT INTO TBL_CONS_N VALUES(2,'USER2','USER2','������','��','010-1234-1234','TEA@TEA.COM');
CREATE TABLE TBL_CONS_UQ(
    USER_NO NUMBER NOT NULL,
    USER_ID VARCHAR2(20) UNIQUE,--UNIQUE���������� ������.
    USER_PWD VARCHAR2(30),
    USER_NAME VARCHAR2(30),
    GENDER VARCHAR2(30),
    PHONE VARCHAR2(30),
    EMILA VARCHAR2(50)
);
SELECT * FROM TBL_CONS_UQ;

INSERT INTO TBL_CONS_UQ VALUES(1,'USER2','USER2','������','��','010-1234-5555','TEA@TEA.COM');
INSERT INTO TBL_CONS_UQ VALUES(NULL,'USER2','USER2','������','��','010-1234-5555','TEA@TEA.COM');
INSERT INTO TBL_CONS_UQ VALUES(2,NULL,'USER2','������','��','010-1234-5555','TEA@TEA.COM');
INSERT INTO TBL_CONS_UQ VALUES(3,'USER3','USER2','������',NULL,'010-1234-5555','TEA@TEA.COM');

-- �׷��ٸ� UNIQUE���������� ������ �÷��� NULLó�� ��� �ɱ�?
INSERT INTO TBL_CONS_UQ VALUES(4,NULL,'USER2','������',NULL,'010-1234-5555','TEA@TEA.COM');
INSERT INTO TBL_CONS_UQ VALUES(5,NULL,'USER2','������',NULL,'010-1234-5555','TEA@TEA.COM');
SELECT * FROM TBL_CONS_UQ;
-- ����ȸ�縶�� �ٸ� 

-- ���̺������� UNIQUE�������� �����ϱ�
CREATE TABLE TBL_CONS_NQ2(
    USER_ID VARCHAR2(20),
    USER_PW VARCHAR2(20),
    CONSTRAINT USER_ID_UQ UNIQUE(USER_ID)
);
DROP TABLE TBL_CONS_NQ2;
SELECT * FROM TBL_CONS_NQ2;
INSERT INTO TBL_CONS_NQ2 VALUES('ADMIN','1234');
INSERT INTO TBL_CONS_NQ2 VALUES('ADMIN','5678');

-- �Ѱ��̻��� �÷��� UNIQUE�����ϱ�
CREATE TABLE TBL_CONS_UQ3(
    USER_NO NUMBER,
    USER_ID VARCHAR2(20),
    USER_PWD VARCHAR2(30),
    CONSTRAINT COM_NO_ID_UQ UNIQUE(USER_NO,USER_ID)
    UNIQUE(USER_NO),
    UNIQUE(USER_ID)
);
SELECT * FROM TBL_CONS_UQ3;
INSERT INTO TBL_CONS_UQ3 VALUES(1,'B','B');
INSERT INTO TBL_CONS_UQ3 VALUES(1,'A','A');
INSERT INTO TBL_CONS_UQ3 VALUES(2,'B','B');
INSERT INTO TBL_CONS_UQ3 VALUES(1,'B','C');

-- PRIMARY KEY �⺻Ű
-- �ߺ����� ����, NULL���� ���� �÷��� �����ڰ� ������.
-- PRIMARY KEY�� ������ �Ǹ� UNIQUE, NOT NULL�������� ����
-- �Ѱ� ���̺� �� �Ѱ��� ������ ����
-- ���̺���, �÷��������� ������ ����

CREATE TABLE TBL_CONS_PK(
    USER_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20) UNIQUE,
    USER_PWD VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(20)
);

SELECT * FROM TBL_CONS_PK;
INSERT INTO TBL_CONS_PK VALUES(1,'USER01','USER01','�迹��');
INSERT INTO TBL_CONS_PK VALUES(2,'USER02','USER02','������');
INSERT INTO TBL_CONS_PK VALUES(3,'USER03','USER03','������');
INSERT INTO TBL_CONS_PK VALUES(4,'USER04','USER04','������');
SELECT * FROM TBL_CONS_PK 
WHERE USER_NO=3;
--WHERE USER_NAME='������';

CREATE TABLE TBL_CONS_PK2(
    USER_NO NUMBER,
    USER_ID VARCHAR2(20) UNIQUE,
    USER_PWD VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(20),
    CONSTRAINT USER_NO_PK PRIMARY KEY(USER_NO)
);

-- PK������ �Ѱ��̻��� �÷��� ����. --> ����Ű
-- ��ٱ��� 
CREATE TABLE TBL_ORDER(
    PRODUCT_NO NUMBER,
    USER_NO NUMBER,
    ORDER_DATE DATE,
    ORDER_NO NUMBER NOT NULL,
    PRIMARY KEY(PRODUCT_NO,USER_NO,ORDER_DATE) 
);
INSERT INTO TBL_ORDER VALUES(11,11,'21/02/26',1);
INSERT INTO TBL_ORDER VALUES(11,11,'21/02/26',1);
INSERT INTO TBL_ORDER VALUES(11,22,'21/02/26',1);
INSERT INTO TBL_ORDER VALUES(11,NULL,'21/02/26',1);
SELECT * FROM TBL_ORDER;

-- FOREIGN KEY (�ܷ�Ű)
-- �ٸ����̺��� �÷��� ������ ���°�
-- �θ�, �ڽ� ����� ���� -> 

CREATE TABLE SHOP_MEMBER(
    USER_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20) NOT NULL UNIQUE,
    --USER_ID VARCHAR2(20) NOT NULL,
    USER_PWD VARCHAR2(20) NOT NULL,
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(10),
    PHONE VARCHAR2(30),
    EMAIL VARCHAR2(50)
);
DROP TABLE SHOP_MEMBER;

INSERT INTO SHOP_MEMBER VALUES(1,'USER01','1234','ȫ�浿','��','010123123','HONG@HONG.COM');
INSERT INTO SHOP_MEMBER VALUES(2,'USER02','2222','������','��','01012341234','JIN@JIN.COM');
INSERT INTO SHOP_MEMBER VALUES(3,'USER03','3333','������','��','01033333333','JANG@JANG.COM');
INSERT INTO SHOP_MEMBER VALUES(4,'USER04','4444','�����','��','01044444444','SANG@SANG.COM');
INSERT INTO SHOP_MEMBER VALUES(5,'USER05','5555','�迹��','��','01055555555','KIM@KIM.COM');

SELECT * FROM SHOP_MEMBER;

CREATE TABLE SHOP_BUY(
    BUY_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20) NOT NULL, --REFERENCES SHOP_MEMBER(USER_ID),--SHOP_MEMBER TABLE�� �����͸� �����ͼ� �����.
    PRODUCT_NAME VARCHAR2(50),
    REG_DATE DATE,
    CONSTRAINT USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES SHOP_MEMBER(USER_ID)
);
DROP TABLE SHOP_BUY;
SELECT * FROM SHOP_BUY;
INSERT INTO SHOP_BUY VALUES(1,'USER04','��',SYSDATE);
INSERT INTO SHOP_BUY VALUES(2,'SANG','����',SYSDATE);
INSERT INTO SHOP_BUY VALUES(3, 'USER04','����',SYSDATE);
INSERT INTO SHOP_BUY VALUES(4, 'USER02','Ŀ��',SYSDATE);

-- �ܷ�Ű�� �����Ǿ��ִ� �÷��� �Ժη� ������ ���ϰ� �����Ǿ�����.
-- �ڽ����̺��� �θ����̺� �÷��� ���� ������ ������ �θ����̺��� �� ���� ������ �Ұ���!

DELETE FROM SHOP_MEMBER WHERE USER_ID='USER01';


-- �ܷ�Ű������ �÷��� ���� ���� �ɼ��� ������ �� �ִ�.
-- ON DELETE SET NULL / ON DELETE CASCADE 
CREATE TABLE SHOP_BUY(
    BUY_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20), --REFERENCES SHOP_MEMBER(USER_ID),--SHOP_MEMBER TABLE�� �����͸� �����ͼ� �����.
    PRODUCT_NAME VARCHAR2(50),
    REG_DATE DATE,
    --CONSTRAINT USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES SHOP_MEMBER(USER_ID) ON DELETE SET NULL
    CONSTRAINT USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES SHOP_MEMBER(USER_ID) ON DELETE CASCADE
);
DROP TABLE SHOP_BUY;

INSERT INTO SHOP_BUY VALUES(1, 'USER03','�׽���',SYSDATE);

SELECT * FROM SHOP_BUY;
DELETE FROM SHOP_MEMBER WHERE USER_ID='USER03';


-- CHECK ��������

CREATE TABLE USER_CHECK(
    USER_NO NUMBER,
    USER_NAME VARCHAR2(20),
    GENDER VARCHAR2(10) CHECK(GENDER IN('��','��')),
    AGE NUMBER,
    CHECK(AGE > 19 AND USER_NO > 0) 
);
DROP TABLE USER_CHECK;
INSERT INTO USER_CHECK VALUES(2,'��ȣ��','��',18);
INSERT INTO USER_CHECK VALUES(1,'��ȣ��','��');
INSERT INTO USER_CHECK VALUES(2,'�����','��');
SELECT * FROM USER_CHECK;
--TEST_MEMBER ���̺�
--MEMBER_CODE(NUMBER) - �⺻Ű						-- ȸ�������ڵ� 
--MEMBER_ID (varchar2(20) ) - �ߺ�����					-- ȸ�� ���̵�
--MEMBER_PWD (char(20)) - NULL �� ������					-- ȸ�� ��й�ȣ
--MEMBER_NAME(nchar(10)) 							-- ȸ�� �̸�
--MEMBER_ADDR (char(50)) - NULL�� ������					-- ȸ�� ������
--GENDER (varchar2(5)) - '��' Ȥ�� '��'�θ� �Է� ����				-- ����
--PHONE(varchar2(20)) - NULL �� ������ 					-- ȸ�� ����ó

-- ���������� �̿��� ���̺�����ϱ�
-- CREATE TABLE ���̺��( �÷����뼳��)
-- CREATE TABLE ���̺�� AS ��������
CREATE TABLE EMP_COPY 
AS SELECT * FROM EMPLOYEE;
SELECT * FROM EMP_COPY;

CREATE TABLE EMP_DEP_COPY
AS 
SELECT * 
FROM EMPLOYEE LEFT JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID;
SELECT * FROM EMP_DEP_COPY;

CREATE TABLE DEPT_COPY
AS 
SELECT * 
FROM DEPARTMENT
WHERE 100=1;
SELECT * FROM DEPT_COPY;

--INSERT�� Ȱ���ϱ�
--INSERT���� ���̺� �Ѱ� ROW�� �����ϴ� ��. 
-- �ѹ��� �Ѱ��� �����͸� ����
-- 1. �÷��� �����ؼ� �����ʹ� �����ϴ� ���
-- INSERT INTO ���̺��(�÷���,�÷���,�÷���.....) VALUES(��1, ��2,....
-- �������� ���� �÷��� ���� NULL���� ���Ե�. * NOT NULL�������� ����!
-- 2. ��ü �÷��� �����͸� �����ϴ� ���
-- INSERT INTO ���̺�� VALUES(��1, ��2......)
SELECT * FROM DEPARTMENT;
INSERT INTO DEPARTMENT(DEPT_ID, DEPT_TITLE, LOCATION_ID)
VALUES('D0','�ڹٿ�����','L2');
DESC DEPARTMENT;
SELECT * FROM DEPARTMENT;
INSERT INTO DEPARTMENT VALUES('D','����Ŭ������','L3');
DELETE FROM DEPARTMENT WHERE DEPT_ID='D0';

INSERT INTO DEPARTMENT(DEPT_ID, LOCATION_ID) VALUES('D0','L5');

-- EMPLOYEE���̺� ���������� �����ϱ�.

-- �߰����� INSERT�� Ȱ���ϱ�
-- 1. ���������� �̿��Ͽ� INSERT�ϱ�
CREATE TABLE INSERT_TEST
AS SELECT EMP_ID, EMP_NAME, DEPT_TITLE 
FROM EMPLOYEE JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
WHERE 1=0;

SELECT * FROM INSERT_TEST;
INSERT INTO INSERT_TEST VALUES('999','������','�ڹٿ�����');
--���������̿� ������ �ֱ�.
INSERT INTO INSERT_TEST(SELECT EMP_ID, EMP_NAME, DEPT_TITLE 
                        FROM EMPLOYEE JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
                        WHERE DEPT_CODE='D5');                 
DELETE FROM INSERT_TEST;

--���ϴ� �÷��� �����ؼ� ���� �� ����
INSERT INTO INSERT_TEST(EMP_ID,EMP_NAME)(SELECT EMP_ID, EMP_NAME FROM EMPLOYEE WHERE DEPT_CODE='D6');
SELECT * FROM INSERT_TEST;

-- INSERT ALL
-- �ΰ� �̻��� ���̺� ���� ������ ���
-- �Ѱ� ���������� �ΰ� ���̺� ���� ���� ������ ���
CREATE TABLE EMP_HIRE_DATE
AS 
SELECT EMP_ID, EMP_NAME, HIRE_DATE
FROM EMPLOYEE WHERE 1=0;
CREATE TABLE EMP_MANAGER
AS
SELECT EMP_ID, EMP_NAME, MANAGER_ID
FROM EMPLOYEE WHERE 1=0;

SELECT * FROM EMP_HIRE_DATE;
SELECT * FROM EMP_MANAGER;

INSERT ALL
INTO EMP_HIRE_DATE VALUES(EMP_ID, EMP_NAME, HIRE_DATE)
INTO EMP_MANAGER VALUES(EMP_ID, EMP_NAME, MANAGER_ID)
SELECT EMP_ID, EMP_NAME, HIRE_DATE, MANAGER_ID
FROM EMPLOYEE;


--���ǿ� ���� �����͸� �� ���̺� �и��Ͽ� �����ϱ�
CREATE TABLE EMP_OLD
AS SELECT EMP_ID, EMP_NAME, SALARY, HIRE_DATE
    FROM EMPLOYEE
    WHERE 1=0;
CREATE TABLE EMP_NEW
AS SELECT EMP_ID, EMP_NAME, SALARY, HIRE_DATE
    FROM EMPLOYEE
    WHERE 1=0;
SELECT * FROM EMP_OLD;
SELECT * FROM EMP_NEW;
--00/01/01�������� �����Ի��ڴ� EMP_OLD, ���� �Ի��ڴ� EMP_NEW�� �����ϱ�
INSERT ALL
WHEN '00/01/01'>HIRE_DATE THEN INTO EMP_OLD VALUES(EMP_ID, EMP_NAME, SALARY, HIRE_DATE)
WHEN '00/01/01'<=HIRE_DATE THEN INTO EMP_NEW VALUES(EMP_ID, EMP_NAME, SALARY, HIRE_DATE)
SELECT EMP_ID, EMP_NAME, SALARY, HIRE_DATE
FROM EMPLOYEE;

SELECT * FROM EMP_OLD;
SELECT * FROM EMP_NEW;

-- UPDATE : �Ѱ� �Ǵ� ���̻��� ROW(DATA)�� �����ϴ� ��ɾ�
-- UPATE ���̺�� SET �÷��� = ��, �÷��� = ��, �÷���= �� [WHERE ���ǽ�] * �����ϸ� �ȵ�!!! ū�ϳ�!
CREATE TABLE DEPT_COPY
AS SELECT * FROM DEPARTMENT;
SELECT * FROM DEPT_COPY;
UPDATE DEPT_COPY SET DEPT_TITLE='�ڹٿ�����' WHERE DEPT_ID='D0';
--�ټ��� �÷��� �����Ҷ�
UPDATE DEPT_COPY SET DEPT_TITLE='JDBC������', DEPT_ID='K1',LOCATION_ID='L4' WHERE DEPT_ID='D';
ROLLBACK;
COMMIT;
ROLLBACK;
SELECT * FROM DEPT_COPY;

--UPDATE���� �������� �̿��ϱ�

CREATE TABLE EMP_SALARY
AS 
SELECT EMP_ID, EMP_NAME, DEPT_CODE, JOB_CODE, SALARY, BONUS
FROM EMPLOYEE;
SELECT * FROM EMP_SALARY;

-- ������ �޿�, ���ʽ��� �ɺ����� �����Ͷ� �����ϰ� �����ض�.
SELECT SALARY, BONUS FROM EMP_SALARY WHERE EMP_NAME='�ɺ���';
UPDATE EMP_SALARY SET SALARY=3500000, BONUS=0.15 WHERE EMP_NAME='����';
ROLLBACK;
SELECT * FROM EMP_SALARY;

UPDATE EMP_SALARY
SET (SALARY, BONUS) = (SELECT SALARY, BONUS FROM EMPLOYEE WHERE EMP_NAME='�ɺ���')
WHERE EMP_NAME='����';

-- �ӽ�ȯ����� ������ ����, �μ��� �ؿܿ���3�η� �����ϴ� ������ �ۼ��غ���
UPDATE EMP_SALARY 
--SET JOB_CODE=(SELECT JOB_CODE FROM JOB WHERE JOB_NAME='����'),
--    DEPT_CODE=(SELECT DEPT_ID FROM DEPARTMENT WHERE DEPT_TITLE='�ؿܿ���3��')
SET (JOB_CODE,DEPT_CODE) = (SELECT JOB_CODE, DEPT_ID 
                                FROM JOB CROSS JOIN DEPARTMENT
                                WHERE JOB_NAME='����' AND DEPT_TITLE='�ؿܿ���3��')
WHERE EMP_NAME='�ӽ�ȯ';
SELECT * FROM JOB CROSS JOIN DEPARTMENT;
SELECT * FROM EMP_SALARY WHERE EMP_NAME='�ӽ�ȯ';
ROLLBACK;
    
-- DELETE : ���ǿ� �´� ROW(DATA) �����ϴ� ��ɾ�
-- DELETE FROM ���̺� [WHERE ]
-- WHERE �� ������ ��ü ������ ��. WHERE�� ������ WHERE ������ TRUE�� ROW�� ����
SELECT * FROM EMP_SALARY;

DELETE FROM EMP_SALARY;
ROLLBACK;
DELETE FROM EMP_SALARY WHERE BONUS IS NULL;

--DELETE ���� ���� : �ܷ�Ű ��������, ��������� ROW�� �ٸ� ���̺��� �����ǰ� ������ ���� �Ұ���(�ɼ����� ���氡��)

-- TRUNCATE ROW�� ���� -> DELETE���� �ӵ� ����... BUT ROLLBACK�� �� ����.
DELETE FROM EMP_SALARY;
SELECT * FROM EMP_SALARY;
ROLLBACK;


TRUNCATE TABLE EMP_SALARY;

-- MERGE �����̺��� ��ĥ�� ����ϴ� ��ɾ�
CREATE TABLE TBL_MERGE01(
 ID VARCHAR2(20),
 NAME VARCHAR2(20)
 );
 
CREATE TABLE TBL_MERGE02(
 ID VARCHAR2(20),
 NAME VARCHAR2(20)
 );
 
 SELECT * FROM TBL_MERGE01;
 SELECT * FROM TBL_MERGE02;
 
 INSERT INTO TBL_MERGE01 VALUES('USER11','������');
 INSERT INTO TBL_MERGE01 VALUES('USER22','�����');
 INSERT INTO TBL_MERGE02 VALUES('USER33','������');
 INSERT INTO TBL_MERGE02 VALUES('USER22','�迹��');
 
 MERGE INTO TBL_MERGE01
 USING TBL_MERGE02 ON (TBL_MERGE01.ID=TBL_MERGE02.ID)
 WHEN MATCHED THEN 
 UPDATE SET TBL_MERGE01.NAME=TBL_MERGE02.NAME
 WHEN NOT MATCHED THEN
 INSERT VALUES(TBL_MERGE02.ID,TBL_MERGE02.NAME);
 
 -- ALTER : ���̺� �� ����Ŭ ��ü�� �����ϴ� ��ɾ�
 -- �÷��� �߰�, ����, �÷��� ����, �ڷ��� ����, DEFAULT�� ����
 -- �������� ���� �߰�/����, �̸�����
 
 CREATE TABLE TBL_USER_ALTER(
    USER_NO NUMBER PRIMARY KEY,
    USER_ID VARCHAR2(20),
    USER_PWD VARCHAR2(20)
 );
 
 SELECT * FROM TBL_USER_ALTER;
 
 --�÷� �߰��ϱ�
ALTER TABLE TBL_USER_ALTER ADD(USER_NAME VARCHAR2(20));
INSERT INTO TBL_USER_ALTER VALUES(1,'ADMIN','1234','������','����','ADMIN@HOT.COM');
-- ������ �����Ͱ� �ִ� ���̺� �÷��� �߰��ϸ� 
ALTER TABLE TBL_USER_ALTER ADD(NICKNAME VARCHAR2(20));
SELECT * FROM TBL_USER_ALTER;
DELETE FROM TBL_USER_ALTER;
ALTER TABLE TBL_USER_ALTER ADD(EMAIL VARCHAR2(50) NOT NULL);
ALTER TABLE TBL_USER_ALTER ADD(AGE NUMBER DEFAULT 0 NOT NULL);
INSERT INTO TBL_USER_ALTER(USER_NO, USER_ID,USER_NAME,EMAIL) VALUES(2,'USER00','����','U00@U.COM');
INSERT INTO TBL_USER_ALTER VALUES(3,'USER01','USER01','����','���Ͽ���','A@COM',20);

-- ALTER�� �̿��ؼ� �������� �߰��ϱ�
ALTER TABLE TBL_USER_ALTER ADD UNIQUE(USER_ID);
-- ��õ���� ���� -> �������Ǹ�Ī�� �ڵ����� �ο��Ǽ� �����ϱ� ����
ALTER TABLE TBL_USER_ALTER ADD CONSTRAINT UQ_USER_NAME UNIQUE(USER_NAME);

-- �������ǻ����ϱ�
-- DROP
ALTER TABLE TBL_USER_ALTER DROP CONSTRAINT SYS_C007125;


-- �÷��� �����ϱ�
ALTER TABLE TBL_USER_ALTER RENAME COLUMN USER_PWD TO PASSWORD;
SELECT * FROM TBL_USER_ALTER;
-- �������� ��Ī�� �����ϱ�
ALTER TABLE TBL_USER_ALTER RENAME CONSTRAINT SYS_C007122 TO PK_TBL_USER;

-- �÷� Ÿ���� �����ϱ�
-- MODIFY����� ���
ALTER TABLE TBL_USER_ALTER MODIFY USER_NAME VARCHAR2(5);
 DESC TBL_USER_ALTER;

--NOT NULL �������� TBL_USER_ALTER USER_NAME�÷��� ����
-- ALTER TABLE TBL_USER_ALTER ADD CONSTRAINT NN_USER_NAME NOT NULL;
-- NULL�� ���� ���������� DEFAULT�� �����Ǿ��� -> MODIFY�� ������ �������.
ALTER TABLE TBL_USER_ALTER MODIFY USER_NAME CONSTRAINT NN_USER_NAME NOT NULL;

-- �÷� ����
-- DROP
ALTER TABLE TBL_USER_ALTER DROP COLUMN USER_NAME;
 SELECT * FROM TBL_USER_ALTER;
    
    
-- ���̺� ��Ī �����ϱ�
ALTER TABLE TBL_USER_ALTER RENAME TO CHANGE_TABLE;
SELECT * FROM TBL_USER_ALTER;
SELECT * FROM CHANGE_TABLE;
RENAME CHANGE_TABLE TO TBL_USER_ALTER;


-- DROP TABLE : ���̺� �����ϱ�
DROP TABLE TBL_USER_ALTER;
-- DROP TABLE �� ��������(�ܷ�Ű����)
CREATE TABLE TBL_USER(
    EMP_ID VARCHAR2(20) REFERENCES EMP_DEP_COPY(EMP_ID)
);

ALTER TABLE EMP_DEP_COPY ADD CONSTRAINT UQ_EMP_ID UNIQUE(EMP_ID);

DROP TABLE EMP_DEP_COPY;

DROP TABLE EMP_DEP_COPY CASCADE CONSTRAINT;

DROP TABLE TBL_USER;

-- DCL : DATA CONTROL LANGUAGE
-- ������ ���� ���, DB�� ���� ����, ���Ἲ, ������ DBMS�� �����ϱ� ���� ���
-- ���Ѻο�(GRANT, REVOKE), TCL Ʈ�����ǰ���(COMMIT, ROLLBACK)

-- GRANT : ����ڿ��� ����|ROLE �� �ο��ϴ� ��ɾ�.
-- GRANT ����|ROLE��Ī TO ����� ���� [WITH ADMIN OPTION]

CREATE USER QWER IDENTIFIED BY QWER;

GRANT CREATE SESSION TO QWER; --���Ѹ����� ������ �ο�
GRANT CONNECT TO QWER; --ROLE ������ ������ �ο�

--����ڿ��� �ο��� ���� ��ȸ
SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE='QWER';

SELECT * FROM DBA_ROLE_PRIVS
WHERE GRANTEE='KH';

SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE='KH';

SELECT * FROM USER_ROLE_PRIVS;

-- QWER�������� CREATE SESSION���Ѹ� �ο��� �Ǿ�����
-- ���Ӹ� ���� 
CREATE TABLE TEST(
    NAME VARCHAR2(20)
);

GRANT CREATE TABLE TO QWER;
--ALTER USER QWER QUOTA UNLIMITED ON USERS;
ALTER USER QWER DEFAULT TABLESPACE USERS;--TABLESPACE�� ���� ����Ȯ��

SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE='CONNECT';
SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE='RESOURCE';

--������ �ο��Ͽ� �ٸ� ������ �ִ� ���̺� �̿��ϰ� �����
SELECT * FROM KH.DEPARTMENT;
GRANT SELECT ON KH.DEPARTMENT TO QWER;
GRANT INSERT ON KH.DEPARTMENT TO QWER;

INSERT INTO KH.DEPARTMENT VALUES('K3','�����2','L3');
COMMIT;
SELECT * FROM DEPARTMENT;


--REVOKE ������ ȸ��
REVOKE INSERT ON KH.DEPARTMENT FROM QWER;

GRANT INSERT, SELECT, UPDATE, DELETE ON KH.EMPLOYEE TO QWER;
REVOKE INSERT, SELECT, UPDATE, DELETE ON KH.EMPLOYEE FROM QWER;

-- Ʈ������ : �۾��� ����
-- Ʈ�������� INSERT, UPDATE, DELETE -> ���̺��� �����͸� �����Ҷ� ���
SELECT * FROM TBL_USER;
INSERT INTO TBL_USER VALUES('USER01');
INSERT INTO TBL_USER VALUES('USER02');
INSERT INTO TBL_USER VALUES('USER03');
COMMIT;
UPDATE TBL_USER SET EMP_ID='TEST';
ROLLBACK;
SELECT * FROM KH.TBL_USER;
INSERT INTO KH.TBL_USER VALUES('USER04');
INSERT INTO KH.TBL_USER VALUES('USER05');
INSERT INTO KH.TBL_USER VALUES('USER06');
COMMIT;

-- VIEW : ���������̺�(RESULTSET) SELECT���� �̿��ؼ� ���� ���̺��� �����͸� ������ ���
-- VIEW ORACLE OBJECT�� DDL������ �̿��Ͽ� ����, ����, ����,
-- CREATE VIEW VIEW��Ī AS SELECT�� 
CREATE VIEW V_EMPLOYEEALL
AS SELECT * 
    FROM EMPLOYEE 
    JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
    JOIN JOB USING(JOB_CODE);
--VIEW�� �����ϰ� �Ϸ��� ������ �ο��ؾ���. CREATE VIEW
GRANT CREATE VIEW TO KH;

--VIEW�� �����ϰ��� VIEW��Ī�� FROM���� ����Ͽ� ���̺� ó�� ����� �����ϴ�.
SELECT * FROM V_EMPLOYEEALL;
SELECT * FROM (SELECT......)
--����� VIEWȮ�� �ϱ�
SELECT * FROM USER_VIEWS;

CREATE VIEW V_EMP_UNION
AS SELECT EMP_NAME,SALARY
    FROM EMPLOYEE
    UNION
    SELECT DEPT_TITLE, 10
    FROM DEPARTMENT;
SELECT * FROM V_EMP_UNION;
            
CREATE VIEW V_EMPAVG
AS  SELECT DEPT_CODE,FLOOR(AVG(SALARY)) AS ���
    FROM EMPLOYEE
    GROUP BY DEPT_CODE
    UNION
    SELECT JOB_CODE,FLOOR(AVG(SALARY))AS ���
    FROM EMPLOYEE
    GROUP BY JOB_CODE
    UNION
    SELECT '�����', FLOOR(AVG(SALARY))AS ���
    FROM EMPLOYEE;
    
SELECT * FROM V_EMPAVG;

-- VIEW�����ϱ�
DROP VIEW V_EMP_UNION;
SELECT * FROM USER_VIEWS;

--��Ư¡
--1. �÷�, ���������� ������ �� �ִ�. �� ������꿡�� �ݵ�� ��Ī�� �ο�
CREATE VIEW V_EMP_SALARY
AS SELECT EMP_NAME, (SALARY+(SALARY*NVL(BONUS,0)))*12 AS ����
    FROM EMPLOYEE;
SELECT * FROM V_EMP_SALARY;

-- VIEW������ �ο��ؼ� �̿밡���ϰ� ���� �� �ִ�.
SELECT * FROM KH.EMPLOYEE;
SELECT * FROM KH.DEPARTMENT;
--VIEW�� ���� ���� �ο��غ���
GRANT SELECT ON KH.V_EMPLOYEEALL TO QWER;
SELECT * FROM KH.V_EMPLOYEEALL;
SELECT * FROM KH.EMPLOYEE;
SELECT * FROM KH.JOB;

-- VIEW�� DMLȰ���ϱ�
-- INSERT, UPDATE, DELETE -> �����ϸ� ���� ���̺� �ִ� ���� ����
-- ���࿡ �����÷�(�������̺� �������� �ʴ� �÷�)�� �����Ѵٸ� DML�Ұ���
SELECT * FROM V_EMP_SALARY;
UPDATE V_EMP_SALARY SET EMP_NAME='�׽�Ʈ';
DELETE FROM V_EMP_SALARY WHERE EMP_NAME='��ι�';
SELECT * FROM EMPLOYEE;
ROLLBACK;

CREATE VIEW V_EMP
AS SELECT EMP_ID, EMP_NO, EMP_NAME, EMAIL, PHONE, JOB_CODE, SAL_LEVEL
    FROM EMPLOYEE;

INSERT INTO V_EMP VALUES('500','930710-1258321','�����','SANG@SANG.COM','190213023','J2','S3');
SELECT * FROM V_EMP;
SELECT * FROM EMPLOYEE;
UPDATE V_EMP SET DEPT_CODE='D5' WHERE EMP_NAME='�����';


--DML������ ������ �Ұ����� ���
--1. �信�� �����ϰ� ���� ���� �÷��� �����ϴ°��
--2. �信 ���Ե��� ���� �÷��� ���̽�(�������̺�)�� �Ǵ� �÷��� NOT NULL���������� �����Ǿ�����
--3. ����������� ������ �÷�(�����÷�)
--4. �׷��Լ�, GROUP BY���� ���Ե� VIEW
--5. DISTINCT�� �����ϰ� �ִ� ���
--6. JOIN�� ���� �������̺��� �����ϰ� �ִ� ��� * ���ܻ�Ȳ�� ����.


-- VIEW�ɼ�
--1. OR REPLACE
CREATE OR REPLACE VIEW V_EMP_SALARY
AS SELECT * FROM EMPLOYEE;
SELECT * FROM USER_VIEWS;

--2. FORCE/NOFORCE�ɼ�  : �������̺��� ��� VIEW�� ���� ������ �� �ְ� ���ִ� �ɼ�
CREATE FORCE VIEW V_FORCETEST
AS SELECT A,B,C FROM NOTHINGBETTER;
SELECT * FROM V_FORCETEST;
CREATE TABLE NOTHINGBETTER(
    A NUMBER,
    B NUMBER,
    C NUMBER
    );

-- 3. WITH CHECK OPTION 
-- SELECT���� WHERE������ ����� �÷��� �������� ���ϰ� �ϴ� �ɼ�
CREATE OR REPLACE VIEW V_CHECKOPTION
AS SELECT EMP_ID, EMP_NAME, SALARY, DEPT_CODE
    FROM EMPLOYEE 
    WHERE DEPT_CODE='D5' WITH CHECK OPTION;
SELECT * FROM V_CHECKOPTION;
UPDATE V_CHECKOPTION SET SALARY=6000000 WHERE EMP_ID=215;
ROLLBACK;

--4. WITH READ ONLY
-- VIEW��ü�� ���� ���ϰ� �����ϴ� �ɼ�
CREATE OR REPLACE VIEW V_READ
AS SELECT EMP_ID, EMP_NAME, SALARY, DEPT_CODE
    FROM EMPLOYEE
    WHERE DEPT_CODE='D5' WITH READ ONLY;
UPDATE V_READ SET SALARY=100000000;

--SEQUENCE�̿��ϱ�
--�ڵ���ȣ �ο���
-- CREATE SEQUENCE �������� [�ɼǵ�]
-- �������۵������ -> ������.NEXTVAL, ��������.CURRVAL
-- �⺻������ �����ϱ�
CREATE SEQUENCE SEQ_BASIC;
SELECT SEQ_BASIC.NEXTVAL FROM DUAL;
SELECT SEQ_BASIC.CURRVAL FROM DUAL;
CREATE SEQUENCE SEQ_OPTION
START WITH 100
INCREMENT BY 10;
SELECT SEQ_OPTION.NEXTVAL FROM DUAL;

CREATE SEQUENCE SEQ_OPTION2
START WITH 60
INCREMENT BY 6
MAXVALUE 90
MINVALUE 0
CYCLE
NOCACHE;
SELECT SEQ_OPTION2.NEXTVAL FROM DUAL;
CREATE SEQUENCE SEQ_OPTION3
START WITH 60
INCREMENT BY 6
MAXVALUE 90
MINVALUE 0
NOCACHE;
SELECT SEQ_OPTION3.NEXTVAL FROM DUAL;


CREATE TABLE BOARD (
    BOARD_NO NUMBER PRIMARY KEY,
    BOARD_TITLE VARCHAR2(200) NOT NULL,
    BOARD_CONTENT VARCHAR2(800),
    BOARD_WRITER VARCHAR2(20) REFERENCES EMPLOYEE(EMP_ID),
    BOARD_DATE DATE
);
CREATE SEQUENCE SEQ_BOARD_NO;
INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL,'������ ��','�������� ���񾾿��� Ŀ�Ǹ� ��Ʋ��Ŵ','200',SYSDATE);
INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL,'���� ��','�� �����ڿ���... ����..�Ф�','201',SYSDATE);
SELECT * FROM BOARD;

--SEQUENCE���� ��ȸ�ϱ�
SELECT * FROM USER_SEQUENCES;

SELECT 'B_'||SEQ_BOARD_NO.NEXTVAL FROM DUAL;

--������ �����ϱ�
ALTER SEQUENCE SEQ_BOARD_NO
MAXVALUE 1000;
SELECT * FROM USER_SEQUENCES;

--������ �����
DROP SEQUENCE SEQ_OPTION;

--NEXTVAL, CURRVAL
-- CURRVAL ���ϼ��ǿ��� NEXTVAL�ѹ��̶� ���� �� �� ��ȸ�� ����
CREATE SEQUENCE SEQ_TEST;
SELECT SEQ_TEST.NEXTVAL FROM DUAL;
SELECT SEQ_TEST.CURRVAL FROM DUAL;
-- ����� �� ���� ����
-- VIEW�� SELECT����
-- DISTINCT���Ե� SELECT��
-- GROUP BY HAVING ORDER BY �� �ִ� SELECT��
-- SELECT, DELTE, UPDATE ��������
-- CREATE TABLE, ALTER TABLE�� DEFAULT����


-- INDEX : ��ü���� DBMS ��������� ���ؼ���.
SELECT * FROM USER_INDEXES;
SELECT * FROM USER_IND_COLUMNS;

SELECT * FROM EMPLOYEE JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID WHERE EMP_NAME='������';

CREATE INDEX IND_EMPLOYEE ON EMPLOYEE(EMP_NAME);

SELECT * FROM EMPLOYEE LEFT JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID WHERE EMP_NAME='�����';

DROP INDEX IND_EMPLOYEE;
--�����÷��� �ε����� �ο��� �� ����
CREATE INDEX IND_EMPLOYEE_COM ON EMPLOYEE(EMP_NAME, DEPT_CODE);

SELECT * FROM EMPLOYEE 
WHERE EMP_NAME='�ڳ���' AND DEPT_CODE='D5';


-- PL/SQL����
-- ����
-- �͸� ��� -> �̸��� ��� ��ȣ���� �Ұ���.
-- ���ν���, �Լ� -> �̸��� �־ ��ȣ���� ������.

--����
-- DECALRE  �����
--  ������ ����.
-- BEGIN  �����
--  ���, �ݺ���, �Լ� ��
-- EXCEPTION ����ó����
--  ���ܹ߻���Ȳ�� ó��
--END;

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('���� ù PL/SQL');
END;
/

DECLARE
    VID VARCHAR2(20);
BEGIN
    SELECT EMP_ID
    INTO VID
    FROM EMPLOYEE WHERE EMP_NAME='�����';
    
    DBMS_OUTPUT.PUT_LINE('VID : '||VID);
END;
/

-- ���������ϱ�
-- ������ [CONSTANT] �ڷ���(����Ʈ) [NOT NULL] ;
-- ������ �ڷ��� := �ʱⰪ;

DECLARE
    V_EMPNO NUMBER;
    V_EMPNAME VARCHAR2(20);
    TEST_NUM NUMBER:=10+30;
BEGIN
    V_EMPNO:=999;
    V_EMPNAME:='������';
    DBMS_OUTPUT.PUT_LINE('��� : '||V_EMPNO);
    DBMS_OUTPUT.PUT_LINE('�̸� : '||V_EMPNAME);
    DBMS_OUTPUT.PUT_LINE('��ȣ : '||TEST_NUM);
END;
/

-- ���� �ڷ���Ÿ���� �˾ƺ���
-- �ڷ����� �⺻�ڷ���(ORACLE�ڷ���), �����ڷ������� ���е�.
-- �⺻�ڷ��� : NUMBER, VARCHAR2, DATE, BOOLEAN, BINARY_INTEGER
-- �����ڷ��� : ���ڵ�, Ŀ��, �÷���

-- ���� : �Ϲݺ���, ����������(���̺��� �÷��� ������ �ڷ����� ������ ���)

--����������
--1. %TYPE : ������ ���̺��� �÷��� �ڷ����� �����ϴ� ���۷����ڷ���
DECLARE
    V_EMP_ID EMPLOYEE.EMP_ID%TYPE;
    V_SALARY EMPLOYEE.SALARY%TYPE;
BEGIN
    SELECT EMP_ID, SALARY
    INTO V_EMP_ID, V_SALARY
    FROM EMPLOYEE
    WHERE EMP_ID=200;
    DBMS_OUTPUT.PUT_LINE(V_EMP_ID||' '||V_SALARY);
END;
/
--2. %ROWTYPE : ���̺� �����Ǿ��ִ� �Ѱ� ROW�� �÷����� ��� �������� �ڷ���
DECLARE
    VEMP EMPLOYEE%ROWTYPE;
BEGIN
    SELECT * 
    INTO VEMP
    FROM EMPLOYEE
    WHERE EMP_NAME='������';
    
    DBMS_OUTPUT.PUT_LINE(VEMP.EMP_ID||VEMP.EMP_NAME||VEMP.SALARY);
END;
/

-- ���ڵ� : Ŭ���� 
DECLARE
    TYPE MY_RECODE IS RECORD(
        ID EMPLOYEE.EMP_ID%TYPE,
        NAME EMPLOYEE.EMP_NAME%TYPE,
        TITLE DEPARTMENT.DEPT_TITLE%TYPE
    );
    MY MY_RECODE;
BEGIN
    SELECT EMP_ID, EMP_NAME, DEPT_TITLE
    INTO MY
    FROM EMPLOYEE JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
    WHERE EMP_NAME='������';
    
    DBMS_OUTPUT.PUT_LINE(MY.ID||' '||MY.NAME||' ' ||MY.TITLE);
END;
/

-- �÷��� �ڷ���
-- �÷����� �ڹ��� �迭�� ���� ���¸� ������ ����.
DECLARE
    TYPE VA_TYPE IS VARRAY(5) OF VARCHAR2(10);
    V_VA VA_TYPE;
    V_CNT NUMBER:=0;
BEGIN
    V_VA:=VA_TYPE('FIRST','SECOND','THIRD','','');
    LOOP
        V_CNT:=V_CNT+1;
        IF V_CNT > 5 THEN  EXIT;
        END IF;
        DBMS_OUTPUT.PUT_LINE(V_CNT||' '||V_VA(V_CNT));
    END LOOP;
END;
/

-- TABLE�ڷ��� �迭
DECLARE
    TYPE EMP_ID_TABLE_TYPE IS TABLE OF EMPLOYEE.EMP_ID%TYPE
    INDEX BY BINARY_INTEGER;
    EMP_ID_TABLE EMP_ID_TABLE_TYPE;
    I BINARY_INTEGER:=0;
BEGIN
    FOR K IN (SELECT EMP_ID FROM EMPLOYEE) LOOP
        I:=I+1;
        EMP_ID_TABLE(I):=K.EMP_ID;
    END LOOP;
    FOR J IN 1..I LOOP
        DBMS_OUTPUT.PUT_LINE(EMP_ID_TABLE(J));
    END LOOP;
END;
/
-- PL/SQL�������� SELECT�� ����ϱ�
-- PL/SQL�������� SELECT���� ����ϴ� ���� ��ȸ�� ����� ������ �����ϰ� Ȱ���ϱ� ���ؼ� ���
-- PL/SQL�������� SELECT���� ����Ҷ��� �ݵ�� INTO�� ����Ͽ� �����ϴ� ������ ���������Ѵ�.
DECLARE
    EMP_ID EMPLOYEE.EMP_ID%TYPE;
BEGIN 
    SELECT EMP_ID 
    INTO EMP_ID
    FROM EMPLOYEE
    WHERE EMP_NAME='����';
END;
/
SELECT * FROM EMPLOYEE;

-- PL/SQL������ �̿��Ͽ� INSERT�� ó���ϱ�

BEGIN
    FOR K IN 1..10 LOOP
        INSERT INTO MEMBER VALUES('USER0'||K,'USER0'||K,'������'||k);
        COMMIT;
    END LOOP;
END;
/
SELECT * FROM MEMBER;


--1. ��� ��ȣ�� �Է� �޾Ƽ� ���� ����� �����ȣ, �̸�, �μ��ڵ�, �μ����� ����ϵ��� �Ͻÿ�
--      �� �÷��� ������ �����ϱ�
DECLARE
    VEMPID EMPLOYEE.EMP_ID%TYPE;
    VEMPNAME EMPLOYEE.EMP_NAME%TYPE;
    VDEPT_CODE EMPLOYEE.DEPT_CODE%TYPE;
    VDEPT_TITLE DEPARTMENT.DEPT_TITLE%TYPE;
BEGIN
    SELECT EMP_ID, EMP_NAME, DEPT_CODE, DEPT_TITLE
    INTO VEMPID, VEMPNAME,VDEPT_CODE, VDEPT_TITLE
    FROM EMPLOYEE JOIN DEPARTMENT ON DEPT_CODE=DEPT_ID
    WHERE EMP_ID='&EMP_ID';
    DBMS_OUTPUT.PUT_LINE(VEMPID);
    DBMS_OUTPUT.PUT_LINE(VEMPNAME);
    DBMS_OUTPUT.PUT_LINE(VDEPT_CODE);
    DBMS_OUTPUT.PUT_LINE(VDEPT_TITLE);
END;
/
--2. ��� ��ȣ�� �Է� �޾Ƽ� �ش� ����� ����(�� ��)�� �� ������  ��� �Է� �޾� 
--   ���,�̸�,�ֹι�ȣ,�޿��� ����Ͽ���.
DECLARE
    E EMPLOYEE%ROWTYPE;
BEGIN
    SELECT * 
    INTO E
    FROM EMPLOYEE
    WHERE EMP_ID='&�����';
    DBMS_OUTPUT.PUT_LINE(E.EMP_ID||E.EMP_NAME||E.EMP_NO||E.SALARY);
END;
/
SET SERVEROUTPUT ON

--3. EMPLOYEE���̺��� ��� ��������ȣ�� ���ѵ�, +1�� ����� ����ڷ� ���� �Է¹��� 
-- �̸�, �ֹι�ȣ, ��ȭ��ȣ, �����ڵ�(J5), �޿����(S5)�� ����ϴ� PL/SQL�� �ۼ�����.
DECLARE
    ID EMPLOYEE.EMP_ID%TYPE;
BEGIN
    SELECT MAX(EMP_ID)
    INTO ID
    FROM EMPLOYEE;
    
    INSERT INTO EMPLOYEE(EMP_ID, EMP_NAME,EMP_NO,PHONE, JOB_CODE, SAL_LEVEL)
    VALUES(ID+1, '&�̸�','&�ֹι�ȣ','&��ȭ��ȣ','&��å�ڵ�','&�޿��ڵ�');
    COMMIT;
END;
/
SELECT * FROM EMPLOYEE;



begin
    insert into member values('&���̵�','&��й�ȣ','&�̸�');
    commit;
end;
/
SELECT * FROM MEMBER;

-- PL/SQL ���ǹ�
-- ���� ���๮�� ���
-- IF ���ǽ� ~ THEN ������ TRUE�϶� ������ ���� ~ END IF��
DECLARE
    V_EMP_NAME EMPLOYEE.EMP_NAME%TYPE;
BEGIN
    SELECT EMP_NAME
    INTO V_EMP_NAME
    FROM EMPLOYEE 
    WHERE EMP_ID='&���';

    IF V_EMP_NAME='������' THEN
        DBMS_OUTPUT.PUT_LINE('�� ��ǥ!');
    END IF;
END;
/
-- IF ~ THEN ~ ELSE ~ END IF;
DECLARE 
    V_EMP_NAME EMPLOYEE.EMP_NAME%TYPE;
BEGIN
    SELECT EMP_NAME
    INTO V_EMP_NAME
    FROM EMPLOYEE
    WHERE EMP_ID='&������̵�';
    
    IF V_EMP_NAME='������' THEN
        DBMS_OUTPUT.PUT_LINE('��ǥ��');
    ELSE DBMS_OUTPUT.PUT_LINE('����̴�!');
    END IF;
END;
/
-- IF ~ THEN ~ ELSIF ~ ELSE ~ END IF    
DECLARE 
    V_JOB_CODE EMPLOYEE.JOB_CODE%TYPE;
BEGIN
    SELECT JOB_CODE
    INTO V_JOB_CODE
    FROM EMPLOYEE
    WHERE EMP_ID='&������̵�';
    
    IF V_JOB_CODE='J1' THEN
        DBMS_OUTPUT.PUT_LINE('��ǥ��');
    ELSIF V_JOB_CODE='J2' THEN
        DBMS_OUTPUT.PUT_LINE('�ӿ��̴�');
    ELSE DBMS_OUTPUT.PUT_LINE('����̴�!');
    END IF;
END;
/

-- CASE��
DECLARE
    INPUTVALUE NUMBER;
BEGIN
    INPUTVALUE:='&���Է�';
    CASE INPUTVALUE
        WHEN 1 THEN
            DBMS_OUTPUT.PUT_LINE(INPUTVALUE||'�� �Է��� 1�� ù��°');
        WHEN 2 THEN
            DBMS_OUTPUT.PUT_LINE(INPUTVALUE||'�� �Է��� 2�� �ι�°');
        WHEN 3 THEN
            DBMS_OUTPUT.PUT_LINE(INPUTVALUE||'�� �Է��� 3�� ����°');
        ELSE
            DBMS_OUTPUT.PUT_LINE(INPUTVALUE||'3�̻��� ����');
    END CASE;
END;
/
DECLARE
    V_SALARY EMPLOYEE.SALARY%TYPE;
BEGIN
    SELECT SALARY 
    INTO V_SALARY
    FROM EMPLOYEE
    WHERE EMP_ID='&���';
    
    CASE 
        WHEN V_SALARY > 4000000 THEN
         DBMS_OUTPUT.PUT_LINE('��׿�����');
        WHEN V_SALARY > 2000000 THEN
         DBMS_OUTPUT.PUT_LINE('������');   
        ELSE 
         DBMS_OUTPUT.PUT_LINE('������....');
    END CASE;
END;
/
-- �ݺ���
-- �⺻�ݺ��� (LOOP)
-- LOOP ~������ ���� END LOOP -> ���ѷ���
-- �ݺ����� ���������� ����� -> EXIT
DECLARE
    N NUMBER :=1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(N);
        DBMS_OUTPUT.PUT_LINE(FLOOR(DBMS_RANDOM.VALUE(1,10)));
        N:=N+1;
--        IF N > 10 THEN
--            EXIT;
--        END IF;
        EXIT WHEN N>10;
    END LOOP;
END;
/

-- WHILE ���ǽ� LOOP
--  ���౸��
-- END LOOP;

-- FOR LOOP
-- FOR EACH���� ���
-- FOR ���� IN ���� LOOP
--      ���౸��
-- END LOOP;
BEGIN
    FOR I IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(I);
    END LOOP;
END;
/
SET SERVEROUTPUT ON;
BEGIN 
    FOR I IN REVERSE 1..10 LOOP
     DBMS_OUTPUT.PUT_LINE(I);
    END LOOP;
END;
/
-- FOR LOOP�� �̿��ؼ� EMPLOYEE�� 10�� ROW����ϱ�
-- EMP_ID, EMP_NAME, SALARY
DECLARE
    V_EMP_ID EMPLOYEE.EMP_ID%TYPE;
    E EMPLOYEE%ROWTYPE;
BEGIN
    V_EMP_ID:=200;
    FOR K IN 1..10 LOOP
        SELECT *
        INTO E
        FROM EMPLOYEE
        WHERE EMP_ID=V_EMP_ID;
        V_EMP_ID:=V_EMP_ID+1;-- SUM+=I;
        --DBMS_OUTPUT.PUT_LINE(V_EMP_ID);
        DBMS_OUTPUT.PUT_LINE(E.EMP_ID||E.EMP_NAME||E.SALARY);
    END LOOP;
END;
/






-- PROCEDURE : PL/SQL������ �����ؼ� �̿��ϰ� �ϴ� ��ü
CREATE TABLE PRO_TEST
AS SELECT * FROM EMPLOYEE;
SELECT * FROM PRO_TEST;

--���ν��������.
CREATE PROCEDURE DEL_DATA
IS
--������������
BEGIN
    DELETE FROM PRO_TEST;
    COMMIT;
END;
/
--������ ���ν��� ��ȸ
SELECT * FROM USER_PROCEDURES;
--������ ���ν��� �����ϱ�
EXEC DEL_DATA;

SELECT * FROM PRO_TEST;


-- ���ν������� �Ű������� �����ϴ°��� ������.
-- IN : ���ν��� ����� �ʿ��� ���� �޴� ����(�ڹٿ��� ������ �Ű������� ����)
-- OUT : ȣ���Ѱ����� �ǵ��� �ִ� ����(�����)
CREATE OR REPLACE PROCEDURE PRO_SELECT_EMP(V_EMP_ID IN EMPLOYEE.EMP_ID%TYPE,
                                V_EMP_NAME OUT EMPLOYEE.EMP_NAME%TYPE,
                                V_SALARY OUT EMPLOYEE.SALARY%TYPE,
                                V_BONUS OUT EMPLOYEE.BONUS%TYPE)
IS 
BEGIN
    SELECT EMP_NAME, SALARY,BONUS
    INTO V_EMP_NAME, V_SALARY,V_BONUS
    FROM EMPLOYEE
    WHERE EMP_ID=V_EMP_ID;
END;
/

-- �Ű������� �ִ� ���ν��������ϱ�
VAR EMP_NAME VARCHAR2(20);
VAR SALARY NUMBER;
VAR BONUS NUMBER;

EXEC PRO_SELECT_EMP(200,:EMP_NAME,:SALARY,:BONUS);

PRINT EMP_NAME;
PRINT SALARY;
PRINT BONUS;


-- FUNCTION�����
-- ��ȯ���� ����.
CREATE OR REPLACE FUNCTION MYFUNC(V_STR VARCHAR2)
RETURN VARCHAR2
IS
    RESULT VARCHAR2(1000);
BEGIN
    DBMS_OUTPUT.PUT_LINE(V_STR);
    RESULT:='*'||V_STR||'*';
    RETURN RESULT;
END;
/

SELECT MYFUNC('������') FROM DUAL;

-- EMP_ID�� ���޹޾� ������ ����ؼ� ������ִ� �Լ������.
CREATE OR REPLACE FUNCTION CALC_SALARY(V_EMP_ID EMPLOYEE.EMP_ID%TYPE)
RETURN NUMBER
IS
    E EMPLOYEE%ROWTYPE;
    RESULT NUMBER;
BEGIN
    SELECT *
    INTO E
    FROM EMPLOYEE
    WHERE EMP_ID=V_EMP_ID;
    RESULT:=(E.SALARY+(E.SALARY*NVL(E.BONUS,0))*12);
    RETURN RESULT;
END;
/

SELECT EMP_ID, CALC_SALARY(EMP_ID)
FROM EMPLOYEE;

-- Ʈ���� C
CREATE OR REPLACE TRIGGER TRG_01
AFTER INSERT
ON EMPLOYEE
FOR EACH ROW
BEGIN 
    DBMS_OUTPUT.PUT_LINE(:NEW.EMP_ID);
    DBMS_OUTPUT.PUT_LINE(:NEW.EMP_NAME);
    DBMS_OUTPUT.PUT_LINE(:OLD.EMP_ID);
    DBMS_OUTPUT.PUT_LINE(:OLD.EMP_NAME);
    --DBMS_OUTPUT.PUT_LINE('������ ��ϵǾ����ϴ�.');
END;
/

INSERT INTO EMPLOYEE VALUES (908, '�漺��', '690512-1151432','gil_sj@kh.or.kr', 
                    '01035464455', 'D5', 'J3', 'S5', 3000000, 0.1, 200, SYSDATE, NULL,
			       DEFAULT);

-- Ʈ���� �Ӽ�
-- 1. ������� : BEFORE / AFTER
-- 2. �����Ű�� ��� : INSERT, UPDATE, DELETE
-- 3. FOR EACH ROW : ���ึ�� Ʈ���Ÿ� �ߵ�
-- 4. ������, �ű԰� ��������
--    OLD. : �����Ǳ� �� ��  NEW. : ���� �� �߰��Ǵ� ��

CREATE OR REPLACE TRIGGER TRG_02
AFTER UPDATE
ON EMPLOYEE
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(:OLD.EMP_NAME);
    DBMS_OUTPUT.PUT_LINE(:OLD.SALARY);
    DBMS_OUTPUT.PUT_LINE(:NEW.EMP_NAME);
    DBMS_OUTPUT.PUT_LINE(:NEW.SALARY);
END;
/
UPDATE EMPLOYEE SET EMP_NAME='������', SALARY=200 WHERE EMP_ID='906';


SELECT * FROM EMPLOYEE;


-- ������ ���̺� Ʈ���� �����ϱ�
CREATE TABLE PRODUCT(
    PCODE NUMBER PRIMARY KEY,
    PNAME VARCHAR2(30),
    BRAND VARCHAR2(30),
    PRICE NUMBER,
    STOCK NUMBER DEFAULT 0
);
-- ��ǰ�� ���� ������� �����ϴ� ���̺�
CREATE TABLE PRODUCT_IO(
    IOCODE NUMBER PRIMARY KEY,
    PCODE NUMBER CONSTRAINT FK_PIO_PCODE REFERENCES PRODUCT(PCODE),
    PDATE DATE,
    AMOUNT NUMBER,
    STATUS VARCHAR2(10) CHECK(STATUS IN ('�԰�','���'))
);
DROP TABLE PRODUCT_IO;

CREATE SEQUENCE SEQ_PCODE;
CREATE SEQUENCE SEQ_IOCODE;

SELECT * FROM PRODUCT;
SELECT * FROM PRODUCT_IO;

INSERT INTO PRODUCT VALUES(SEQ_PCODE.NEXTVAL,'������20','�Ｚ',1200000,DEFAULT);
INSERT INTO PRODUCT VALUES(SEQ_PCODE.NEXTVAL,'���ù̴�Ȩ','����',120000,DEFAULT);
INSERT INTO PRODUCT VALUES(SEQ_PCODE.NEXTVAL,'E-CLASS','����',120000000,DEFAULT);

SELECT * FROM PRODUCT;

CREATE TRIGGER PRODUCT_TRG
AFTER INSERT
ON PRODUCT_IO
FOR EACH ROW
BEGIN
    IF :NEW.STATUS = '�԰�' THEN
        UPDATE PRODUCT SET STOCK=STOCK+:NEW.AMOUNT WHERE PCODE=:NEW.PCODE;
    ELSIF :NEW.STATUS = '���' THEN
        UPDATE PRODUCT SET STOCK=STOCK-:NEW.AMOUNT WHERE PCODE=:NEW.PCODE;
    END IF;
END;
/
SELECT * FROM PRODUCT;

INSERT INTO PRODUCT_IO VALUES(SEQ_IOCODE.NEXTVAL,1,SYSDATE,10,'�԰�');
INSERT INTO PRODUCT_IO VALUES(SEQ_IOCODE.NEXTVAL,3,SYSDATE,5,'�԰�');
INSERT INTO PRODUCT_IO VALUES(SEQ_IOCODE.NEXTVAL,1,SYSDATE,3,'���');
SELECT * FROM PRODUCT_IO;

----- ��!!!! -----










