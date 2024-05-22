 --Dynamic Sql(Execute Immediate)
--DDl-> Data Definition Language(Create,Alter,Drop)
--DCL -> Data Control Language (Grant,Revoke)
---------------------------------------------------------------
--Static Sql
--DML Data Manipulation Language (Select,Insert,Update,Delete)
--TCL Transaction Control Language (Commit,Rollback)


 --desc employees; 
 --create table employees2 as select * from employees;
-- select * from employees2 where employee_id=207;
 
 
 DECLARE
  emp_id employees.employee_id%type;
  emp_first_name employees2.first_name%type      :='Umut';
  emp_last_name employees2.last_name%type       :='Þahinkaya';
  emp_job_id employees2.job_id%type              :='PL/SQL';
  emp_email employees2.email%type                :='umut@sahinkaya.com';
  emp_hire_date employees2.hire_date%type        :='12.06.2023';
 BEGIN
   select nvl(max(employee_id),0)+1 into emp_id from employees2;
  
  insert into employees2(
                        employee_id,
                        first_name,
                        last_name,
                        job_id,email,hire_date)
        values (emp_id,emp_first_name,emp_last_name,emp_job_id,
                                      emp_email,emp_hire_date);
  
  update employees2 set job_id='DBA' 
                    where employee_id=emp_id;
  
  --delete employees2 where employee_id = emp_id
    --                returning employee_id,first_name,job_id Into emp_id,emp_first_name,emp_job_id;
                    
 -- rollback; 
  commit;
  
  dbms_output.put_line(emp_id||' '||emp_first_name||' '||emp_job_id||' '||emp_email||' '||emp_hire_date);
 END;