select * from dba_lobs where segment_name='SYS_LOB0002475300C00003$$';-- where owner ='&lobowner'

--select to_char(XML_CONTENT) from PN.AI_SYNC_OUT_LOG where id='3180828558';

select DBMS_LOB.SUBSTR(XML_CONTENT,4000,1) CLOB_COL from PN.AI_SYNC_OUT_LOG where id='3180828558';