CREATE VIEW x$_ktsso AS SELECT * FROM x$ktsso;
GRANT SELECT ON x$_ktsso TO sm;
CREATE SYNONYM sm.x$ktsso FOR sys.X$_ktsso;
