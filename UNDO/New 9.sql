--How often and when does "Snapshot too old" (ORA-01555) occur?
select to_char(begin_time,'YYYY-MM-DD HH24:MI:SS') "Begin",
to_char(end_time,'YYYY-MM-DD HH24:MI:SS') "End ",
undoblks "UndoBlocks",
SSOLDERRCNT "ORA-1555"
from V$UNDOSTAT
where SSOLDERRCNT > 0;


--When and how often was the undo-tablespace too small?
select to_char(begin_time,'YYYY-MM-DD HH24:MI:SS') "Begin",
to_char(end_time,'YYYY-MM-DD HH24:MI:SS') "End ",
undoblks "UndoBlocks",
nospaceerrcnt "Space Err"
from V$UNDOSTAT
where nospaceerrcnt > 0;


Select
To_Char(Begin_Time,'DD-MM-YYYY HH24:MI') Begin_Time
, To_Char(End_Time,'DD-MM-YYYY HH24:MI') End_Time
, UndoTSN
, UndoBLKS
, TxnCount
, MAXQUERYLEN
, MAXCONCURRENCY
, UNXPSTEALCNT
, UNXPBLKRELCNT
, UNXPBLKREUCNT
, EXPSTEALCNT
, EXPBLKRELCNT
, EXPBLKREUCNT
, SSOLDERRCNT
, NOSPACEERRCNT
From V$UNDOSTAT
Order By UndoBLKS;


Select
To_Char(Begin_Time,'DD-MM-YYYY HH24:MI') Begin_Time
, To_Char(End_Time,'DD-MM-YYYY HH24:MI') End_Time
, UndoTSN
, UndoBLKS
, TxnCount
, MAXQUERYLEN
, MAXCONCURRENCY
, UNXPSTEALCNT
, UNXPBLKRELCNT
, UNXPBLKREUCNT
, EXPSTEALCNT
, EXPBLKRELCNT
, EXPBLKREUCNT
, SSOLDERRCNT
, NOSPACEERRCNT
From V$UNDOSTAT
Order By MAXQUERYLEN;