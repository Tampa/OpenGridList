@echo off
del grids.remote.xml >nul 2>&1
echo Fetching latest version...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/Tampa/OpenGridList/master/Singularity/grids_sg1.xml', 'grids_sg1.xml')"
echo "Copying to user settings..."
echo F|xcopy grids_sg1.xml %APPDATA%\SecondLife\user_settings\grids_sg1.xml /s /y /Q >nul 2>&1
echo Cleaning up...
del grids.remote.xml >nul 2>&1
echo Done, you may close this window now!
@pause on