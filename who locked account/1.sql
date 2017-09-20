select USERID,
userhost,
decode(returncode,01017,'Login Error','Acount Locked') "ISSUE",
spare1,
TO_CHAR ( CAST(
( FROM_TZ(
CAST(
TO_DATE(
TO_CHAR( ntimestamp# , 'DD/MM/YYYY HH:MI PM'),
'DD/MM/YYYY HH:MI PM'
)
AS TIMESTAMP
) ,
'GMT'
) AT LOCAL
)
AS TIMESTAMP)
, 'DD/MM/YYYY HH:MI PM') "Time",
sqltext,
comment$text from SYS.aud$
where
 --(
  returncode=1017
 --OR returncode=28000  )
 and ntimestamp#>  cast(sysdate-1/24*3 - interval '1' minute as timestamp) 
 and userid='VOLGA_USER_'
order by ntimestamp# desc ; 

--1017 wrong pass
--28000 acc is locked