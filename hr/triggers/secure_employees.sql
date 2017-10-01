create or replace trigger secure_employees
  before insert or update or delete on employees 
disable
begin
  secure_dml;
end secure_employees;
/
