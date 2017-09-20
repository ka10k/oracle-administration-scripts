Подмена плана запроса в Oracle
Воскресенье, 29 Июня 2014
https://antipalivo.ru/blog/2014/06/29/podmiena-plana-zaprosa-v-oracle/

-- запрос для настройки
delete from my_table t where t.id in (select * from table(:ids)); -- sql_id = 'ffdpvgvm52bk1'
1
2
-- запрос-образец
delete from my_table t where t.id in (select /*+cardinality (tt 2)*/* from table(:ids) tt); -- sql_id = 'byqgz46kspy5y'
1
2
3
4
5
-- Определяем параметры настраиваемого запроса и запроса-образца
select sql_text, sql_id, plan_hash_value
  from v$sql
 where sql_text like 'delete from my_table%'
 order by last_active_time;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
-- загрузка плана настроенного запроса
declare
  l_sql_id_src varchar2(13)    :='byqgz46kspy5y';   -- sql_id образца
  l_plan_hash_value_src number := 3996156453;       -- plan_hash_value образца
  l_sql_id_trg  varchar2(13)   :='ffdpvgvm52bk1';   -- sql_id настраиваемого запроса
  l_sql_text_trg clob;
  l_res number;
begin
  -- текст запроса для настройки
  select a.sql_fulltext into l_sql_text_trg
    from v$sqlarea a
   where a.sql_id = l_sql_id_trg;
  -- загрузка плана и создание SQL plan baseline
  l_res := dbms_spm.load_plans_from_cursor_cache(
              sql_id => l_sql_id_src,
              plan_hash_value => l_plan_hash_value_src,
              sql_text => l_sql_text_trg);
  dbms_output.put_line(l_res);
end;
1
2
3
-- проверка плана
explain plan for delete from my_table t where t.id in (select * from table(:ids));
select * from table(dbms_xplan.display(null,null,'basic +note')); -- см. значение SQL plan baseline
1
2
3
4
5
6
7
-- Проверка применения baseline к запросу (применяется со второго выполнения)
delete from my_table t where t.id in (select * from table(:ids));

select sql_text, sql_id, plan_hash_value, sql_plan_baseline
  from v$sql
 where sql_text like 'delete from my_table%'
 order by last_active_time desc;
1
2
3
4
5
6
7
8
9
10
11
12
13
-- Удаление baseline
declare
  l_sql_plan_baseline varchar2(30) := 'SQL_PLAN_7aw31t98uxss09b2320b8';
  l_sql_handle varchar2(30);
  l_res number;
begin
  select sql_handle
    into l_sql_handle
    from dba_sql_plan_baselines b
   where plan_name = l_sql_plan_baseline;
  l_res := dbms_spm.drop_sql_plan_baseline(sql_handle => l_sql_handle);
  dbms_output.put_line(l_res);
end;