# 🏦 AWS Bank Security Landing Zone  

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Terraform](https://img.shields.io/badge/IaC-Terraform-blue.svg)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/Cloud-AWS-orange.svg)](https://aws.amazon.com/)

Infraestructura de seguridad bancaria en **AWS** desplegada con **Terraform**.  
Un proyecto demostrativo para prácticas de **DevSecOps** y cumplimiento de **ISO 27001** y **PCI DSS**.  




Infraestructura de seguridad bancaria en **AWS** desplegada con **Terraform**.  

Un proyecto demostrativo para prácticas de **DevSecOps** y cumplimiento de **ISO 27001** y **PCI DSS**.  



---



## ⚡ Stack de Seguridad  


- ☁️ **CloudTrail + S3 + KMS** → Auditoría centralizada y logs cifrados  
- 📏 **AWS Config + Conformance Pack PCI DSS** → Evaluación de cumplimiento normativo  
- 🛡 **Security Hub** → Findings centralizados  
- 👁 **GuardDuty** → Detección de amenazas  
- 🔍 **Macie** → Descubrimiento de datos sensibles en S3  
- 🧪 **Inspector** → Evaluación de vulnerabilidades en EC2, Lambda y ECR  



---



## 📊 Arquitectura  

<img width="1536" height="1024" alt="Arquitectura" src="https://github.com/user-attachments/assets/2c5141f1-0281-4f38-b12e-6671e63d2c85" />





---


## 🚀 Deploy  

```bash
# Clonar el repo
git clone https://github.com/DiegoJimenez14/aws-bank-sec-landingzone.git
cd aws-bank-sec-landingzone/iac/terraform/envs/dev

# Inicializar Terraform
terraform init
terraform plan
terraform apply -auto-approve

# Destruir recursos (para evitar costos)
terraform destroy -auto-approve

```


---


 




