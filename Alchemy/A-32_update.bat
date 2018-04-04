@echo off
del grids_user.xml >nul 2>&1
echo Fetching latest version...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Tampa/OpenGridList/master/Alchemy/grids_user.xml', 'grids_user.xml')"
echo "Copying to user settings..."
echo F|xcopy grids_user.xml %APPDATA%\Alchemy\user_settings\grids_user.xml /s /y /Q >nul 2>&1
echo Cleaning up...
del grids_user.xml >nul 2>&1
echo Done, you may close this window now!
@pause on