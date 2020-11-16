title DevOps Training 2020 - Peter Mikaczo
cd /d %~dp0

REM VARIABLES
REM #TODO Sync CONFLUENCE value with ./install_scripts/confluence.sh
SET DOWNLOAD_URL=https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-7.4.5-x64.bin
SET CONFLUENCE=atlassian-confluence-7.4.5-x64.bin

IF EXIST .\files\%CONFLUENCE% goto start_ps
cscript /nologo .\tools\downloader.js %DOWNLOAD_URL%
RENAME downloaded.bin %CONFLUENCE%
MOVE /y %CONFLUENCE% .\files\%CONFLUENCE%
IF EXIST .\files\%CONFLUENCE% goto start_ps

:start_ps
powershell -file ".\2_start.ps1"
EXIT