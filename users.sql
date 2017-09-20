--displays information about when users were created and whether their account is locked
SELECT
username
,account_status
,lock_date
,created
FROM dba_users
ORDER BY username;