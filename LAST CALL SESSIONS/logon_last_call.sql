--select * from v$session
descr v$session

/*
LOGON_TIME
LAST_CALL_ET (sec)
SID
SERIAL#
STATUS
TERMINAL
PROGRAM
MACHINE
MODULE
ACTION
CLIENT_INFO
STATE
*/


select TO_CHAR(sysdate-28800/(24*60*60),'DD-MM-YYYY HH24:MI:SS') as eigth_hours, TO_CHAR(LOGON_TIME, 'DD-MM-YYYY HH24:MI:SS') as LOGON_TIME, TO_CHAR(sysdate-LAST_CALL_ET/(24*60*60) , 'DD-MM-YYYY HH24:MI:SS') as LAST_CALL_CHAR,sysdate-LAST_CALL_ET/(24*60*60) as LAST_CALL, LAST_CALL_ET, SID, SERIAL#,STATUS, STATE,TERMINAL, PROGRAM,  MACHINE,MODULE,ACTION,CLIENT_INFO
 from  v$session
 where status='INACTIVE'
  and 
 (machine like 'radius%' or machine='sd5vp43-ur')
 and LAST_CALL_ET >=28800 -- 8 hours = 8*60*60 sec
  order by LAST_CALL asc;
 
 
--select distinct machine from v$session where machine like 'radius%' or machine='sd5vp43-ur' ;


select  ROW_NUMBER() OVER (ORDER BY SID), SID, SERIAL# from v$session where status='INACTIVE' and (machine like 'radius%' or machine='sd5vp43-ur') and LAST_CALL_ET >=28800;