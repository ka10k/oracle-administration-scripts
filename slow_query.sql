select  a.tl_id, a.tl_user_name, a.tl_date, p.ibs_phone, p.ibs_user_id,  p.ibs_set_id from

abs_testlink@abs a inner join ibs_abs_phones@abs p on p.abs_user_name =

  a.tl_user_name and a.tl_sl_type='TESTLINK' inner join n_order_lists l on

  l.num_list = p.ibs_set_id where a.tl_run_date is null and p.ibs_date_to is

  null    and exists (select /*+ index(ss)*/ 1 from t_abs_order_status ss                

  where l.num_list = ss.p_num_list                   and ss.p_status = 'OK')

  and not exists (select  1 from T_IP_CLOSE_ORDER t where t.num_list=

  l.num_list) union all select  a.tl_id, a.tl_user_name, a.tl_date,

  p.ibs_phone, p.ibs_user_id, p.ibs_set_id from abs_testlink@abs a inner join

  ibs_abs_phones@abs p on p.abs_login = a.tl_logname and a.tl_sl_type in

  (select column_value from

  table(pgAI_Settings.fGetAllCSetValue('TDO.StartIP.Sl_type_list'))) inner

  join n_order_lists l on l.num_list = p.ibs_set_id where a.tl_run_date is

  null and p.ibs_date_to is null    and exists (select /*+ index(ss)*/ 1 from

  t_abs_order_status ss                 where l.num_list = ss.p_num_list     

               and ss.p_status = 'OK') and not exists (select 1 from

  T_IP_CLOSE_ORDER t where t.num_list=l.num_list)

  
  
  
  -- select al_dblink from t_abs_links; --дб линк для подстановки
  
  a abs_testlink
  p ibs_abs_phones
  
  
  индексы
  
  abs_testlink.tl_sl_type
  abs_testlink.tl_user_name
  abs_testlink.tl_run_date
  abs_testlink.tl_logname
  
  ibs_abs_phones.abs_user_name (был)
  ibs_abs_phones.ibs_set_id (был)
  ibs_abs_phones.ibs_date_to
  ibs_abs_phones.abs_login
  
  
  CREATE INDEX SIP_IBS.ABS_TESTLINK_TL_SL_TYPE ON SIP_IBS.ABS_TESTLINK
(TL_SL_TYPE)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
/

CREATE INDEX SIP_IBS.ABS_TESTLINK_TL_USER_NAME ON SIP_IBS.ABS_TESTLINK
(TL_USER_NAME)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
/

CREATE INDEX SIP_IBS.ABS_TESTLINK_TL_RUN_DATE ON SIP_IBS.ABS_TESTLINK
(TL_RUN_DATE)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
/


CREATE INDEX SIP_IBS.ABS_TESTLINK_TL_LOGNAME ON SIP_IBS.ABS_TESTLINK
(TL_LOGNAME)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
/


CREATE INDEX SIP_IBS.IBS_ABS_PHONES_ABS_LOGIN ON SIP_IBS.IBS_ABS_PHONES
(ABS_LOGIN)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
/


CREATE INDEX SIP_IBS.IBS_ABS_PHONES_IBS_DATE_TO ON SIP_IBS.IBS_ABS_PHONES
(IBS_DATE_TO)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL
COMPUTE STATISTICS
/
