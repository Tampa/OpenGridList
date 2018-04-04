@echo off
del grids.remote.xml >nul 2>&1
echo Fetching latest version...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Tampa/OpenGridList/master/Firestorm/grids.remote.xml', 'grids.remote.xml')"
echo "Copying to user settings..."
echo F|xcopy grids.remote.xml %APPDATA%\Firestorm_x64\user_settings\grids.remote.xml /s /y /Q >nul 2>&1
echo Cleaning up...
del grids.remote.xml >nul 2>&1
echo Done, you may close this window now!
@pause on