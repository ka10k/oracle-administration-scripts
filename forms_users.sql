truncate  table aud$;

select 
SUBSTR(module,0, INSTR( module, 'termsrv')-1) a,
substr (SUBSTR(module,0, INSTR( module, 'termsrv')-1), 8, length(SUBSTR(module,0, INSTR( module, 'termsrv')-1))-8) b,
client_info,
 LENGTH(module),
 INSTR( module, 'termsrv')
  from v$session where machine like '%SIPRM-F0%';