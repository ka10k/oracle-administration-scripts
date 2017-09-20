
select l1.sid || ' IS BLOCKING ' || l2.sid from v$lock l1, v$lock l2 where l1.block =1 and l2.request > 0 and l1.id1=l2.id1 and l1.id2=l2.id2 and l2.CTIME>600;


--select * from  v$lock
--descr v$lock


select * from  v$lock where sid=241;
select * from  v$lock where sid=587;