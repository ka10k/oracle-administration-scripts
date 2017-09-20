select to_number(action) from v$session where upper(module) like '%CLOSE%';
select status, count(status) from T_CLOSEPER_JRNL group by status ;


/*
    STATUS                                   COUNT(STATUS)
----------                                   -------------
         0-осталось                          225714
         1-обрабатывается сейчас             597
         2-обработаны                       1311897
*/

         