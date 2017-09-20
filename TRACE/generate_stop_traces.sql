--SELECT 'sys.dbms_system.set_ev(' || sid || ', ' || serial# || ', 10046, 0, '''');' FROM v$SESSION WHERE module='CLOSE_PERIOD_WHERE';

begin
sys.dbms_system.set_ev(118, 56903, 10046, 0, '');                               
sys.dbms_system.set_ev(455, 4173, 10046, 0, '');                                
sys.dbms_system.set_ev(493, 5012, 10046, 0, '');                                
sys.dbms_system.set_ev(572, 59263, 10046, 0, '');                               
sys.dbms_system.set_ev(732, 31326, 10046, 0, '');                               
sys.dbms_system.set_ev(930, 15474, 10046, 0, '');                               
sys.dbms_system.set_ev(1132, 41609, 10046, 0, '');                              
sys.dbms_system.set_ev(1142, 65204, 10046, 0, '');                              
sys.dbms_system.set_ev(2165, 13033, 10046, 0, '');                              
sys.dbms_system.set_ev(2255, 59205, 10046, 0, '');                              
sys.dbms_system.set_ev(2303, 38439, 10046, 0, '');
end;
/