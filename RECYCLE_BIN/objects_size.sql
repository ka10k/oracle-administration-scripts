select owner,object_name,original_name,operation,type,ts_name,createtime,droptime,partition_name,can_purge,round(space*(select value from v$parameter where name='db_block_size')/1024/1024/1024,2) GB from dba_recyclebin order by GB desc;
--purge dba_recyclebin; --очистка
--select round(sum(space*(select value from v$parameter where name='db_block_size')/1024/1024/1024),2)GB from dba_recyclebin; --объем корзины
--drop table x purge; --дроп без корзины
--FLASHBACK TABLE books TO BEFORE DROP; --восстановить из корзины books - original_name