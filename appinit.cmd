@ECHO OFF
setlocal enabledelayedexpansion
:: Personalization of CMD
COLOR 0D
TITLE APPS INITIALIZER v0.2

:: Design of menu
:optionsMenu
ECHO APPS INITIALIZER
ECHO.
ECHO Please note that the files path may be wrong, be sure of edit the cmd file before use it.
ECHO.
ECHO +---------------------------------------------+
ECHO \                                             /
ECHO \  PLEASE CHOOSE THE APPS THAT U WANT TO OPEN /
ECHO \                                             /
ECHO \ 0. Open Chosen Apps                         /
ECHO \ 1. Clear                                    /
ECHO \ 2. Cancel                                   /
ECHO \ 3. Exit                                     /
ECHO \                                             /
ECHO \ APPS:                                       /
ECHO \ A. Sublime Text 3                           /
ECHO \ B. Calculator                               /
ECHO \                                             /
ECHO +---------------------------------------------+

:: Choice
ECHO "Please, select an app typing the <letter> of the app that you want to open." ^
"After you decide wich apps do you want to open, press 0 to open everything."
CHOICE /C 0123AB /N /M "Choice: "

:: If user has chosen 0
IF %ERRORLEVEL% EQU 1 (
	ECHO "0"
)
:: If user has chosen 1
IF %ERRORLEVEL% EQU 2 (
	ECHO "1"
)
:: If user has chosen 2
IF %ERRORLEVEL% EQU 3 (
	ECHO "2"
)

:: Function to gather an exception
ECHO "This value doesn't exist. Please, press any key and try again."
PAUSE >NUL
CLS
GOTO :optionsMenu

:: Function to open app
:openApps
ECHO "U pressed 0"
ECHO "Press any key to back to menu."
PAUSE >NUL
CLS
GOTO :optionsMenu

::Function for testing
:funnyFunction
ECHO "You pressed 1"
ECHO "Press any key to back to menu."
PAUSE >NUL
CLS
GOTO :optionsMenu