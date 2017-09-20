 /* триггер мониторинга подключаемых клиентов */
 CREATE OR REPLACE TRIGGER "SYS"."SYS$_000004"
  AFTER LOGON ON DATABASE
BEGIN
 if (sys_context('USERENV','SESSION_USER')not in
   ('SYS','SYSMAN','DBSNMP','SYSTEM'))  then
   begin
  INSERT INTO cerebro.loging (
    datatime, loging, ip, osname, loginos, modul
  ) (SELECT sysdate,
            sys_context('USERENV','SESSION_USER'),
            sys_context('USERENV','IP_ADDRESS'),
            sys_context('USERENV','SERVER_HOST'),
            SYS_CONTEXT('USERENV','os_user'),
            SYS_CONTEXT('USERENV','MODULE')
      FROM dual);
    end;
   /*
    А если нужно переключить схему кому-то
     if sys_context('USERENV','SESSION_USER')not in
   ('SYS','SYSMAN','DBSNMP','SYSTEM'))  then
   begin
    ALTER SESSION SET CURRENT_SCHEMA='NEW Schema';
   end;
   */
   end if;
END;

ALTER TRIGGER "SYS"."SYS$_000004" ENABLE
