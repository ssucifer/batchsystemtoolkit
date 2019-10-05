
@echo off
mode 200
title BatchSystemToolkit
color 0A

:menu
cls
color 0A
echo.
echo  *----------------------------------------------*
echo  * BatchSystemToolkit ver 1.0.3                 *          
echo  *----------------------------------------------*
echo  * Developed by Marko Zlender                   *
echo  *----------------------------------------------*
echo  * Please check the manual before use !         *                                         
echo  *----------------------------------------------*
echo  * Write a number and press ENTER :             *  
echo  *----------------------------------------------*
echo.
echo  [1] Check disk for errors and repair         [8] Kill task
echo  [2] Check all drivers                        [9] Check internet connection via Google
echo  [3] IP configuration                         [10] System configuration                     
echo  [4] Schedule shutdown PC                     [11] Your MAC address
echo  [5] Schedule restart PC
echo  [6] Check system information
echo  [7] Check all running tasks
echo.
echo  [12] Exit                                    [13] MANUAL
echo.
echo.  
echo.
echo.
set /p input=">"
if "%input%" == "1" goto checkdisk
if "%input%" == "2" goto drivers
if "%input%" == "3" goto ip
if "%input%" == "4" goto shutdown
if "%input%" == "5" goto restart
if "%input%" == "6" goto system
if "%input%" == "7" goto tasks
if "%input%" == "8" goto killtasks
if "%input%" == "9" goto intconnection
if "%input%" == "10" goto sysconfig
if "%input%" == "11" goto macaddress
if "%input%" == "12" exit 
if "%input%" == "13" goto manual
goto menu   

:checkdisk

cls
echo.
echo  Checking disk
ping localhost -n 2 >nul
cls
echo.
echo  Checking disk ======
ping localhost -n 2 >nul
cls
echo.
echo  Checking disk ============
ping localhost -n 2 >nul
cls
echo.
echo  Checking disk ==================
chkdsk /scan
echo.
echo  If this didn't work you HAVE TO Run this program as Administrator !
echo  Do you wish to exit?
echo.
set /p input1="[y/n]?"
if "%input1%" == "y" exit
if "%input1%" == "n" goto menu
goto menu

:drivers
cls
echo.
echo  Reading drivers
ping localhost -n 2 >nul
cls 
echo.
echo  Reading drivers ======
ping localhost -n 2 >nul
cls
echo.
echo  Reading drivers ============
ping localhost -n 2 >nul
cls
echo.
echo  Reading drivers ==================
driverquery
echo.
echo  Do you wish to exit?
echo.
set /p input1="[y/n]?"
if "%input1%" == "y" exit
if "%input1%" == "n" goto menu
goto menu

:ip
cls
echo.
echo  Checking IP configuration
ping localhost -n 2 >nul
cls 
echo.
echo  Checking IP configuration ======
ping localhost -n 2 >nul
cls
echo.
echo  Checking IP configuration ============
ping localhost -n 2 >nul
cls
echo.
echo  Checking IP configuration ==================
ipconfig
echo.
echo  Do you wish to exit?
echo.
set /p input1="[y/n]?"
if "%input1%" == "y" exit
if "%input1%" == "n" goto menu
goto menu

:shutdown
cls
echo.
echo  ----------------------------
echo  * [1] Schedule shutdown PC *
echo  * [2] Cancel schedule      *
echo  ----------------------------
echo.
echo    [3] Go to menu
echo.
set /p input2=">"
if "%input2%" == "1" goto shutdown1
if "%input2%" == "2" goto shutdown2
if "%input2%" == "3" goto menu
goto shutdown

:shutdown1
set time= "" 
cls
echo.
echo  ---------------------------------------------
echo  * When do you want to schedule shutdown for *
echo  * your PC? (in seconds)                     *
echo  ---------------------------------------------
echo.
set /p time=">"
shutdown -s -t %time%
goto menu

:shutdown2
cls
echo.
echo  Canceling scheduled PC shutdown
ping localhost -n 2 >nul
cls
echo.
echo  Canceling scheduled PC shutdown ======
ping localhost -n 2 >nul
cls
echo.
echo  Canceling scheduled PC shutdown ============
ping localhost -n 2 >nul
cls
echo.
echo  Canceling scheduled PC shutdown ==================
shutdown -a
pause >nul
goto menu

:restart
set time1= ""
cls
echo.
echo  ---------------------------
echo  * [1] Schedule restart PC *
echo  * [2] Cancel schedule     *
echo  ---------------------------
echo.
echo    [3] Go to menu
echo.
set /p input3=">"
if "%input3%" == "1" goto restart1
if "%input3%" == "2" goto restart2
if "%input3%" == "3" goto menu
goto menu

:restart1
set time1= ""
cls
echo.
echo  ---------------------------------------------
echo  * When do you want to schedule restart for  *
echo  * your PC? (in seconds)                     *
echo  ---------------------------------------------
echo.
set /p time1=">"
shutdown -r -t %time1%
goto menu

:restart2
cls
echo.
echo  Canceling scheduled PC restart
ping localhost -n 2 >nul
cls
echo.
echo  Canceling scheduled PC restart ======
ping localhost -n 2 >nul
cls
echo.
echo  Canceling scheduled PC restart ============
ping localhost -n 2 >nul
cls
echo.
echo  Canceling scheduled PC restart ==================
shutdown -a
pause >nul
goto menu

:system
cls
echo.
echo  Checking system information
ping localhost -n 2 >nul
cls
echo.
echo  Checking system information ======
ping localhost -n 2 >nul
cls
echo.
echo  Checking system information ============
ping localhost -n 2 >nul
cls
echo.
echo  Checking system information ==================
systeminfo
echo.
echo  Do you wish to exit?
echo.
set /p input1="[y/n]?"
if "%input1%" == "y" exit
if "%input1%" == "n" goto menu
goto menu

:tasks
cls
echo.
echo  Checking all running tasks
ping localhost -n 2 >nul
cls
echo.
echo  Checking all running tasks ======
ping localhost -n 2 >nul
cls
echo.
echo  Checking all running tasks ============
ping localhost -n 2 >nul
cls
echo.
echo  Checking all running tasks ==================
tasklist
echo.
echo  Do you wish to exit?
echo.
set /p input1="[y/n]?"
if "%input1%" == "y" exit
if "%input1%" == "n" goto menu
goto menu

:killtasks
cls
echo.
echo  Checking all running tasks
ping localhost -n 2 >nul
cls
echo.
echo  Checking all running tasks ======
ping localhost -n 2 >nul
cls
echo.
echo  Checking all running tasks ============
ping localhost -n 2 >nul
cls
echo.
echo  Checking all running tasks ==================
tasklist
echo.
echo  Which process or task do you want to kill?
echo.
set /p prnam=">"
tskill %prnam%
cls
echo.
echo  Task killed!
pause >nul
goto menu

:intconnection
cls
echo.
echo  Checking internet connection
ping localhost -n 2 >nul
cls
echo.
echo  Checking internet connection ======
ping localhost -n 2 >nul
cls
echo.
echo  Checking internet connection ============
ping localhost -n 2 >nul
cls
echo.
echo  Checking internet connection ==================
ping google.com
echo.
echo  Do you wish to exit?
echo.
set /p input1="[y/n]?"
if "%input1%" == "y" exit
if "%input1%" == "n" goto menu
goto menu

:sysconfig
msconfig
goto menu

:macaddress
cls
echo.
echo  Checking MAC address
ping localhost -n 2 >nul
cls
echo.
echo  Checking MAC address ======
ping localhost -n 2 >nul
cls
echo.
echo  Checking MAC address ============
ping localhost -n 2 >nul
cls
echo.
echo  Checking MAC address ==================
getmac
echo.
echo  Do you wish to exit?
echo.
set /p input1="[y/n]?"
if "%input1%" == "y" exit
if "%input1%" == "n" goto menu
goto menu

:manual
color 09
cls
echo.
echo  -----------------------------------------------------
echo  * This is a list of all avaliable options and their *
echo  * descriptions in BatchSystemToolkit.               *
echo  -----------------------------------------------------
echo.
echo  If you are asked in any of the options this question:
echo  Do you wish to exit?
echo  [y/n]?
echo.
echo  y- stands for YES - you will exit the program
echo  n- stands for NO - you will go back to menu
echo.
echo.
echo  If you want to change font size right click on top blank space
echo  and click Properties, go to the font tab and select font size, click OK.
echo.
echo.
echo  [1] Check disk for errors and repair
echo.
echo  -checks disk for errors and tries to solve them
echo.
echo  [2] Check all drivers 
echo.
echo  -lists all installed drivers
echo.
echo  [3] IP configuration
echo.
echo  -displays Windows IP Configuration
echo.
echo  [4] Schedule shutdown PC
echo.
echo  -enables you to shutdown your PC at desired time and allows you to cancel the shutdown
echo.
echo  [5] Restart PC
echo.
echo  -enables you to restart your PC from command line
echo.
echo  [6] Check system information
echo.
echo  -checks and lists your system information
echo.
echo  [7] Check all running tasks
echo.
echo  -lists all running tasks
echo.
echo  [8] Kill task
echo.
echo  -enables you to kill desired task
echo.
echo  [9] Check internet connection via Google
echo.
echo  -checks internet connection via Google:
echo    * if packets are sent your connection is working
echo    * if you see this message: "Ping request could not find host google.com. Please check the name and try again."
echo      you are not connected to the internet or your connection is broken
echo.
echo  [10] System configuration
echo.
echo  -opens system configuration tool
echo.
echo  [11] Your MAC address
echo.
echo  -displays your MAC address
pause >nul
goto menu













































