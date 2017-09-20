--insert into sip_w.drop_log values(sysdate,'test тест');
--truncate table sip_w.drop_log;
select TO_CHAR(dttm, 'DD-MM-YYYY HH24:MI:SS'),message from sip_w.drop_log order by 1 desc;