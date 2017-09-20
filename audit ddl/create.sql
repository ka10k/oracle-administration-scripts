drop table ddl_events;
CREATE TABLE ddl_events
( eventId          NUMBER(10,0),
  eventDate        DATE,
  oraLoginUser     VARCHAR2(30),
  oraDictObjName   VARCHAR2(30),
  oraDictObjOwner  VARCHAR2(30),
  oraDictObjType   VARCHAR2(30),
  oraSysEvent      VARCHAR2(30),
  machine          VARCHAR2(64),
  program          VARCHAR2(64),
  osuser           VARCHAR2(30) );

drop table ddl_events_sql; 
CREATE TABLE ddl_events_sql
( eventId          NUMBER(10,0),
  sqlLine          NUMBER(10,0),
  sqlText          VARCHAR2(4000) );
 
drop SEQUENCE dsq_ddlEvents;
CREATE SEQUENCE dsq_ddlEvents START WITH 1000; 
/



drop TRIGGER dtr_ddlEvents;
CREATE OR REPLACE TRIGGER dtr_ddlEvents
AFTER DDL ON DATABASE
DECLARE
 
  l_eventId    NUMBER(10,0);
  l_sqlText    ORA_NAME_LIST_T;
 
BEGIN
 
  SELECT dsq_ddlEvents.NEXTVAL INTO l_eventId FROM SYS.DUAL;
 
  INSERT INTO ddl_events
  ( SELECT l_eventId,
           SYSDATE,
           ORA_LOGIN_USER,
           ORA_DICT_OBJ_NAME,
           ORA_DICT_OBJ_OWNER,
           ORA_DICT_OBJ_TYPE,
           ORA_SYSEVENT,
           machine,
           program,
           osuser
      FROM SYS.DUAL,
           SYS.V_$SESSION
     WHERE SYS_CONTEXT('USERENV','SESSIONID' ) = audsid(+) );
 
 
  FOR l IN 1..ORA_SQL_TXT(l_sqlText) LOOP
    INSERT INTO ddl_events_sql
    ( eventId, sqlLine, sqlText )
    VALUES
    ( l_eventId, l, l_sqlText(l) );
  END LOOP;
 
END;
/


commit;
/