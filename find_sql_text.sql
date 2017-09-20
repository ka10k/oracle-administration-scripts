--5b5a3dc878wr1
select sql_text from v$sql where sql_id = '5b5a3dc878wr1';
SELECT
a.USERNAME, a.serial#, a.sid, a.STATUS, b.sql_text, b.SQL_ID
FROM V$SESSION a INNER JOIN V$SQLAREA b
ON a.SQL_ADDRESS= b.ADDRESS where B.SQL_ID = '5b5a3dc878wr1'