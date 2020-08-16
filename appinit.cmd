@ECHO OFF
setlocal enabledelayedexpansion
:: Personalization of CMD
COLOR 0D
TITLE APPS INITIALIZER v0.2

:: Variables
SET "userOption"

:: Design of menu
:optionsMenu
ECHO APPS INITIALIZER
ECHO.
ECHO Please note that the files path may be wrong, be sure of edit the cmd file before use it.
ECHO.
ECHO +-------------------------------------------------+
ECHO \                                                 /
ECHO \  PLEASE CHOOSE THE SERVICES THAT U WANT TO OPEN /
ECHO \                                                 /
ECHO \ COMMANDS                                        /
ECHO \ 0. Open Chosen Apps                             /
ECHO \ 1. Cancel                                       /
ECHO \ 2. Exit                                         /
ECHO \                                                 /
ECHO \ SERVICES                                        /
ECHO \ Apps:                                           /
ECHO \ A. Sublime Text 3                               /
ECHO \ B. Discord                                      /
ECHO \ C. XAMPP                                        /
ECHO \ Prompts:                                        /
ECHO \ D. GIT                                          /
ECHO \ E. CMD                                          /
ECHO \ Browser:                                        /
ECHO \ F. Opera                                        /
ECHO \                                                 /
ECHO +-------------------------------------------------+

:: Choice
ECHO "Please, select an app typing the <letter> of the app that you want to open." ^
"After you decide wich apps do you want to open, press 0 to open everything."
ECHO.
ECHO Your apps: '%userOption%'
CHOICE /C 0123ABCDEF /N /M "Choice: "

:: COMMANDS
:: If user has chosen 0
IF %ERRORLEVEL% EQU 1 (
	ECHO Open chosen apps
	PAUSE
	CLS
	GOTO :optionsMenu
)
:: If user has chosen 2
IF %ERRORLEVEL% EQU 2 (
	ECHO Cancel
	PAUSE
	CLS
	GOTO :optionsMenu
)
IF %ERRORLEVEL% EQU 3 (
	ECHO Exit
	PAUSE
	CLS
	GOTO :optionsMenu
)
:: SERVICES
IF %ERRORLEVEL% EQU 4 (
	SET userOption=%userOption%A
	CLS
	GOTO :optionsMenu
)
IF %ERRORLEVEL% EQU 5 (
	SET userOption=%userOption%B
	CLS
	GOTO :optionsMenu
)
IF %ERRORLEVEL% EQU 6 (
	SET userOption=%userOption%C
	CLS
	GOTO :optionsMenu
)
IF %ERRORLEVEL% EQU 7 (
	SET userOption=%userOption%D
	CLS
	GOTO :optionsMenu
)
IF %ERRORLEVEL% EQU 8 (
	SET userOption=%userOption%E
	CLS
	GOTO :optionsMenu
)
IF %ERRORLEVEL% EQU 9 (
	SET userOption=%userOption%F
	CLS
	GOTO :optionsMenu
)

:: Function to gather an exception
ECHO "This value doesn't exist. Please, press any key and try again."
GOTO :returnMenu

:: Function to open app
:openApps
ECHO "U pressed 0"
GOTO :returnMenu

::Function for testing
:funnyFunction
ECHO "You pressed 1"
GOTO :returnMenu

:returnMenu
ECHO "Press any key to back to menu."
PAUSE >NUL
CLS
GOTO :optionsMenu