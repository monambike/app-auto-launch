@ECHO OFF
SETLOCAL enabledelayedexpansion
REM Personalization of CMD
COLOR 0D
TITLE APPS INITIALIZER v0.2

REM Variables
SET "userOption"
REM The option letter is organized according it's position
REM E.g. 0=A, 1=B
SET app[0]=Sublime Text 3
SET app[1]=Discord
SET app[2]=XAMPP
SET app[3]=Git
SET app[4]=CMD
SET app[5]=Opera

REM Design of menu
:optionsMenu
ECHO +--------------------------------------------------+
ECHO [               APP INITIALIZER                    ]
ECHO [      Don't forget to change the paths of         ]
ECHO [                 variables :)                     ]
ECHO [                                                  ]
ECHO [  PLEASE choose THE SERVICES THAT U WANT TO OPEN  ]
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
ECHO [ [ A. Open Chosen Apps  ]                         ]
ECHO [ [ B. Cancel            ]                         ]
ECHO [ [ C. Exit              ]                         ]
ECHO [ [                      ]                         ]
ECHO [ ________________________                         ]
ECHO [                                                  ]
ECHO [ ________________________                         ]
ECHO [ [                      ]                         ]
ECHO [ [      SERVICES        ]                         ]
ECHO [ [                      ]                         ]
ECHO [ [ Apps:                ]                         ]
ECHO [ [ 1. Sublime Text 3    ]                         ]
ECHO [ [ 2. Discord           ]                         ]
ECHO [ [ 3. XAMPP             ]                         ]
ECHO [ [ Prompts:             ]                         ]
ECHO [ [ 4. Git               ]                         ]
ECHO [ [ 5. CMD               ]                         ]
ECHO [ [ Browser:             ]                         ]
ECHO [ [ 6. Opera             ]                         ]
ECHO [ [                      ]                         ]
ECHO [ ________________________                         ]
ECHO +--------------------------------------------------+

REM Choice
ECHO "Please, select an app typing the <letter> of the app that you want to open." ^
"After you decide wich apps do you want to open, press 0 to open everything."
ECHO.
ECHO Your apps: '%userOption%'
SET /P choose="Choose: "

REM COMMANDS
REM If user has chosen to Open Apps
IF %choose% EQU 1 (
	ECHO Open chosen apps
	PAUSE
	CLS
	GOTO :optionsMenu
)

REM If user has chosen to Cancel Operation
IF %choose% EQU 2 (
	REM ECHO Cancel
	REM PAUSE
	REM CLS
	REM GOTO :optionsMenu
	GOTO :readArray
)
REM If user has chosen to Exit Program
IF %choose% EQU 3 (
	ECHO Exit
	PAUSE
	CLS
	GOTO :optionsMenu
)
REM SERVICES
REM If user has chosen Sublime Text 3
IF /I %choose% EQU A (
	SET userOption=%userOption%A
	CLS
	GOTO :optionsMenu
)
REM If user has chosen Discord
IF /I %choose% EQU B (
	SET userOption=%userOption%B
	CLS
	GOTO :optionsMenu
)
REM If user has chosen XAMPP
IF /I %choose% EQU C (
	SET userOption=%userOption%C
	CLS
	GOTO :optionsMenu
)
REM If user has chosen Git
IF /I %choose% EQU D (
	SET userOption=%userOption%D
	CLS
	GOTO :optionsMenu
)
REM If user has chosen CMD
IF /I %choose% EQU E (
	SET userOption=%userOption%E
	CLS
	GOTO :optionsMenu
)
REM If user has chosen Opera
IF /I %choose% EQU F (
	SET userOption=%userOption%F
	CLS
	GOTO :optionsMenu
)

REM Function to gather an exception
ECHO "This value doesn't exist. Please, press any key and try again."
GOTO :returnMenu

REM Function to open app
:openApps
ECHO "U pressed 0"
GOTO :returnMenu

REMFunction for testing
:funnyFunction
ECHO "You pressed 1"
GOTO :returnMenu

:returnMenu
ECHO "Press any key to back to menu."
PAUSE >NUL
CLS
GOTO :optionsMenu

REMFunction for read array
:readArray
FOR /L %%i IN (0,1,5) DO ECHO In the position %%i , there's the app !app[%%i]!
PAUSE >NUL
ECHO PRESS ANY KEY TO CLOSE