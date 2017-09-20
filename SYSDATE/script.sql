select to_char(sysdate+5/24,'hh:mi:ss dd-mm-yyyy') from dual



/*
Now    SYSDATE
Tomorow/ next day    SYSDATE + 1
Seven days from now    SYSDATE + 7
One hour from now    SYSDATE + 1/24
Three hours from now    SYSDATE + 3/24
An half hour from now    SYSDATE + 1/48
10 minutes from now    SYSDATE + 10/1440
30 seconds from now    SYSDATE + 30/86400
Tomorrow at 12 midnight    TRUNC(SYSDATE + 1)
Tomorrow at 8 AM    TRUNC(SYSDATE + 1) + 8/24
Next Monday at 12:00 noon    NEXT_DAY(TRUNC(SYSDATE), 'MONDAY') + 12/24
First day of the month at 12 midnight    TRUNC(LAST_DAY(SYSDATE ) + 1)
The next Monday, Wednesday or Friday at 9 a.m    TRUNC(LEAST(NEXT_DAY(sysdate,''MONDAY' ' ),NEXT_DAY(sysdate,''WEDNESDAY''), NEXT_DAY(sysdate,''FRIDAY'' ))) + (9/24)
*/