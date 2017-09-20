SET SERVEROUTPUT ON SIZE 1000000
CALL DBMS_JAVA.SET_OUTPUT(1000000);
TRUNCATE TABLE KA10K.SYSSPACE;


DECLARE
  l_output DBMS_OUTPUT.chararr;
  l_lines  INTEGER := 1000;
BEGIN
  DBMS_OUTPUT.enable(1000000);
  DBMS_JAVA.set_output(1000000);
  
  host_command('/bin/df -h');
  
  DBMS_OUTPUT.get_lines(l_output, l_lines);

  FOR i IN 2 .. l_lines LOOP

  --INSERT INTO KA10K.SYSSPACE (message) VALUES KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))); commit;
  INSERT INTO KA10K.SYSSPACE (user_,size_,used,avail,usepct,mounted) VALUES
  (
  SUBSTR(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), 0, INSTR(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))),' ')-1),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 2),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 3),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 4),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 5),
  regexp_substr(KA10K.crunch((SUBSTR(l_output(i), INSTR(l_output(i),':')+1, LENGTH(l_output(i))-1))), '[^ ]+', 1, 6)
  );
  
   commit;
      
  END LOOP;
  
 
  
END;
/

