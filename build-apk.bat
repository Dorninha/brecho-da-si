@echo off
echo ========================================
echo    BRECHÓ DA SI - BUILD APK ANDROID
echo ========================================
echo.

echo [1/6] Verificando se o Cordova está instalado...
cordova --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERRO: Cordova não encontrado!
    echo Execute: npm install -g cordova
    pause
    exit /b 1
)
echo ✓ Cordova encontrado!

echo.
echo [2/6] Instalando dependências do projeto...
call npm install
if %errorlevel% neq 0 (
    echo ERRO: Falha ao instalar dependências!
    pause
    exit /b 1
)
echo ✓ Dependências instaladas!

echo.
echo [3/6] Adicionando plataforma Android...
call cordova platform add android
echo ✓ Plataforma Android adicionada!

echo.
echo [4/6] Verificando requisitos do sistema...
call cordova requirements
if %errorlevel% neq 0 (
    echo AVISO: Alguns requisitos podem estar faltando.
    echo Verifique as instruções em BUILD_INSTRUCTIONS.md
    echo.
    set /p continue="Continuar mesmo assim? (s/n): "
    if /i not "%continue%"=="s" (
        echo Build cancelado pelo usuário.
        pause
        exit /b 1
    )
)

echo.
echo [5/6] Gerando APK de debug...
call cordova build android
if %errorlevel% neq 0 (
    echo ERRO: Falha ao gerar APK!
    echo Verifique os logs acima para mais detalhes.
    pause
    exit /b 1
)
echo ✓ APK de debug gerado com sucesso!

echo.
echo [6/6] Localizando APK gerado...
set APK_PATH=platforms\android\app\build\outputs\apk\debug\app-debug.apk
if exist "%APK_PATH%" (
    echo ✓ APK encontrado em: %APK_PATH%
    echo.
    echo ========================================
    echo           BUILD CONCLUÍDO!
    echo ========================================
    echo.
    echo O APK foi gerado com sucesso!
    echo Localização: %APK_PATH%
    echo.
    echo Para instalar no dispositivo Android:
    echo 1. Copie o arquivo APK para o dispositivo
    echo 2. Ative "Fontes desconhecidas" nas configurações
    echo 3. Toque no arquivo APK para instalar
    echo.
    set /p open="Abrir pasta do APK? (s/n): "
    if /i "%open%"=="s" (
        explorer platforms\android\app\build\outputs\apk\debug\
    )
) else (
    echo ERRO: APK não encontrado no local esperado!
    echo Verifique se o build foi concluído com sucesso.
)

echo.
echo Pressione qualquer tecla para sair...
pause >nul
