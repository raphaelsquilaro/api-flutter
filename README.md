# 📱 Consultas Flutter — CEP, CNPJ e Dólar

Aplicativo desenvolvido em **Flutter/Dart** para realizar consultas utilizando APIs externas. O projeto permite consultar informações de **endereço através de CEP**, **dados cadastrais de empresas através de CNPJ** e a **cotação do dólar em relação ao real (USD/BRL)**.

## 🚀 Funcionalidades

O aplicativo possui três funcionalidades principais:

- 📍 **Consulta de CEP**
  - Informa o logradouro;
  - Informa o bairro;
  - Informa a cidade;
  - Informa o estado (UF).

- 🏢 **Consulta de CNPJ**
  - Exibe a razão social;
  - Exibe o nome fantasia;
  - Exibe a situação cadastral da empresa.

- 💵 **Consulta do Dólar**
  - Consulta a cotação USD/BRL;
  - Exibe o nome da cotação;
  - Exibe o maior valor registrado (`high`) retornado pela API.

## 🛠️ Tecnologias utilizadas

- **Flutter**
- **Dart**
- **HTTP** — realização das requisições HTTP
- **JSON** — processamento dos dados recebidos pelas APIs

## 🌐 APIs utilizadas

### 📍 ViaCEP

Utilizada para consultar informações de endereço através do CEP.

```text
https://viacep.com.br/ws/{CEP}/json/
```

### 🏢 OpenCNPJ

Utilizada para consultar informações cadastrais de empresas através do CNPJ.

```text
https://api.opencnpj.org/{CNPJ}
```

### 💵 AwesomeAPI

Utilizada para consultar a cotação do dólar em relação ao real.

```text
https://economia.awesomeapi.com.br/last/USD-BRL
```

## 📦 Dependências

O projeto utiliza o pacote `http` para realizar as requisições às APIs.

No arquivo `pubspec.yaml`, adicione:

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.0.0
```

Depois, execute:

```bash
flutter pub get
```

> A versão do pacote `http` pode ser atualizada conforme a versão disponível no momento.

## ▶️ Como executar o projeto

### 1. Clone o repositório

```bash
git clone https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git
```

### 2. Acesse a pasta

```bash
cd SEU-REPOSITORIO
```

### 3. Instale as dependências

```bash
flutter pub get
```

### 4. Execute o aplicativo

```bash
flutter run
```

Você também pode executar diretamente pelo **Android Studio** ou **Visual Studio Code** com um dispositivo/emulador conectado.

## 📂 Estrutura sugerida

Uma organização possível para o projeto:

```text
lib/
├── main.dart
├── cep.dart
├── cnpj.dart
└── dolar.dart
```

Cada tela possui um `StatefulWidget` responsável por realizar a consulta e atualizar a interface com os dados retornados pela API.

## 🔄 Como funciona

O fluxo básico das consultas é:

```text
Usuário
   ↓
Informa o CEP/CNPJ ou solicita a cotação
   ↓
Aplicativo Flutter
   ↓
Requisição HTTP
   ↓
API externa
   ↓
Resposta em JSON
   ↓
jsonDecode()
   ↓
Atualização da interface
```

## 🧩 Conceitos utilizados

Este projeto utiliza alguns conceitos importantes do Flutter e Dart:

- `StatefulWidget`
- `State`
- `TextEditingController`
- `Future<void>`
- Programação assíncrona com `async/await`
- Requisições HTTP com `http.get()`
- Conversão de JSON com `jsonDecode()`
- Atualização da interface com `setState()`
- Navegação entre telas com `Navigator`

## ⚠️ Tratamento de erros

A versão atual do projeto apresenta uma implementação simples e pode ser aprimorada adicionando tratamento para situações como:

- CEP ou CNPJ inválido;
- API indisponível;
- Falha de conexão com a internet;
- Resposta JSON inesperada;
- Campos inexistentes na resposta da API.

Uma evolução futura seria utilizar `try/catch` e apresentar mensagens de erro amigáveis ao usuário.

## 💡 Melhorias futuras

Algumas melhorias que podem ser adicionadas ao projeto:

- [ ] Validação de CEP e CNPJ;
- [ ] Máscaras para os campos de entrada;
- [ ] Indicador de carregamento durante as consultas;
- [ ] Tratamento de erros de conexão;
- [ ] Melhorias no design da interface;
- [ ] Separação da lógica de API da interface;
- [ ] Criação de componentes reutilizáveis;
- [ ] Histórico de consultas;
- [ ] Testes automatizados;
- [ ] Tema claro e escuro.

## 🎯 Objetivo

O objetivo deste projeto é praticar o desenvolvimento de aplicações Flutter que consomem **APIs REST**, trabalhando com requisições HTTP, dados em JSON, programação assíncrona e atualização dinâmica da interface.

---

## 👨‍💻 Autor

Desenvolvido com **Flutter + Dart** como projeto de estudo e prática de integração com APIs.

⭐ Se este projeto foi útil para você, considere deixar uma estrela no repositório!
