-- COMPOSÝTE (Collection) Data Types (Record Type Örneði)
DECLARE
 TYPE t_dept IS RECORD (
                        dept_id number(4),
                        dept_name departments.department_name%type,
                        manager_id departments.manager_id%type NOT NULL DEFAULT 0 );
  r_dept2 t_dept;
BEGIN
 SELECT department_id,department_name,manager_id INTO r_dept2 FROM DEPARTMENTS WHERE department_ýd = 20;
 DBMS_OUTPUT.PUT_LINE(r_dept2.dept_id||' '||r_dept2.dept_name||' '||r_dept2.manager_id);
END;