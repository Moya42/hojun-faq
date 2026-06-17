@echo off
rem ホージュン FAQ Wiki 起動スクリプト
rem このファイルを hojun_faq_wiki.html と同じフォルダに置いてダブルクリックしてください。

set "HTML=%~dp0hojun_faq_wiki.html"
set "PROFILE=%TEMP%\hojun_faq_profile"

rem --- Edge を探す ---
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" (
  start "" "%EDGE%" --allow-file-access-from-files --user-data-dir="%PROFILE%" "%HTML%"
  exit /b
)

rem --- Chrome を探す ---
set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" (
  start "" "%CHROME%" --allow-file-access-from-files --user-data-dir="%PROFILE%" "%HTML%"
  exit /b
)

echo Edge または Chrome が見つかりませんでした。
echo どちらかのブラウザをインストールしてください。
pause
