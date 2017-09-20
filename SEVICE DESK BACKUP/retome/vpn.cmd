::ATTENTION!!!
::Configure variables before use

::VPN Connection parameters
SET vpn_connect=your_vpn_connection
SET vpn_login=your_login
SET vpn_password=your_password

::Set internal network IP
SET int_pptp=192.168.0.0
SET int_mask=255.255.255.0

::Set VPN IP network only part (without computer address and with the last dot!!!)
SET ext_pptp=192.168.100.

::Establish VPN connection
rasdial %vpn_connect% %vpn_login% %vpn_password%

::Extract IP of VPN interface from raw IPCONFIG output
for /F "tokens=1,2 delims=:" %%i in ('ipconfig^|findstr %ext_pptp%') do (

::add route with correct gateway
route add %int_pptp% mask %int_mask%%%j )