# 📱 Brechó da Si - Aplicativo Android

## 🎯 Sobre o Projeto

Este é o **aplicativo Android nativo** do **Brechó da Si**, desenvolvido com Apache Cordova para oferecer uma experiência completa de compras de roupas seminovas com entrega delivery.

## ✨ Características do App Android

### 📱 **Aplicativo Nativo**
- **APK instalável** em dispositivos Android
- **Interface nativa** otimizada para mobile
- **Funcionamento offline** para navegação básica
- **Integração com sistema Android** (notificações, compartilhamento)

### 🛍️ **Funcionalidades Completas**
- **Catálogo de Produtos** - 8 produtos de exemplo com filtros
- **Carrinho de Compras** - Persistente com LocalStorage
- **Checkout WhatsApp** - Pedidos enviados automaticamente
- **Calculadora de Frete** - Por CEP com validação
- **Sistema de Busca** - Por nome e categoria
- **Navegação Intuitiva** - Design mobile-first

### 🎨 **Design Personalizado**
- **Tema Brechó da Si** - Cores terrosas (#8B4513, #D2691E, #DEB887)
- **Interface Moderna** - Animações e transições suaves
- **Totalmente Responsivo** - Adapta-se a qualquer tela
- **Ícones Profissionais** - Font Awesome integrado

## 🚀 Como Gerar o APK

### Método Rápido (Recomendado)
1. **Execute o script automático:**
   ```bash
   build-apk.bat
   ```
   
2. **Siga as instruções na tela**

3. **O APK será gerado em:**
   ```
   platforms/android/app/build/outputs/apk/debug/app-debug.apk
   ```

### Método Manual
Consulte o arquivo `BUILD_INSTRUCTIONS.md` para instruções detalhadas.

## 📁 Estrutura do Projeto

```
brecho-da-si-android/
├── config.xml              # Configuração do Cordova
├── package.json            # Dependências do projeto
├── build-apk.bat          # Script de build automático
├── BUILD_INSTRUCTIONS.md   # Instruções detalhadas
├── README.md              # Este arquivo
└── www/                   # Código fonte do app
    ├── index.html         # Interface principal
    ├── styles.css         # Estilos responsivos
    ├── script.js          # Funcionalidades JavaScript
    ├── manifest.json      # Configuração PWA
    └── sw.js             # Service Worker
```

## 🔧 Requisitos do Sistema

### Para Desenvolvimento:
- **Node.js** 18.x ou superior
- **Java JDK** 11
- **Android Studio** com SDK
- **Apache Cordova** (instalado globalmente)

### Para Usuários Finais:
- **Android** 5.1 (API 22) ou superior
- **50 MB** de espaço livre
- **Conexão com internet** para funcionalidades completas

## 📱 Instalação no Android

### 1. **Baixar o APK**
- Faça o download do arquivo `app-debug.apk`

### 2. **Habilitar Fontes Desconhecidas**
- Vá em **Configurações > Segurança**
- Ative **"Fontes desconhecidas"** ou **"Instalar apps desconhecidos"**

### 3. **Instalar o App**
- Toque no arquivo APK baixado
- Confirme a instalação
- O app aparecerá na tela inicial

## 🛍️ Como Usar o App

### **Navegação Principal:**
- **Início** - Produtos em destaque e categorias
- **Produtos** - Catálogo completo com filtros
- **Categorias** - Navegação por tipo de roupa
- **Delivery** - Informações e cálculo de frete
- **Contato** - WhatsApp, Instagram e e-mail

### **Fazendo um Pedido:**
1. **Navegue pelos produtos**
2. **Adicione itens ao carrinho** (ícone no topo)
3. **Revise seu pedido** no carrinho lateral
4. **Clique em "Finalizar Pedido"**
5. **Preencha seus dados** de entrega
6. **Confirme o pedido** (será enviado via WhatsApp)

### **Recursos Especiais:**
- **Busca** - Use o ícone de lupa para pesquisar
- **Filtros** - Filtre por categoria, tamanho e preço
- **Frete** - Calcule o valor da entrega por CEP
- **Compartilhar** - Compartilhe produtos com amigos

## 📞 Contato da Loja

- **📱 WhatsApp:** (11) 99999-9999
- **📸 Instagram:** @brechoda_si  
- **📧 E-mail:** contato@brechoda_si.com

## 🔄 Atualizações

### Versão 1.0.0 (Atual)
- ✅ Lançamento inicial
- ✅ Catálogo completo de produtos
- ✅ Sistema de carrinho e checkout
- ✅ Integração WhatsApp
- ✅ Calculadora de frete
- ✅ Design responsivo

### Próximas Versões
- 🔄 Sistema de avaliações
- 🔄 Lista de desejos (wishlist)
- 🔄 Notificações push
- 🔄 Chat integrado
- 🔄 Cupons de desconto
- 🔄 Programa de fidelidade

## 🛠️ Suporte Técnico

### Problemas Comuns:

**App não instala:**
- Verifique se "Fontes desconhecidas" está habilitado
- Certifique-se de ter espaço suficiente no dispositivo

**App não abre:**
- Reinicie o dispositivo
- Verifique se o Android é 5.1 ou superior

**Pedidos não enviam:**
- Verifique sua conexão com internet
- Certifique-se de ter o WhatsApp instalado

**Para outros problemas:**
- Entre em contato via WhatsApp: (11) 99999-9999

## 📄 Licença

Este aplicativo foi desenvolvido exclusivamente para o **Brechó da Si**.

---

**🌱 Brechó da Si - Moda Sustentável** 💕  
*Aplicativo Android para um futuro mais sustentável*
