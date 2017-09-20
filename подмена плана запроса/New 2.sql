--сформировать план запроса
explain plan for select  a.tl_id, a.tl_user_name, a.tl_date, p.ibs_phone, p.ibs_user_id,

  p.ibs_set_id

from

abs_testlink@abs a inner join ibs_abs_phones@abs p on p.abs_user_name =

  a.tl_user_name and a.tl_sl_type='TESTLINK' inner join n_order_lists l on

  l.num_list = p.ibs_set_id where a.tl_run_date is null and p.ibs_date_to is

  null    and exists (select 1 from t_abs_order_status ss                

  where l.num_list = ss.p_num_list                   and ss.p_status = 'OK')

  and not exists (select  1 from T_IP_CLOSE_ORDER t where t.num_list=

  l.num_list) union all select  a.tl_id, a.tl_user_name, a.tl_date,

  p.ibs_phone, p.ibs_user_id, p.ibs_set_id from abs_testlink@abs a inner join

  ibs_abs_phones@abs p on p.abs_login = a.tl_logname and a.tl_sl_type in

  (select column_value from

  table(pgAI_Settings.fGetAllCSetValue('TDO.StartIP.Sl_type_list'))) inner

  join n_order_lists l on l.num_list = p.ibs_set_id where a.tl_run_date is

  null and p.ibs_date_to is null    and exists (select 1 from

  t_abs_order_status ss                 where l.num_list = ss.p_num_list     

               and ss.p_status = 'OK') and not exists (select 1 from

  T_IP_CLOSE_ORDER t where t.num_list=l.num_list);
  
  
--Посмотреть план запроса и хэш  
 select * from table(dbms_xplan.display(null,null,'basic +note')); -- см. значение SQL plan baseline

--Plan hash value = 197507242