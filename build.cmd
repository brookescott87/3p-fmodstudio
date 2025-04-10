@echo off

autobuild build -A 64 --all
autobuild package -A 64 --results-file result.txt

if not exist result.txt (
    echo Autobuild failed.
    exit /b 1
)
