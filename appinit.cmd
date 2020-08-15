@ECHO OFF
TITLE APPS INITIALIZER v0.2

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

CHOICE /C 0123AB /M "Please, select an app typing the <letter> of the app that you want to open. After you decide wich apps do you want to open, press 0 to open."
CALL IF %ERRORLEVEL% EQU 0 PAUSE