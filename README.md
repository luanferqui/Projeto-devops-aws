# 🚀 DevOps Lab: AWS Infrastructure & Automated Deploy

Este repositório registra um projeto prático de Engenharia DevOps, onde implementei a automação completa de uma aplicação web, desde o provisionamento da nuvem até o deploy contínuo.

## 🏗️ O que este projeto demonstra:
* **Infraestrutura como Código (IaC):** Uso de **Terraform** para provisionar instâncias EC2 e repositórios ECR de forma automatizada.
* **Segurança Avançada:** Autenticação via **OIDC**, eliminando o uso de chaves fixas (Access Keys) no GitHub Actions.
* **Containerização:** Uso de **Docker** para empacotar a aplicação, garantindo consistência entre ambientes.
* **Pipeline CI/CD:** Fluxo automatizado que realiza o build da imagem, push para o registro e deploy via SSH no servidor produtivo.

## 🛠️ Tecnologias
AWS (EC2, ECR, S3), Terraform, Docker, GitHub Actions e Linux (Ubuntu).

---
*Projeto baseado no laboratório da instrutora Maria Lázara.*
