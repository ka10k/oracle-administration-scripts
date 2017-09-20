set pagesize 1000;

SELECT 
    'GRANT '      || 
    tp.privilege  || 
    ' ON '        || 
    tp.owner      ||
    '.'           || 
    tp.table_name ||
    ' TO '        || 
    tp.grantee    || 
    ';' cmd
FROM dba_tab_privs tp 
    WHERE tp.grantee = 'SIP_W'
 
UNION
 
SELECT 
    'GRANT '     || 
    sp.privilege || 
    ' TO '       || 
    sp.grantee   || 
    DECODE(sp.admin_option, 'YES', ' WITH ADMIN OPTION;', ';')
FROM dba_sys_privs sp 
    WHERE sp.grantee = 'SIP_W'
 
UNION
 
SELECT 
    'GRANT '        || 
    rp.granted_role || 
    ' TO '          || 
    rp.grantee      || 
    DECODE(rp.admin_option, 'YES', ' WITH ADMIN OPTION;', ';')
FROM dba_role_privs rp 
    WHERE rp.grantee = 'SIP_W'
/