--BEFORE GENERATE CHECK THAT PART_MAXVALUE EXISTS
/*
ALTER TABLE SIP_W. TB_SERVICES
 ADD
  PARTITION PART_MAXVALUE VALUES LESS THAN (MAXVALUE)
    LOGGING
    NOCOMPRESS
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                MAXSIZE          UNLIMITED
               )
/
*/


set serveroutput on
DECLARE
yyyy number(4) :=2015;
mm number(2);
n number(2);
nn number(2);
mm_char varchar(2);
part varchar(11);
maxdd varchar(6);
tbl varchar2(50):='SIP_W.TB_WTMPS_ARCHIVE';
--y number(2);

BEGIN


FOR y IN 1..9   --3 года

LOOP
   
     For m IN 1..12 --12 мес€цев
     
        LOOP
     
         IF (m < 10) THEN mm_char:='0'||TO_CHAR(m);
        ELSE mm_char:=TO_CHAR(m);
        END IF;
     
        part:=yyyy ||'_'||mm_char;
        --n:=m-1;
        --IF (n=0) THEN maxdd:='12'||TO_CHAR(
     
        n:=m+1;
        IF (n>12) THEN maxdd:='01'||TO_CHAR(yyyy+1); END IF;
        IF (n<10) and (n>1) THEN maxdd:='0'||TO_CHAR(n)||TO_CHAR(yyyy); END IF;
        IF (n>=10) and (n<=12) THEN maxdd:=TO_CHAR(n)||TO_CHAR(yyyy); END IF;
        DBMS_OUTPUT.PUT_LINE      ('alter table '|| tbl || ' split partition PART_MAXVALUE at (TO_DATE(''' || maxdd || ''',''mmyyyy'')) into (partition PART'||part||', partition PART_MAXVALUE) update global indexes;');
        --DBMS_OUTPUT.PUT_LINE      ('Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE;');
     
        mm:=mm+1;
     
        END LOOP;
     
yyyy:= yyyy+1;     
END LOOP;
END;
/