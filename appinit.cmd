:restartProgram
@ECHO OFF
REM SETTING SIZE
MODE 800
REM Delay for 'FOR' functions
SETLOCAL ENABLEDELAYEDEXPANSION
REM Personalization of CMD
COLOR 0D
TITLE APPS INITIALIZER v0.2

REM Variables
SET "userOptions"
SET /A userOptions_length=0
REM The option letter is organized according it's position
REM E.g. 0=A, 1=B
SET app[0]=Sublime Text 3
SET app[1]=Discord
SET app[2]=XAMPP
SET app[3]=Git
SET app[4]=CMD
SET app[5]=Opera

REM MENU
:optionsMenu
SET newOption=""
CLS
ECHO +--------------------------------------------------------------------------+
ECHO [                                APP INITIALIZER                           ]
ECHO [                                                                          ]
ECHO [                     Don't forget to change the paths of                  ]
ECHO [                                 variables :)                             ]
ECHO [                                                                          ]
ECHO [ ________________________                                                 ]
ECHO [ :                      :                                                 ]
ECHO [ :      COMMANDS        :     * After you choose a service, you can:      ]
ECHO [ :                      :       - Open the apps that you choose           ]
ECHO [ : 0. Open Chosen Apps  :       - Cancel, this will reset you chooses     ]
ECHO [ : 1. Cancel            :       - Exit of the program                     ]
ECHO [ : 2. Exit              :                                                 ]
ECHO [ :                      :                                                 ]
ECHO [ ________________________                                                 ]
ECHO [                                                                          ]
ECHO [ ________________________                                                 ]
ECHO [ :                      :                                                 ]
ECHO [ :      SERVICES        :     * PLEASE CHOOSE THE SERVICES THAT YOU       ]
ECHO [ :                      :     WANT TO OPEN                                ]
ECHO [ : Apps:                :                                                 ]
ECHO [ : A. Sublime Text 3    :                                                 ]
ECHO [ : B. Discord           :                                                 ]
ECHO [ : C. XAMPP             :                                                 ]
ECHO [ : Prompts:             :                                                 ]
ECHO [ : D. Git               :                                                 ]
ECHO [ : E. CMD               :                                                 ]
ECHO [ : Browser:             :                                                 ]
ECHO [ : F. Opera             :                                                 ]
ECHO [ :                      :                                                 ]
ECHO [ ________________________                                                 ]
ECHO +--------------------------------------------------------------------------+

REM CHOICE
ECHO "Please, select an app typing the <letter> of the app that you want to open." ^
"After you decide wich apps do you want to open, press 0 to open everything."
ECHO.
IF %userOptions_length% GTR 0 (
	ECHO You selected %userOptions_length% apps, and they are: '%userOptions%'
)
CHOICE /C 012ABCDEFG /N /M "Choice: "

REM COMMANDS
REM If user has chosen to Open Apps
IF %ERRORLEVEL% EQU 1 (
	ECHO Open chosen apps
	PAUSE
	GOTO :optionsMenu
)

REM If user has chosen to Cancel Operation
IF %ERRORLEVEL% EQU 2 (
	REM ECHO Cancel
	REM PAUSE
	REM CLS
	REM GOTO :optionsMenu
	GOTO :readArray
)
REM If user has chosen to Exit Program
IF %ERRORLEVEL% EQU 3 (
	ECHO Exit
	PAUSE
	GOTO :optionsMenu
)
REM SERVICES
REM If user has chosen Sublime Text 3
IF %ERRORLEVEL% EQU 4 (
	SET newOption=A
)
REM If user has chosen Discord
IF %ERRORLEVEL% EQU 5 (
	SET newOption=B
)
REM If user has chosen XAMPP
IF %ERRORLEVEL% EQU 6 (
	SET newOption=C
)
REM If user has chosen Git
IF %ERRORLEVEL% EQU 7 (
	SET newOption=D
)
REM If user has chosen CMD
IF %ERRORLEVEL% EQU 8 (
	SET newOption=E
)
REM If user has chosen Opera
IF %ERRORLEVEL% EQU 9 (
	SET newOption=F
)

GOTO :verifyIfAlreadySelected

REM Function to open app
:openApps
ECHO "U pressed 0"
GOTO :returnMenu

REMFunction for testing
:funnyFunction
ECHO "You pressed 1"
GOTO :returnMenu

:returnMenu
ECHO.
ECHO - PRESS ANY KEY TO BACK TO MENU -
PAUSE >NUL
GOTO :optionsMenu

REM Function for read array
:readArray
FOR /L %%i IN (0,1,5) DO (
	ECHO In the position %%i , there's the app !app[%%i]!
)
PAUSE >NUL
ECHO PRESS ANY KEY TO CLOSE

:verifyIfAlreadySelected
REM If the option selected by the user has a condition
CALL IF %newOption% NEQ "" (
	ECHO 1
	PAUSE >NUL

	REM Just do the verification if user has typed more than 1 value

	CALL IF %userOptions_length% GTR 1 (
		ECHO 2
		PAUSE >NUL

		REM Function will read each letter of the string
		REM And ensure that the new character doesn't exist

		CALL ECHO 3
		PAUSE >NUL
		
		FOR /L %%i IN (0,1,%userOptions_length) DO CALL (
			ECHO 4
			PAUSE >NUL

			REM If the letter already exist, throw an error
		)

		ECHO 5
		PAUSE >NUL
	) ELSE (
		:returnMenu
	)
) ELSE (
	ECHO ELSE
	PAUSE >NUL
	GOTO :errorPage
)

:errorPage
REM Function to gather an exception
CLS
COLOR 04
ECHO [ ERROR ]
ECHO.
ECHO.
ECHO The option in position '%ERRORLEVEL%' exist, but there's no conditional for it yet, or the conditional is in the wrong place.
ECHO.
ECHO Please do the following:
ECHO     - Please, verify if you did the conditional correctly, following the pattern of the others, searching the value according the position starting from 1;
ECHO     - Or, choose other option and try again.
ECHO.
ECHO.
ECHO - PRESS ANY KEY TO RESTART THE PROGRAM -
PAUSE >NUL
GOTO :restartProgram