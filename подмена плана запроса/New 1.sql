select rownum,sql_fulltext, sql_id, plan_hash_value from v$sql where sql_text like '%from t_abs_order_status ss%' order by last_active_time;
SELECT *  FROM dba_sql_plan_baselines WHERE sql_text LIKE '%from t_abs_order_status ss%';

--тормозной sql_id f32z8ca6p7ss3 plan_hash_value=2295548091
--образец sql_id=23fhsfpjq6txs plan_hash_value=1723383388


-- загрузка плана настроенного запроса
/*
declare
  l_sql_id_src varchar2(13)    :='23fhsfpjq6txs';   -- sql_id образца
  l_plan_hash_value_src number := 1723383388;       -- plan_hash_value образца
  l_sql_id_trg  varchar2(13)   :='f32z8ca6p7ss3';   -- sql_id настраиваемого запроса
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
*/




--удалть

/*
declare
  l_sql_plan_baseline varchar2(30) := 'SQL_PLAN_3tuvh9t9gakwfa4f638dc';
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
*/

--select sql_id, sql_fulltext,plan_hash_value   FROM V$SQL  WHERE sql_text LIKE '%(select /*+ index(ss)*/ 1 from t_abs_order_status ss%'; --fast  sql_id=23fhsfpjq6txs
--select sql_id, sql_fulltext,plan_hash_value  FROM V$SQL  WHERE sql_text LIKE '%(select 1 from t_abs_order_status ss%';    --slow sql_id 26b9qyqxtnqu2


--plan for fast  sql_id=23fhsfpjq6txs
/*
DECLARE
v_plans_dropped pls_integer;
BEGIN
v_plans_dropped:=DBMS_SPM.LOAD_PLANS_FROM_CURSOR_CACHE(sql_id=>'23fhsfpjq6txs');
END;
/
*/

--result SQL_HANDLE=SQL_3ceb704e52f54b8e PLAN_NAME=SQL_PLAN_3tuvh9t9gakwfa4f638dc

--дерьмовый запрос sql_id=26b9qyqxtnqu2 hash=2295548091

/*
DECLARE
v_plans_dropped pls_integer;
BEGIN
v_plans_dropped:=dbms_spm.load_plans_from_cursor_cache(sql_id => '26b9qyqxtnqu2',plan_hash_value => 2295548091, sql_handle => 'SQL_3ceb704e52f54b8e');
END;
/
*/