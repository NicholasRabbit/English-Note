
@echo off
REM Rebase auto-continue script

:loop
REM Stage all files
git add .

REM Try to continue rebase
git rebase --continue

REM Check if rebase is still in progress
IF EXIST ".git\rebase-merge" (
    ECHO Rebase in progress... continuing...
    GOTO loop
) ELSE (
    ECHO Rebase complete or failed.
)

pause
