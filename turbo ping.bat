@echo off
color 06

:: ASCII Art Logo for Turbo Ping
ECHO.
ECHO  #####  ####  ####    ###    ####      #####   O  #     #    # # # 
ECHO    #    #  #  #   #   #   #  #   #    #     #  #  # #   #   #     #
ECHO    #    #  #  ####    ####   #   #    ######   #  #  #  #    # # ##
ECHO    #    #  #  #   #   #   #  #   #    #        #  #   # #         #
ECHO    #     ##   #   #   #####   ###     #        #  #     #   #     #
ECHO.                                                             #####
ECHO ---------------------------------------------------
ECHO V1.0 APLHA
ECHO Press any key to start the Wi-Fi toggle...
pause > nul

:START_LOOP
ECHO Turning Wi-Fi Off...
netsh interface set interface "Wi-Fi" admin=disable
timeout /t 9 /nobreak > nul
ECHO Turning Wi-Fi On...
netsh interface set interface "Wi-Fi" admin=enable
ECHO Wi-Fi toggle complete.
ECHO.
ECHO Press any key to toggle Wi-Fi again, or close this window to exit.
pause > nul
goto START_LOOP
