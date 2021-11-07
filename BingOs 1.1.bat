@echo off
echo Welcome to the BingOS configuration menu
echo type help to view all commands.
pause
:start
echo Enter command
set /p car=
if %car% == ip goto ipc
if %car% == help goto help
if %car% == dir goto dir
if %car% == configservices goto cfs
if %car% == notepad goto np
if %car% == explore goto ee
:unknown
echo Bad Command or File name, ignoring given command.
timeout 1
goto :start
:ipc
ipconfig
goto :start
:help
echo HELP INTERFACE. Commands:
echo ip = view IP Address configuration information
echo help = view help information
echo dir= view directory information
echo configservices shows the currently installed version of BingOS
echo notepad launches the basic text editor, Notepad.
echo explore launches the default file explorer
goto :start
:dir
echo Opening DIR interface...
timeout 1
dir
goto :start
:cfs
echo Loading...
timeout 2
echo System installed: BingOS Prototype 1.1 Stable Git release, Bingfish 2021 Open source
echo Thank you for using BingOS.
echo Closing System Info...
goto :start
:np
echo Launching Notepad...
notepad
goto :start
:ee
explorer
goto :start