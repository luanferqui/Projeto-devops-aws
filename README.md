# ☁️ Projeto DevOps: Automação de Infraestrutura e Deploy na AWS

<p align="center">
  <img src="https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white" />
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white" />
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white" />
</p>

## 📝 Descrição do Projeto
Este repositório contém um laboratório prático focado na implementação de uma cultura **DevOps End-to-End**. O objetivo foi automatizar o provisionamento de infraestrutura na nuvem e o ciclo de deploy de uma aplicação containerizada, garantindo segurança e escalabilidade.

O projeto utiliza o conceito de **Monorepo**, unindo a gestão da infraestrutura e o código da aplicação em um único ecossistema versionado.

---

## 🏗️ Arquitetura e Soluções Implementadas

### 1. Infraestrutura como Código (IaC)
Localizada no diretório `/infra-as-code`, a infraestrutura foi provisionada via **Terraform**, incluindo:
* **EC2 Instance**: Servidor configurado com Docker via `User Data`.
* **Amazon ECR**: Registro privado para gerenciamento de imagens Docker.
* **Segurança (OIDC)**: Autenticação segura entre GitHub e AWS via Roles IAM, eliminando o uso de Access Keys estáticas.
* **Backend Remoto**: Estado do Terraform armazenado em Bucket S3 para consistência e segurança.

### 2. Automação CI/CD (Documentada)
Os fluxos de automação estão localizados em `/workflows-projeto`. Embora mantidos inativos para fins de portfólio estático, eles demonstram:
* **Integração Contínua (CI)**: Build automático de imagens Docker e push para o ECR.
* **Entrega Contínua (CD)**: Deploy automatizado via SSH na instância produtiva.

---

## 📂 Estrutura do Repositório
```text
projeto-devops-aws/
├── infra-as-code/          # Manifestos Terraform (.tf)
├── repositorio-aplicacao/   # Código da aplicação web e Dockerfile
├── workflows-projeto/       # Arquivos de workflow do GitHub Actions (.yaml)
└── .gitignore               # Proteção de chaves (.pem) e arquivos temporários
