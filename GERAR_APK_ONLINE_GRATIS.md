# 🚀 Como Gerar APK Online Gratuitamente

## 📱 Opções Gratuitas para Gerar APK

### 1. 🌟 **PhoneGap Build (Adobe) - RECOMENDADO**

**✅ Vantagens:**
- Totalmente gratuito
- Interface simples
- Suporte completo ao Cordova
- Gera APK automaticamente

**📋 Passos:**

1. **Acesse:** https://build.phonegap.com
2. **Crie uma conta** gratuita
3. **Faça upload do projeto:**
   - Compacte a pasta `brecho-da-si-android` em ZIP
   - Ou conecte com GitHub
4. **Configure o build:**
   - Selecione "Android"
   - Clique em "Build"
5. **Baixe o APK** gerado

### 2. 🔧 **Monaca (OnsenUI)**

**📋 Passos:**
1. **Acesse:** https://monaca.io
2. **Crie conta gratuita**
3. **Importe projeto Cordova**
4. **Build para Android**
5. **Baixe o APK**

### 3. 🌐 **Ionic Appflow**

**📋 Passos:**
1. **Acesse:** https://ionic.io/appflow
2. **Plano gratuito disponível**
3. **Upload do projeto**
4. **Build automático**

### 4. 🛠️ **Apache Cordova Online Build**

**📋 Passos:**
1. **GitHub Actions** (gratuito)
2. **Configuração automática**
3. **Build na nuvem**

## 🎯 **MÉTODO MAIS FÁCIL - PhoneGap Build**

### Passo a Passo Detalhado:

#### 1️⃣ **Preparar o Projeto**
```bash
# Já está pronto! Use a pasta brecho-da-si-android
```

#### 2️⃣ **Compactar Arquivos**
- Selecione todos os arquivos dentro de `brecho-da-si-android`
- Clique com botão direito → "Enviar para" → "Pasta compactada"
- Nomeie como `brecho-da-si.zip`

#### 3️⃣ **Upload no PhoneGap Build**
1. Vá para https://build.phonegap.com
2. Clique em "Sign Up" (criar conta)
3. Faça login
4. Clique em "Upload a .zip file"
5. Selecione o arquivo `brecho-da-si.zip`
6. Clique em "Create App"

#### 4️⃣ **Gerar APK**
1. Aguarde o processamento
2. Clique no ícone do Android
3. Clique em "Download"
4. Seu APK estará pronto!

## 🔄 **Alternativa: GitHub + Actions (100% Gratuito)**

### Configuração Automática:

#### 1️⃣ **Criar Repositório GitHub**
1. Vá para https://github.com
2. Crie um novo repositório
3. Faça upload da pasta `brecho-da-si-android`

#### 2️⃣ **Configurar GitHub Actions**
Crie o arquivo `.github/workflows/build-android.yml`:

```yaml
name: Build Android APK

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v2
    
    - name: Setup Node.js
      uses: actions/setup-node@v2
      with:
        node-version: '16'
    
    - name: Setup Java
      uses: actions/setup-java@v2
      with:
        distribution: 'adopt'
        java-version: '11'
    
    - name: Setup Android SDK
      uses: android-actions/setup-android@v2
    
    - name: Install Cordova
      run: npm install -g cordova
    
    - name: Install dependencies
      run: npm install
    
    - name: Add Android platform
      run: cordova platform add android
    
    - name: Build APK
      run: cordova build android --release
    
    - name: Upload APK
      uses: actions/upload-artifact@v2
      with:
        name: app-release
        path: platforms/android/app/build/outputs/apk/release/
```

#### 3️⃣ **Baixar APK**
1. Vá na aba "Actions" do seu repositório
2. Clique no build mais recente
3. Baixe o artifact "app-release"

## 🌟 **Opção Mais Simples: PWA (Progressive Web App)**

**Seu app já é um PWA! Pode ser instalado diretamente:**

1. **Abra no celular:** `file:///caminho/para/brecho-da-si/index.html`
2. **No navegador:** Clique em "Adicionar à tela inicial"
3. **Funciona como app nativo!**

## 📱 **Teste Rápido - APK Online Builder**

### Serviços Instantâneos:

1. **AppMakr** - https://appmakr.com
2. **Appy Pie** - https://appypie.com
3. **BuildFire** - https://buildfire.com

**Passos:**
1. Faça upload dos arquivos HTML/CSS/JS
2. Configure as informações do app
3. Gere o APK automaticamente

## 🎯 **RECOMENDAÇÃO FINAL**

**Para seu caso específico, recomendo:**

1. **PhoneGap Build** (mais fácil)
2. **GitHub Actions** (mais profissional)
3. **PWA direto** (mais rápido)

## 📞 **Suporte**

Se precisar de ajuda:
1. Documentação do PhoneGap: https://docs.phonegap.com
2. Comunidade Cordova: https://cordova.apache.org
3. Stack Overflow: https://stackoverflow.com/questions/tagged/cordova

## ✅ **Checklist Final**

- [ ] Conta criada no PhoneGap Build
- [ ] Projeto compactado em ZIP
- [ ] Upload realizado
- [ ] APK gerado e baixado
- [ ] App testado no dispositivo

**Tempo estimado: 15-30 minutos**
**Custo: R$ 0,00 (100% gratuito)**
