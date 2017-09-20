--select * from dba_scheduler_jobs where job_name='DROP_ARCH_DATA';

SELECT JOB_NAME, STATE FROM DBA_SCHEDULER_JOBS WHERE JOB_NAME = 'DROP_ARCH_DATA';
SELECT * FROM ALL_SCHEDULER_RUNNING_JOBS;
SELECT * FROM ALL_SCHEDULER_RUNNING_CHAINS WHERE JOB_NAME='DROP_ARCH_DATA';


/*
-------------Job status description----------------------------
https://docs.oracle.com/cd/B28359_01/server.111/b28310/schedadmin002.htm
---------------------------------------------------------------------------
disabled

The job is disabled.

scheduled

The job is scheduled to be executed.

running

The job is currently running.

completed

The job has completed, and is not scheduled to run again.

stopped

The job was scheduled to run once and was stopped while it was running.

broken

The job is broken.

failed

The job was scheduled to run once and failed.

retry scheduled

The job has failed at least once and a retry has been scheduled to be executed.

succeeded

The job was scheduled to run once and completed successfully.

chain_stalled

The job is of type chain and has no steps running, no steps scheduled to run, and no event steps waiting on an event, and the chain evaluation_interval is set to NULL. No progress will be made in the chain unless there is manual intervention.
*/