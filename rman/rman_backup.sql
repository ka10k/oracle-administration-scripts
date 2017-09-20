RMAN> configure retention policy to recovery window of 2 days;
RMAN> configure controlfile autobackup on;
RMAN> configure channel device type disk format '/u02/backup/Backup%d_DB_%U_%S_%P';



Take database full backup. The full database backup should be taken first time. Afterwards you can use Incremental, Full or archivelog backup depend on your backup policy as well as space available.

C:\Users\rajjha>rman target / catalog rcat/password@CATDB
RMAN> run{crosscheck archivelog all;backup database plus archivelog;delete noprompt obsolete;}

RMAN> exit
Now the RMAN setup is completed successfully. Here is the info about RMAN.
Primary DB = MYDB
Catalog DB = CATDB
RMAN Backup location = D:\oraclebackup.
Now take the full backup. Every day run the below script that backup the new archive log files. You may run through scheduler

C:\Users\rajjha>rman target / catalog rcat@CATDB
RMAN> run{
delete noprompt obsolete;
backup archivelog all;
}

RMAN> exit

Congratulation your recover database configuration completed as well as full backup performed on database.

run {set until scn 2970700


run{set until time "to_date('2014-04-07:14:10:00', 'yyyy-mm-dd:hh24:mi:ss')";restore database;recover database;};