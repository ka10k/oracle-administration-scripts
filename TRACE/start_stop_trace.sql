
/*
begin
sys.dbms_system.set_ev(1923, 48335, 10046, 12, '');
end;
/
*/

--выключается трассировка аналогично - установкой события 10046 в нулевой уровень:

begin
--sys.dbms_system.set_ev(1502, 35735, 10046, 12, ''); --start trace
sys.dbms_system.set_ev(1502, 35735, 10046, 0, ''); --stop trace 1059
end;
/

