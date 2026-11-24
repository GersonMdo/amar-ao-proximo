# Amar ao Próximo

## Sistema de Gestão de Doações

O **Amar ao Próximo** é um projeto acadêmico desenvolvido com o objetivo de apoiar organizações sociais no gerenciamento de doações destinadas a famílias em situação de vulnerabilidade.

A proposta é facilitar a organização de alimentos, roupas e outros produtos recebidos, contribuindo para uma distribuição mais eficiente e transparente.

## Objetivo do projeto

Desenvolver uma plataforma web que permita, futuramente:

- Cadastrar doadores.
- Registrar doações de alimentos, roupas e outros produtos.
- Controlar os itens disponíveis em estoque.
- Cadastrar famílias beneficiadas.
- Acompanhar a distribuição das doações.
- Gerar relatórios de doações recebidas e entregues.

## Tecnologias utilizadas

- **HTML5:** estrutura da página.
- **CSS3:** aparência e apresentação visual.
- **JavaScript:** funcionalidades da aplicação.
- **Vite+:** ambiente de desenvolvimento.
- **Node.js:** execução do servidor.
- **Express:** criação da API.
- **dotenv:** gerenciamento de variáveis de ambiente.
- **Git e GitHub:** versionamento e armazenamento do código.

## Funcionalidades implementadas

Nesta primeira etapa, foram desenvolvidas:

- Estrutura inicial do projeto.
- Configuração das variáveis de ambiente.
- API Express com endpoint `/api/health`.
- Comunicação entre frontend e backend.
- Página inicial com identificação do projeto e status da API.

## Como executar o projeto

**1. Instalar as dependências**

```bash
npm install
```

**2. Configurar as variáveis de ambiente**

Criar o arquivo `.env` na raiz do projeto, utilizando `.env.example` como referência.

```env
PORT=3000
```

**3. Iniciar a API**

```bash
vp run api
```

**4. Iniciar o frontend em outro terminal**

```bash
vp dev
```

**5. Acessar no navegador**

Frontend: http://localhost:5173

API: http://localhost:3000/api/health

## Status do desenvolvimento

**Etapa 1:** estrutura inicial e comunicação com a API — concluída.

**Próximas etapas:** desenvolvimento dos cadastros, gerenciamento de doações e funcionalidades administrativas.

## Projeto acadêmico

Projeto desenvolvido como atividade de aprendizagem em desenvolvimento web, com foco na aplicação prática de tecnologias frontend e backend.
