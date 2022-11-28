@echo off

:loadchat
echo Welcome to my chat server!
echo +-----------------------------------+
echo ^|  Contributor: Sevada ^| @Sevada797 ^|
echo ^|  Created with batch, php and curl ^|
echo ^|  to reload the chat press ^<enter^> ^|
echo ^|  to exit the chat type 'exit!'    ^|
echo +-----------------------------------+
curl https://somechat797.000webhostapp.com/chat4cmd.txt
set /p msg="Type your message here: "
if ("%msg%"=="") (goto loadchat)
if (%msg%=="!exit") (
exit
) else (
curl --get --data-urlencode "msg=anonymous: %msg%" https://somechat797.000webhostapp.com/index.php
goto loadchat
)
EXIT /B 0
goto loadchat
