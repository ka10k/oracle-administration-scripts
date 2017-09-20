 CREATE OR REPLACE TRIGGER "SYS"."SYS$_000002"
  AFTER DDL
    ON DATABASE
DECLARE
  sql_text     CLOB;
  sql_text_tab ora_name_list_t;
  r            NUMBER;
  PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
  r := ora_sql_txt(sql_text_tab);
  FOR cur IN sql_text_tab.FIRST .. sql_text_tab.LAST
  LOOP
    sql_text := sql_text || sql_text_tab(cur);
  END LOOP;
  INSERT INTO cer_log.audit_ddl (
    ddl_type, ddl_text, ddl_date, DDL_user, ddl_host
  ) (SELECT ora_dict_obj_type,
            sql_text,
            SYSDATE,
            SYS_CONTEXT('USERENV', 'os_user'),
            SYS_CONTEXT('USERENV', 'host')
      FROM dual);
  COMMIT;
END;

ALTER TRIGGER "SYS"."SYS$_000002" ENABLE
