--alter session set current_schema=SYS;

--CREATE VIEW sipkz_part_view AS 
--select table_name,partition_name,num_rows from dba_tab_partitions where table_owner='SIP_KZ';

drop synonym sip_kz.part_view;
create synonym sip_kz.part_view for sipkz_part_view;