--show parameters;
--select bytes from v$log; 
--select (block_size*file_size_blks)/1024 from v$controlfile;
--select * from v$log;
BEGIN
  WHILE( true )
  LOOP
    --NULL;
    --INSERT into KA10K.temp(MSG) values('abc');
    INSERT into KA10K.temp(MSG) values((select to_char(sysdate,'MONTH DD, YYYY, HH24:MI:SS') from dual));
    commit;
  END LOOP;
END;
/