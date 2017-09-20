SELECT DISTINCT /*+ORDERED*/
                                sql.sql_text,
                                sql.address,
                                sql.hash_value,
                                0 piece,
                                s.sid
                           FROM v$session s,
                                v$sql sql
                          WHERE sql.address=s.sql_address
                            AND sql.hash_value=s.sql_hash_value