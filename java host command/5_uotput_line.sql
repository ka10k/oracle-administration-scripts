SET SERVEROUTPUT ON SIZE 1000000
CALL DBMS_JAVA.SET_OUTPUT(1000000);

DECLARE
  l_output DBMS_OUTPUT.chararr;
  l_lines  INTEGER := 1000;
BEGIN
  DBMS_OUTPUT.enable(1000000);
  DBMS_JAVA.set_output(1000000);

  
  --host_command('/bin/df -h');
  --host_command('/usr/bin/sar -u 1 3');
  --host_command('/usr/bin/free -m');
  --host_command('/usr/bin/free -g');
  

  DBMS_OUTPUT.get_lines(l_output, l_lines);

  FOR i IN 1 .. l_lines LOOP
    -- Do something with the line.
    -- Data in the collection - l_output(i)
    DBMS_OUTPUT.put_line(l_output(i));
  END LOOP;
END;
/