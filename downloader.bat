@echo off
setlocal

:: Cria o script PowerShell
echo $PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition > download.ps1
echo Invoke-WebRequest -Uri "URL_DO_DOWNLOAD_1" -OutFile "$PSScriptRoot\nome_do_arquivo_1.ext" >> download.ps1
echo Invoke-WebRequest -Uri "URL_DO_DOWNLOAD_2" -OutFile "$PSScriptRoot\nome_do_arquivo_2.ext" >> download.ps1

:: Cria um arquivo de texto com informações
echo Informação exemplo > info.txt

:: Executa o script PowerShell
PowerShell -ExecutionPolicy Bypass -File download.ps1

:: Deleta os arquivos criados e o próprio script
del download.ps1
del info.txt
del "%~f0"

endlocal
