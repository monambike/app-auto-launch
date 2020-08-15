@ECHO OFF
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
CHOICE /C 0123AB /N /M ""

IF %ERRORLEVEL% EQU 0 GOTO :openApps
IF %ERRORLEVEL% EQU 1 GOTO :funnyFunction

:: Function to open app
:openApps
ECHO "U pressed 0 fool"
PAUSE
CLS
GOTO :optionsMenu

::Function for testing
:funnyFunction
ECHO "U pressed 1 fool"
PAUSE
CLS
GOTO :optionsMenu