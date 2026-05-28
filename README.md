# DevOps na Prática — Fase 1

Projeto da disciplina DevOps na Prática (PUCRS Online).  
Fase 1: Configuração e Automação Inicial.

## 📋 Sobre o Projeto

Aplicação web de gerenciamento de tarefas (To-Do App) com pipeline de Integração Contínua (CI) e infraestrutura como código na AWS.

## 🚀 Tecnologias Utilizadas

- Node.js 18
- Jest (testes unitários)
- ESLint (qualidade de código)
- GitHub Actions (pipeline CI)
- Terraform (infraestrutura como código)
- AWS (EC2, RDS, S3)

## 📁 Estrutura do Projeto
devops-fase1/
├── src/               # Código-fonte da aplicação
├── tests/             # Testes unitários
├── terraform/         # Scripts de infraestrutura como código
├── .github/
│   └── workflows/
│       └── ci.yml     # Pipeline de Integração Contínua
└── docs/              # Documentação

## ⚙️ Como Executar Localmente

```bash
# Instalar dependências
npm install

# Executar testes
npm test

# Executar lint
npm run lint
```

## 🔄 Pipeline CI

O pipeline é executado automaticamente a cada push ou pull request para as branches `main` e `develop`.

**Etapas:**
1. Checkout do código
2. Configuração do Node.js 18
3. Instalação de dependências
4. Lint (ESLint)
5. Testes unitários automatizados com Jest
6. Build da aplicação

## 🏗️ Infraestrutura como Código

Provisionamento via Terraform na AWS:

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

**Recursos provisionados:**
- EC2 t3.micro (servidor da aplicação)
- RDS PostgreSQL db.t3.micro (banco de dados)
- S3 (armazenamento de arquivos)

## 👤 Autor

Rayane Nunes Reis — PUCRS Online