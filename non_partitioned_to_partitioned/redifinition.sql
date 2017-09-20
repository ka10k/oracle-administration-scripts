 ------------------------------------------------------------------------------------
 --Переопределение TB_USER_SERV_ATTRS_JN с партицированной TB_USER_SERV_ATTRS_JN_2--
 --http://rafioracledba.blogspot.ru/2010/10/partitioning-non-partitioned-table.html-
 -----------------------------------------------------------------------------------
 
 
 --Gather statistics on the table:
 EXEC DBMS_STATS.gather_table_stats('SIP_W', 'TB_USER_SERV_ATTRS_JN', cascade => TRUE);
 --Create a Partitioned Interim Table: done TB_USER_SERV_ATTRS_JN_2
 --Start the Redefinition Process:
 
 --a) Check the redefinition is possible using the following command:
EXEC Dbms_Redefinition.can_redef_table('SIP_W', 'TB_USER_SERV_ATTRS_JN'); 
--b)If no errors are reported, start the redefintion using the following command:
 BEGIN 
DBMS_REDEFINITION.start_redef_table(uname => SIP_W,orig_table => 'TB_USER_SERV_ATTRS_JN',int_table => 'TB_USER_SERV_ATTRS_JN_2'); 
END; 
/ 

--Note: This operation can take quite some time to complete.

--c) Optionally synchronize new table with interim name before index creation:
BEGIN 
dbms_redefinition.sync_interim_table( 
uname => SIP_W, 
orig_table => 'TB_USER_SERV_ATTRS_JN', 
int_table => 'TB_USER_SERV_ATTRS_JN_2'); 
END; 
/ 

--Create Constraints and Indexes:

EXEC DBMS_STATS.gather_table_stats('SIP_W', 'TB_USER_SERV_ATTRS_JN_2', cascade => TRUE); 
 

--f) Complete the Redefintion Process

BEGIN 
dbms_redefinition.finish_redef_table( 
uname => SIP_W, 
orig_table => 'TB_USER_SERV_ATTRS_JN', 
int_table => 'TB_USER_SERV_ATTRS_JN_2'); 
END; 
/ 

--At this point the interim table has become the "real" table and their names have been switched in the name dictionary. 

DROP TABLE TB_USER_SERV_ATTRS_JN_2;


SELECT partitioned FROM dba_tables WHERE table_name = 'TB_USER_SERV_ATTRS_JN'; 
 