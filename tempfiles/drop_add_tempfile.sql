--select wm_concat(n_patch) from sip_w.bst_patch_applying;
 --select file_name from dba_temp_files;
 
 
 --alter database tempfile '/db/sip_kz/db1/temp.300.885339463' drop;
 --alter tablespace temp add tempfile  '/db/sip_kz/db1/temp.300.885339463' REUSE;
