create or replace trigger update_job_history
  after update of job_id, department_id on employees   for each row
begin
  add_job_history(:old.employee_id, :old.hire_date, sysdate,
                  :old.job_id, :old.department_id);
end;
/
