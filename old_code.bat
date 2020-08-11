@ECHO OFF

:aaa
REM triste
ECHO Olá %username%, tudo bem?
TITLE Opening Files to Program Discord Bot 

REM Opening Discord
CD C:\Users\vinic\AppData\Local\Discord\app-0.0.306
Discord.exe

REM Opening Sublime
CD C:\Program Files\Sublime Text 3
sublime_text.exe










ECHO Você deseja abrir os programas?

SET /p hello = Escolhe 1 OU 2 AGORA!
IF %hello% EQU 1 GOTO F1
IF %hello% EQU 2 GOTO F2

:F1
ECHO VOCÊ É DOIDOA
GOTO :F1:

:F2
ECHO ok vamos casar agora
GOTO aaa
PAUSE