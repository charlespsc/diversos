@echo off
echo `Compactando arquivos de log`
tar -cf backup-log.zip *.log >nul 2>&1

IF %ERRORLEVEL% NEQ 0 (echo "Erro na execução do script. Arquivos não encontrados. Verifique seu Zip.")