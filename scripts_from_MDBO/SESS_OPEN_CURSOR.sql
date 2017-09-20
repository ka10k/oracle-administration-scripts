SELECT DISTINCT /*+ ORDERED */
                                   /* This query retrieves all open SQL statements for a session
                                      when displaying, you need to join all SQL statements with
                                      the same address*/
                                   RAWTOHEX(s.address) address,
                                   s.sql_text,
                                   s.hash_value,
                                   0 piece,
                                   c.sid
                              FROM v$open_cursor c,
                                   v$sql s
                             WHERE c.hash_value= s.hash_value
                               AND c.address=s.address