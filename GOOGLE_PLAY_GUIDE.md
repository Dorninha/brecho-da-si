
# 📱 Guia Completo: Gerar APK e Publicar na Google Play Store

## 🎯 **Brechó da Si - Aplicativo Android**

### 📋 **Pré-requisitos**

#### 1. **Instalar Android Studio**
- Baixe em: https://developer.android.com/studio
- Instale o Android SDK
- Configure as variáveis de ambiente:
  - `ANDROID_HOME` = caminho para o SDK
  - `JAVA_HOME` = caminho para o JDK

#### 2. **Instalar Node.js e Cordova**
```bash
npm install -g cordova
```

#### 3. **Verificar Instalação**
```bash
cordova requirements android
```

---

## 🔧 **Passo 1: Preparar o Projeto**

### 1.1 **Adicionar Plataforma Android**
```bash
cd brecho-da-si-android
cordova platform add android
```

### 1.2 **Instalar Plugins Necessários**
```bash
cordova plugin add cordova-plugin-whitelist
cordova plugin add cordova-plugin-statusbar
cordova plugin add cordova-plugin-device
cordova plugin add cordova-plugin-splashscreen
```

---

## 🏗️ **Passo 2: Gerar APK de Debug**

### 2.1 **Build de Desenvolvimento**
```bash
cordova build android
```

### 2.2 **Localizar APK**
O APK será gerado em:
```
platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

---

## 🔐 **Passo 3: Gerar APK Assinado para Produção**

### 3.1 **Criar Keystore (Chave de Assinatura)**
```bash
keytool -genkey -v -keystore brecho-da-si.keystore -alias brecho-da-si -keyalg RSA -keysize 2048 -validity 10000
```

**Informações para preencher:**
- Nome: Brechó da Si
- Organização: Brechó da Si
- Cidade: Amparo
- Estado: SP
- País: BR
- Senha: [escolha uma senha forte e guarde bem]

### 3.2 **Configurar Build para Release**
Crie o arquivo `platforms/android/release-signing.properties`:
```
storeFile=../../brecho-da-si.keystore
keyAlias=brecho-da-si
storePassword=[sua_senha]
keyPassword=[sua_senha]
```

### 3.3 **Gerar APK Assinado**
```bash
cordova build android --release
```

O APK final estará em:
```
platforms/android/app/build/outputs/apk/release/app-release.apk
```

---

## 📱 **Passo 4: Preparar para Google Play Store**

### 4.1 **Criar Conta de Desenvolvedor**
1. Acesse: https://play.google.com/console
2. Pague a taxa única de $25 USD
3. Complete o perfil de desenvolvedor

### 4.2 **Informações Necessárias**

#### **Metadados do App:**
- **Nome**: Brechó da Si
- **Descrição Curta**: Moda sustentável com entrega delivery
- **Descrição Completa**:
```
🛍️ Brechó da Si - Moda Sustentável

Descubra roupas seminovas com estilo, qualidade e preço justo! 

✨ FUNCIONALIDADES:
• Catálogo completo de roupas femininas
• Filtros por categoria, tamanho e preço
• Carrinho de compras inteligente
• Entrega delivery rápida
• Calculadora de frete
• Integração com WhatsApp para pedidos

🚚 DELIVERY:
• Entrega em até 2 horas na região central
• Frete grátis para compras acima de R$ 80
• Cobertura em Amparo/SP e região

🌱 SUSTENTABILIDADE:
Contribua para um mundo mais sustentável comprando roupas seminovas de qualidade.

📍 LOCALIZAÇÃO:
Rua Finlândia, 134 - Jardim Camandocaia, Amparo/SP

📱 CONTATO:
WhatsApp: (19) 95325-1162
E-mail: contato@brechoda_si.com
```

#### **Categoria**: Shopping
#### **Classificação**: Livre para todos os públicos
#### **Idioma**: Português (Brasil)

### 4.3 **Assets Necessários**

#### **Ícones do App:**
- 512x512 px (ícone principal)
- 192x192 px
- 144x144 px
- 96x96 px
- 72x72 px
- 48x48 px

#### **Screenshots:**
- Pelo menos 2 screenshots
- Tamanhos: 320x480, 480x800, 720x1280, 1080x1920
- Mostrar: tela inicial, produtos, carrinho, contato

#### **Banner da Loja:**
- 1024x500 px
- Imagem promocional do app

---

## 🚀 **Passo 5: Upload na Google Play Store**

### 5.1 **Criar Novo App**
1. Acesse Google Play Console
2. Clique em "Criar app"
3. Preencha as informações básicas

### 5.2 **Upload do APK**
1. Vá para "Versões do app" > "Produção"
2. Clique em "Criar nova versão"
3. Faça upload do APK assinado
4. Preencha as notas da versão

### 5.3 **Configurar Listagem da Loja**
1. Adicione título e descrição
2. Faça upload dos screenshots
3. Adicione ícone e banner
4. Configure categoria e classificação

### 5.4 **Política de Privacidade**
Crie uma política de privacidade simples:
```
POLÍTICA DE PRIVACIDADE - BRECHÓ DA SI

O aplicativo Brechó da Si coleta apenas as informações necessárias para processar pedidos:
- Nome e telefone para contato
- Endereço para entrega
- Preferências de produtos para melhor experiência

Não compartilhamos dados com terceiros.
Não coletamos informações pessoais desnecessárias.
Os dados são usados apenas para processar pedidos via WhatsApp.

Contato: contato@brechoda_si.com
```

### 5.5 **Revisão e Publicação**
1. Complete todos os campos obrigatórios
2. Envie para revisão
3. Aguarde aprovação (1-3 dias)
4. Publique o app

---

## 📊 **Passo 6: Monitoramento e Atualizações**

### 6.1 **Acompanhar Métricas**
- Downloads
- Avaliações
- Comentários dos usuários
- Relatórios de crash

### 6.2 **Atualizações Futuras**
Para atualizar o app:
1. Incremente o versionCode no config.xml
2. Gere novo APK assinado
3. Faça upload da nova versão
4. Publique a atualização

---

## 🎯 **Checklist Final**

### ✅ **Antes de Publicar:**
- [ ] APK assinado gerado
- [ ] Testado em dispositivos reais
- [ ] Screenshots capturadas
- [ ] Ícones criados
- [ ] Descrição escrita
- [ ] Política de privacidade criada
- [ ] Conta de desenvolvedor ativa
- [ ] Taxa de $25 paga

### ✅ **Informações do App:**
- [ ] Nome: Brechó da Si
- [ ] Pacote: com.brechoda_si.app
- [ ] Versão: 1.0.0
- [ ] WhatsApp: (19) 95325-1162
- [ ] Endereço: Rua Finlândia, 134, Amparo/SP

---

## 🆘 **Suporte e Contatos**

### **Documentação Oficial:**
- Cordova: https://cordova.apache.org/docs/
- Google Play Console: https://support.google.com/googleplay/android-developer/

### **Próximos Passos:**
1. Instalar Android Studio
2. Configurar ambiente de desenvolvimento
3. Gerar APK assinado
4. Criar assets (ícones, screenshots)
5. Publicar na Google Play Store

---

**🎉 Sucesso! Seu app estará disponível na Google Play Store para milhões de usuários!**
