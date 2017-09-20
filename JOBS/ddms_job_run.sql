alter session set current_schema=SIP;

BEGIN
  dbms_job.run(885);
  dbms_job.run(1425);
  dbms_job.run(1445);
  dbms_job.run(1446);
  dbms_job.run(1466);
  dbms_job.run(1625);
END;
--exec dbms_job.run(885,true);
--exec dbms_job.run(1425,true);