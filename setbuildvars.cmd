@echo off

if not exist %~dp0\result.txt (
    echo No result.txt file found, must run autobuild in %~dp0 first
    exit /b 1
)

for /f tokens^=1^,2^ delims^=^=^"^" %%i in (%~dp0\result.txt) do (
    for %%k in (filename md5) do if %%i==autobuild_package_%%k set fmod_%%k=%%j
)

set fmod_url=file:///%fmod_filename:\=/%
