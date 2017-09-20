--exec sys.dbms_system.set_sql_trace_in_session(SID, serial#, true);
--exec sys.dbms_system.set_ev(SID, serial#, 10046, уровень, '');



--включение трассировки 12 лвл, для события 10046 уровень 12

/*
begin
sys.dbms_system.set_ev(1923, 48335, 10046, 12, '');
end;
/
*/

--выключается трассировка аналогично - установкой события 10046 в нулевой уровень:

begin
--sys.dbms_system.set_ev(sid, serial#, 10046, 0, '');
sys.dbms_system.set_ev(1923, 48335, 10046, 0, '');
end;
/


