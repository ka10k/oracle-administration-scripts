--изменить имя схемына 99,127,128 строке   l_schema VARCHAR2(30) := 'SIP'; -- Adjust as required.

CREATE OR REPLACE AND COMPILE JAVA SOURCE NAMED "Host" AS
import java.io.*;
public class Host {
  public static void executeCommand(String command) {
    try {
      String[] finalCommand;
      if (isWindows()) {
        finalCommand = new String[4];
        // Use the appropriate path for your windows version.
        //finalCommand[0] = "C:\\winnt\\system32\\cmd.exe";    // Windows NT/2000
        finalCommand[0] = "C:\\windows\\system32\\cmd.exe";    // Windows XP/2003
        //finalCommand[0] = "C:\\windows\\syswow64\\cmd.exe";  // Windows 64-bit
        finalCommand[1] = "/y";
        finalCommand[2] = "/c";
        finalCommand[3] = command;
      }
      else {
        finalCommand = new String[3];
        finalCommand[0] = "/bin/bash";
        finalCommand[1] = "-c";
        finalCommand[2] = command;
      }
  
      final Process pr = Runtime.getRuntime().exec(finalCommand);
      pr.waitFor();

      new Thread(new Runnable(){
        public void run() {
          BufferedReader br_in = null;
          try {
            br_in = new BufferedReader(new InputStreamReader(pr.getInputStream()));
            String buff = null;
            while ((buff = br_in.readLine()) != null) {
              System.out.println("Process out :" + buff);
              try {Thread.sleep(100); } catch(Exception e) {}
            }
            br_in.close();
          }
          catch (IOException ioe) {
            System.out.println("Exception caught printing process output.");
            ioe.printStackTrace();
          }
          finally {
            try {
              br_in.close();
            } catch (Exception ex) {}
          }
        }
      }).start();
  
      new Thread(new Runnable(){
        public void run() {
          BufferedReader br_err = null;
          try {
            br_err = new BufferedReader(new InputStreamReader(pr.getErrorStream()));
            String buff = null;
            while ((buff = br_err.readLine()) != null) {
              System.out.println("Process err :" + buff);
              try {Thread.sleep(100); } catch(Exception e) {}
            }
            br_err.close();
          }
          catch (IOException ioe) {
            System.out.println("Exception caught printing process error.");
            ioe.printStackTrace();
          }
          finally {
            try {
              br_err.close();
            } catch (Exception ex) {}
          }
        }
      }).start();
    }
    catch (Exception ex) {
      System.out.println(ex.getLocalizedMessage());
    }
  }
  
  public static boolean isWindows() {
    if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1)
      return true;
    else
      return false;
  }

};
/

CREATE OR REPLACE PROCEDURE host_command (p_command  IN  VARCHAR2)
AS LANGUAGE JAVA 
NAME 'Host.executeCommand (java.lang.String)';
/


DECLARE
  l_schema VARCHAR2(30) := 'SIP_W'; -- Adjust as required.
BEGIN
  DBMS_JAVA.grant_permission(l_schema, 'java.io.FilePermission', '<<ALL FILES>>', 'read ,write, execute, delete');
  DBMS_JAVA.grant_permission(l_schema, 'SYS:java.lang.RuntimePermission', 'writeFileDescriptor', '');
  DBMS_JAVA.grant_permission(l_schema, 'SYS:java.lang.RuntimePermission', 'readFileDescriptor', '');
END;
/


CREATE OR REPLACE PROCEDURE php_start
as
begin
  host_command (p_command => '/home/oracle/start.sh');
end;


CREATE OR REPLACE PROCEDURE php_stop
as
begin
  host_command (p_command => '/home/oracle/stop.sh');
end;



CREATE PUBLIC SYNONYM AOKUNEV_PHP_START FOR SYS.php_start;
CREATE PUBLIC SYNONYM AOKUNEV_PHP_STOP FOR SYS.php_stop;


grant execute on AOKUNEV_PHP_START to SIP_W;
grant execute on AOKUNEV_PHP_STOP to SIP_W;
/

commit;




