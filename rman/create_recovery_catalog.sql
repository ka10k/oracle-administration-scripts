--create a table space to house the recovery catalog schema.
/*
create tablespace rec_catalog11g
datafile '/u02/oradata/orcl/rec_catalog11g2.dbf'
size 10M autoextend on
extent management local uniform size 1M
*/

--create the recovery catalog owner. The user SYS cannot be the owner of the recovery catalog
/*
create user rcat identified by rcat
default tablespace rec_catalog11g
quota unlimited on rec_catalog11g;
grant recovery_catalog_owner to rcat;
*/

--The role RECOVERY_CATALOG_OWNER has all of the privileges need to query and maintain the recovery catalog.

--$rman target / catalog rcat@orcl
--RMAN> create catalog tablespace rec_catalog11g;
--RMAN> register database;
