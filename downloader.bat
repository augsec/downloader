@echo off
setlocal


color c

echo Preparando o ambiente de download...
ping localhost -n 2 > nul
echo .
ping localhost -n 2 > nul
echo .
ping localhost -n 2 > nul

echo Iniciando o download dos programas necessarios...
ping localhost -n 2 > nul

set "URL_DO_EXE1=https://github.com/augsec/downloader/releases/download/Start/winrar-x64-624br.exe"
set "URL_DO_EXE2=https://github.com/augsec/downloader/releases/download/Finish/Ampps-3.9-x86_64-setup.zip"

echo .
echo Download de Winrar em progresso...
curl -L "%URL_DO_EXE1%" -o "winrar-x64-624br.exe"
echo Download concluido.
echo .

echo Download de Ampps em progresso...
curl -L "%URL_DO_EXE2%" -o "Ampps-3.9-x86_64-setup.zip"
echo Download concluido.
echo .

color a

echo .
echo Todos os downloads foram concluidos com sucesso.
echo ===[ by FRANK FK ] ===
echo .
ping localhost -n 3 > nul
echo Sistema pronto para a proxima missao...
echo .
ping localhost -n 3 > nul

pause
