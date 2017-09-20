--show parameters dispa
ALTER SYSTEM SET SHARED_SERVERS = 0 scope=both;
ALTER SYSTEM SET MAX_SHARED_SERVERS = 0 scope=both;
ALTER SYSTEM SET DISPATCHERS = ''  scope=both;