select count(*) from dba_ind_partitions where index_owner in ('SIP_SM') and (status<>'USABLE' or tablespace_name<>'USERS2' or logging<>'YES');
select count(*) from dba_ind_partitions where index_owner in ('SIP_SM');
