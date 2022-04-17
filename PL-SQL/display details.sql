DECLARE
    user_id INTEGER;
    v_ename emp.ename%TYPE;
    v_job emp.job%TYPE;
    n_mgr emp.mgr%TYPE;
    n_sal emp.sal%TYPE;
    d_hiredate emp.hiredate%TYPE;
    n_deptno emp.deptno%TYPE;
BEGIN
SELECT ename,
job,
mgr,
hiredate,
sal,
deptno
INTO v_ename,
v_job,
n_mgr,
d_hiredate,
n_sal,
n_deptno
FROM emp
WHERE empno = n_empno;

DBMS_OUTPUT.put_line ('Employee Name: ' || v_ename);
DBMS_OUTPUT.put_line ('Job: ' || v_job);
DBMS_OUTPUT.put_line ('Manager: ' || n_mgr);
DBMS_OUTPUT.put_line ('Hiredate: ' || d_hiredate);
DBMS_OUTPUT.put_line ('Salary: ' || n_sal);
DBMS_OUTPUT.put_line ('Department: ' || n_deptno);
Exception
 When others then
DBMS_OUTPUT.put_line ('Error: ' || sqlerrm);   
END;
/
