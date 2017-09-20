/*
таблицы по Казани
 Img    Table    Schema    Tablespace    Last Analyzed    Num Rows    Created    Last DDL
    ABONENT_JN    SIP_W        08.10.2015 21:39:16    1 355 786    14.10.2013 15:01:23    26.11.2015 9:38:42
    CT_POOLS_JN    SIP_W        18.03.2015 14:33:08    2 028 236    14.10.2013 15:01:23    26.11.2015 9:38:45
    TB_ACCOUNTS_JN    SIP_W        17.10.2015 9:18:22    64 722 191    14.10.2013 15:30:04    26.11.2015 9:38:53
    TB_BLOCKING_ARCHIVE    SIP_W        14.11.2015 13:50:44    240 009    14.10.2013 15:01:23    26.11.2015 9:38:54
    TB_INVOICES    SIP_W        24.11.2015 21:54:45    4 505 828    14.10.2013 15:30:04    26.11.2015 9:38:55
    TB_LDAP_TASKS    SIP_W        21.11.2015 9:04:35    1 072 828    14.10.2013 15:30:04    26.11.2015 9:38:56
    TB_OPTION_STATUS_JN    SIP_W        18.03.2015 14:47:15        14.10.2013 15:30:04    26.11.2015 9:38:56
    TB_SERVICES    SIP_W        21.11.2015 13:48:50    1 097 854 843    14.10.2013 15:30:04    26.11.2015 9:38:57
    TB_SERVICES_JN    SIP_W        16.11.2015 21:51:40    41 310 185    14.10.2013 15:30:04    26.11.2015 9:38:57
    TB_USER_SERV_ATTRS_JN    SIP_W        28.11.2015 9:08:44    7 281 597    14.10.2013 15:30:04    26.11.2015 9:38:59
    TB_WTMPS_ARCHIVE    SIP_W        26.11.2015 22:22:56    178 025 024    14.10.2013 15:30:05    26.11.2015 9:38:59
    TB_WTMPS_SESSION_CHARGES    SIP_W        29.11.2015 10:44:26    525 938 204    14.10.2013 15:30:05    26.11.2015 9:39:00
    TB_WTMPS_SESSIONS_ARCHIVE    SIP_W        29.11.2015 9:27:30    85 417 240    14.10.2013 15:30:05    26.11.2015 9:39:00
    VOIP_LOG_DETAIL    SIP_W        18.03.2015 15:28:55    82 578 511    14.10.2013 15:01:23    26.11.2015 9:39:07
    
    Img    Table    Schema    Tablespace    Last Analyzed    Num Rows    Created    Last DDL
    ABS_EXP_SERVICES    SIP_IBS        02.06.2015 21:37:11    3 106 217    15.10.2013 9:19:34    26.11.2015 9:38:40


*/

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

--до 2045 года
set serveroutput on
exec DBMS_OUTPUT.ENABLE(buffer_size => NULL);
--exec DBMS_OUTPUT.ENABLE(100000000);



DECLARE
yyyy number(4) :=2016; --год начала
--yyyy number(4) :=2025; --год начала
--yyyy number(4) :=2035; --год начала
mm number(2);
n number(2);
nn number(2);
mm_char varchar(2);
part varchar(11);
maxdd varchar(6);
tbl varchar2(50):='SIP_W.ABONENT_JN';
--y number(2);

BEGIN


FOR y IN 1..30   --30 лет

LOOP
   
     For m IN 1..12 --12 месяцев
     
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