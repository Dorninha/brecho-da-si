# 📱 Instruções para Gerar APK Android - Brechó da Si

## 🚀 Pré-requisitos

### 1. Instalar Node.js
- Baixe e instale o Node.js: https://nodejs.org/
- Versão recomendada: 18.x ou superior

### 2. Instalar Java Development Kit (JDK)
- Baixe e instale o JDK 11: https://adoptium.net/
- Configure a variável de ambiente JAVA_HOME

### 3. Instalar Android Studio
- Baixe e instale o Android Studio: https://developer.android.com/studio
- Durante a instalação, certifique-se de instalar:
  - Android SDK
  - Android SDK Platform-Tools
  - Android SDK Build-Tools

### 4. Configurar Variáveis de Ambiente
Adicione ao PATH do sistema:
```
ANDROID_HOME = C:\Users\[SEU_USUARIO]\AppData\Local\Android\Sdk
ANDROID_SDK_ROOT = C:\Users\[SEU_USUARIO]\AppData\Local\Android\Sdk
```

Adicione ao PATH:
```
%ANDROID_HOME%\platform-tools
%ANDROID_HOME%\tools
%ANDROID_HOME%\build-tools\[VERSAO]
```

## 🛠️ Passos para Gerar o APK

### 1. Instalar Cordova Globalmente
```bash
npm install -g cordova
```

### 2. Navegar para o Diretório do Projeto
```bash
cd brecho-da-si-android
```

### 3. Instalar Dependências
```bash
npm install
```

### 4. Adicionar Plataforma Android
```bash
cordova platform add android
```

### 5. Verificar Requisitos
```bash
cordova requirements
```

### 6. Gerar APK de Debug
```bash
cordova build android
```

### 7. Gerar APK de Release (Produção)
```bash
cordova build android --release
```

## 📁 Localização dos APKs Gerados

### APK Debug:
```
platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

### APK Release:
```
platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk
```

## 🔐 Assinar APK para Publicação (Opcional)

### 1. Gerar Keystore
```bash
keytool -genkey -v -keystore brecho-da-si.keystore -alias brecho-da-si -keyalg RSA -keysize 2048 -validity 10000
```

### 2. Assinar APK
```bash
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore brecho-da-si.keystore app-release-unsigned.apk brecho-da-si
```

### 3. Otimizar APK
```bash
zipalign -v 4 app-release-unsigned.apk brecho-da-si-release.apk
```

## 📱 Testar o APK

### 1. Instalar em Dispositivo Android
```bash
adb install platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

### 2. Ou copiar o APK para o dispositivo e instalar manualmente

## 🔧 Comandos Úteis

### Limpar Build
```bash
cordova clean android
```

### Executar no Emulador
```bash
cordova emulate android
```

### Executar em Dispositivo Conectado
```bash
cordova run android
```

### Ver Logs do Dispositivo
```bash
adb logcat
```

## 📋 Checklist de Verificação

- [ ] Node.js instalado
- [ ] JDK 11 instalado e configurado
- [ ] Android Studio instalado
- [ ] Variáveis de ambiente configuradas
- [ ] Cordova instalado globalmente
- [ ] Plataforma Android adicionada
- [ ] Requisitos verificados com sucesso
- [ ] APK gerado com sucesso

## 🚨 Solução de Problemas Comuns

### Erro: "ANDROID_HOME not set"
- Verifique se as variáveis de ambiente estão configuradas corretamente
- Reinicie o terminal/prompt de comando

### Erro: "Java not found"
- Verifique se o JDK está instalado
- Configure a variável JAVA_HOME

### Erro: "SDK not found"
- Abra o Android Studio e instale os SDKs necessários
- Verifique o caminho do ANDROID_HOME

### Erro de Build
- Execute `cordova clean android`
- Tente novamente o build

## 📞 Suporte

Para dúvidas sobre o aplicativo:
- WhatsApp: (11) 99999-9999
- E-mail: contato@brechoda_si.com

---

**Desenvolvido para o Brechó da Si** 💕
*Aplicativo Android nativo para moda sustentável*
