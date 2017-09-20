SELECT /*+  USE_CONCAT */ distinct
                                   sql_text,
                                   address,
                                   0 piece,
                                   hash_value
                              FROM v$sql