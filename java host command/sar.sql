SET SERVEROUTPUT ON SIZE 1000000
CALL DBMS_JAVA.SET_OUTPUT(1000000);
TRUNCATE TABLE KA10K.SYSCPU;

DECLARE
  l_output DBMS_OUTPUT.chararr;
  l_lines  INTEGER := 1000;
BEGIN
  DBMS_OUTPUT.enable(1000000);
  DBMS_JAVA.set_output(1000000);
  
  host_command('/usr/bin/sar -u 1 1');
  
  DBMS_OUTPUT.get_lines(l_output, l_lines);

  FOR i IN 5 .. l_lines LOOP
  --DBMS_OUTPUT.put_line(KA10K.crunch(l_output(i)));
  INSERT INTO KA10K.SYSCPU VALUES
  (  
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 3),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 4),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 5),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 6),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 7),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 8)
  );
  commit;
  END LOOP;
  
 
  
END;
/


