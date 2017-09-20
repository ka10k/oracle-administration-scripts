--create view xbh as select * from sys.x$bh;
--grant select on xbh to SIP_W;

select decode(state, 0, 'Free', 1, 'Modified', 2, 'Not Modified',
             3, 'Being    Read', 'Other') State, count(*) cnt
from sys.x$bh group by state;


--Если число блоков в состоянии Free велико, можно сократить буфер. Если после старта базы оно напротив, невелико, то возможно буферный кэш стоит и увеличить.
select decode(state,0,'FREE',1,decode(lrba_seq,0,'AVAILABLE',
              'BEING USED'),3,'BEING USED',state) "BLOCK STATUS",count(*)
  from x$bh
  group by decode(state,0,'FREE',1,decode(lrba_seq,0,'AVAILABLE',
              'BEING USED'),3,'BEING USED',state);
              
--Количество блоков в разрезе объектов:              
select a.owner,a.object_type,a.object_name,count(*) buffers,round((count(*)/(select count(*) from v$bh))*100) buffer_percent
from dba_objects a,v$bh b
where a.object_id=b.objd and a.owner not in ('SYS','SYSTEM')
group by a.owner,a.object_type,a.object_name
order by 5 desc;              


--Мониторинг использования кєшей разного размера и разного предназначения.
select Object_Name, Object_Type, COUNT(*) Num_Buff 
from X$BH A, SYS.DBA_OBJECTS B 
where A.Obj = B.Object_ID group by Object_Name, Object_Type;


--Перечень таблиц, чьи блоки читались в ходе FTS (полного сканирования таблицы, то есть индексы не использовались
select DISTINCT   substr(obj.object_name, 1,30)  object,
  obj.owner                      owner
from 
  dba_objects obj,
  x$bh        xbh
where 
  xbh.obj         = obj.data_object_id and 
  obj.object_type ='TABLE'             and 
  bitand(xbh.flag,524288)>0            and 
  obj.owner not in ('SYS','SYSTEM','SYSMAN','DBSNMP');
  
  --Один и тот же блок считывается с диска несколько раз?
  SELECT  bh.OBJD,file#,block#,count(*)
FROM DBA_OBJECTS o, V$BH bh 
WHERE o.object_id = bh.objd --and bh.status<>'cr'
group by bh.OBJD, bh.file#, bh.BLOCK#
having count(*) >1;

