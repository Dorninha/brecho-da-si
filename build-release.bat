@echo off
echo ========================================
echo    BRECHÓ DA SI - BUILD PARA PRODUÇÃO
echo ========================================
echo.

echo [1/6] Verificando pré-requisitos...
cordova --version >nul 2>&1
if errorlevel 1 (
    echo ERRO: Cordova não está instalado!
    echo Execute: npm install -g cordova
    pause
    exit /b 1
)

echo [2/6] Limpando build anterior...
if exist platforms\android rmdir /s /q platforms\android
if exist plugins rmdir /s /q plugins

echo [3/6] Adicionando plataforma Android...
cordova platform add android
if errorlevel 1 (
    echo ERRO: Falha ao adicionar plataforma Android
    pause
    exit /b 1
)

echo [4/6] Instalando plugins necessários...
cordova plugin add cordova-plugin-whitelist
cordova plugin add cordova-plugin-statusbar
cordova plugin add cordova-plugin-device
cordova plugin add cordova-plugin-splashscreen

echo [5/6] Gerando APK de debug...
cordova build android
if errorlevel 1 (
    echo ERRO: Falha no build
    pause
    exit /b 1
)

echo [6/6] Build concluído com sucesso!
echo.
echo ========================================
echo           APK GERADO COM SUCESSO!
echo ========================================
echo.
echo Localização do APK:
echo platforms\android\app\build\outputs\apk\debug\app-debug.apk
echo.
echo Para gerar APK assinado para produção:
echo 1. Crie um keystore com keytool
echo 2. Configure release-signing.properties
echo 3. Execute: cordova build android --release
echo.
echo Consulte GOOGLE_PLAY_GUIDE.md para instruções completas
echo.
pause
