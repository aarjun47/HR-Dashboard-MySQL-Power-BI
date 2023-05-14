
DESCRIBE HR;
set sql_safe_updates = 0;
update hr
set termdate = case
 when termdate like '%/%'then date_format(str_to_date(termdate,'%m/%d/%Y'),'%YYYY-%mm-%dd')
 when termdate like '%-%' then date_format(str_to_date(termdate,'%mm-%d-%Y'),'%YYYY-%mm-%dd')
else null
end;
