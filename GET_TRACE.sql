--exec sys.dbms_system.set_sql_trace_in_session(SID, serial#, true);
--exec sys.dbms_system.set_ev(SID, serial#, 10046, �������, '');



--��������� ����������� 12 ���, ��� ������� 10046 ������� 12

/*
begin
sys.dbms_system.set_ev(1923, 48335, 10046, 12, '');
end;
/
*/

--����������� ����������� ���������� - ���������� ������� 10046 � ������� �������:

begin
--sys.dbms_system.set_ev(sid, serial#, 10046, 0, '');
sys.dbms_system.set_ev(1923, 48335, 10046, 0, '');
end;
/


