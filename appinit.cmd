@ECHO OFF
TITLE APPS INITIALIZER v0.2

:optionsMenu
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

ECHO Please, select an app typing the <letter> of the app that you want to open.
CHOICE /C 0123AB /N /M "After you decide wich apps do you want to open, press 0 to open."
IF %ERRORLEVEL% EQU 0 GOTO :openApps
IF %ERRORLEVEL% EQU 1 GOTO :funnyFunction

:openApps
ECHO "U pressed 0 fool"
PAUSE
CLS
GOTO :optionsMenu

:funnyFunction
ECHO "U pressed 1 fool"
PAUSE
CLS
GOTO :optionsMenu