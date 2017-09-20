CREATE VIEW sys.x$_kglob AS SELECT * FROM sys.x$kglob;
GRANT SELECT ON sys.x$_kglob TO sm;
CREATE SYNONYM sm.x$kglob FOR sys.x$_kglob;
