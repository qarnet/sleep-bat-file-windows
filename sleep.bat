ECHO In how many minutes do you want your PC to fall asleep
@echo off
set /p sleep_time="Minutes: "
ECHO Your PC will go to sleep in %sleep_time% minutes
set /A var=%sleep_time% * 60

TIMEOUT /t %var%
rundll32.exe powrprof.dll, SetSuspendState Sleep
