select systimestamp - INTERVAL '03:10' HOUR TO MINUTE  as CHECK_RIGHT_TIME from dual;

select USERID,userhost,decode(returncode,01017,'Login Error','Acount Locked') "ISSUE",spare1, TO_CHAR(ntimestamp# + interval '3' hour, 'DD-MON-YYYY HH24:MI:SSxFF'),
--TO_CHAR ( CAST(( FROM_TZ(CAST(TO_DATE(TO_CHAR( ntimestamp# , 'DD/MM/YYYY HH:MI PM'),'DD/MM/YYYY HH:MI PM')AS TIMESTAMP) ,'GMT') AT LOCAL)AS TIMESTAMP), 'DD/MM/YYYY HH:MI PM') "Time",
sqltext,comment$text from SYS.aud$
where
 --(
  returncode=1017
 --OR returncode=28000  )
 and ntimestamp#>  cast(sysdate-1/24*3 - interval '1' minute as timestamp)
 -- and  ntimestamp#> systimestamp - INTERVAL '3' HOUR
 --and  ntimestamp#> systimestamp - INTERVAL '03:10' HOUR TO MINUTE 
 and userid='VOLGA_USER_'
order by ntimestamp# desc ; 