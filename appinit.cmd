@ECHO OFF
setlocal enabledelayedexpansion
:: Personalization of CMD
COLOR 0D
TITLE APPS INITIALIZER v0.2

:: Variables
SET "userOption"
:: The option letter is organized according it's position
:: E.g. 0=A, 1=B
SET app[0]=Sublime Text 3
SET app[1]=Discord
SET app[2]=XAMPP
SET app[3]=Git
SET app[4]=CMD
SET app[5]=Opera

:: Design of menu
:optionsMenu
ECHO APPS INITIALIZER
ECHO.
ECHO Please note that the files path may be wrong, be sure of edit the cmd file before use it.
ECHO.
ECHO +--------------------------------------------------+
ECHO [                                                  ]
ECHO [  PLEASE CHOOSE THE SERVICES THAT U WANT TO OPEN  ]
ECHO [      After you choose a service, you can:        ]
ECHO [                                                  ]
ECHO [          - Open the apps that you choose         ]
ECHO [          - Cancel, this will reset you chooses   ]
ECHO [          - Exit of the program                   ]
ECHO [                                                  ]
ECHO [ ________________________                         ]
ECHO [ [                      ]                         ]
ECHO [ [      COMMANDS        ]                         ]
ECHO [ [                      ]                         ]
ECHO [ [ 0. Open Chosen Apps  ]                         ]
ECHO [ [ 1. Cancel            ]                         ]
ECHO [ [ 2. Exit              ]                         ]
ECHO [ [                      ]                         ]
ECHO [ ________________________                         ]
ECHO [                                                  ]
ECHO [ ________________________                         ]
ECHO [ [                      ]                         ]
ECHO [ [      SERVICES        ]                         ]
ECHO [ [                      ]                         ]
ECHO [ [ Apps:                ]                         ]
ECHO [ [ A. Sublime Text 3    ]                         ]
ECHO [ [ B. Discord           ]                         ]
ECHO [ [ C. XAMPP             ]                         ]
ECHO [ [ Prompts:             ]                         ]
ECHO [ [ D. Git               ]                         ]
ECHO [ [ E. CMD               ]                         ]
ECHO [ [ Browser:             ]                         ]
ECHO [ [ F. Opera             ]                         ]
ECHO [ [                      ]                         ]
ECHO [ ________________________                         ]
ECHO +--------------------------------------------------+

:: Choice
ECHO "Please, select an app typing the <letter> of the app that you want to open." ^
"After you decide wich apps do you want to open, press 0 to open everything."
ECHO.
ECHO Your apps: '%userOption%'
CHOICE /C 012ABCDEF /N /M "Choice: "

:: COMMANDS
:: If user has chosen to Open Apps
IF %ERRORLEVEL% EQU 1 (
	ECHO Open chosen apps
	PAUSE
	CLS
	GOTO :optionsMenu
)
:: If user has chosen to Cancel Operation
IF %ERRORLEVEL% EQU 2 (
	ECHO Cancel
	PAUSE
	CLS
	GOTO :optionsMenu
)
:: If user has chosen to Exit Program
IF %ERRORLEVEL% EQU 3 (
	ECHO Exit
	PAUSE
	CLS
	GOTO :optionsMenu
)
:: SERVICES
:: If user has chosen Sublime Text 3
IF %ERRORLEVEL% EQU 4 (
	SET userOption=%userOption%A
	CLS
	GOTO :optionsMenu
)
:: If user has chosen Discord
IF %ERRORLEVEL% EQU 5 (
	SET userOption=%userOption%B
	CLS
	GOTO :optionsMenu
)
:: If user has chosen XAMPP
IF %ERRORLEVEL% EQU 6 (
	SET userOption=%userOption%C
	CLS
	GOTO :optionsMenu
)
:: If user has chosen Git
IF %ERRORLEVEL% EQU 7 (
	SET userOption=%userOption%D
	CLS
	GOTO :optionsMenu
)
:: If user has chosen CMD
IF %ERRORLEVEL% EQU 8 (
	SET userOption=%userOption%E
	CLS
	GOTO :optionsMenu
)
:: If user has chosen Opera
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