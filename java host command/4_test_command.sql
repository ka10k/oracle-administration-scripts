SET SERVEROUTPUT ON SIZE 1000000
CALL DBMS_JAVA.SET_OUTPUT(1000000);

BEGIN
  --host_command (p_command => 'move C:\test1.txt C:\test2.txt');
  --host_command (p_command => '/bin/mv /home/oracle/test1.txt /home/oracle/test2.txt');
  host_command (p_command => '/bin/df -h');
END;
/