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

```mermaid
flowchart TB
    subgraph AWS["AWS Región"]
        CT[CloudTrail] -->|Logs| S3[(S3 Logs Bucket)]
        S3 -->|Cifrado| KMS[(KMS Key)]

        CFG[AWS Config] --> CP[Conformance Pack PCI DSS]
        CP --> SH[Security Hub]

        GD[GuardDuty] --> SH
        MAC[Macie] --> SH
        INSP[Inspector] --> SH
    end

    style S3 fill:#fdd,stroke:#333,stroke-width:2px
    style SH fill:#ffd700,stroke:#333,stroke-width:2px




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



💸 Costos



💾 S3 y CloudTrail → centavos



📏 Config → cobra por reglas activas



🛡 Security Hub, GuardDuty, Macie, Inspector → gratis el primer mes

⚠️ Importante: desactivar tras la demo para evitar cargos.



📂 Proyecto



aws-bank-sec-landingzone/

├─ README.md

├─ docs/

│  └─ architecture.png

├─ iac/

│  └─ terraform/

│     ├─ envs/

│     │  └─ dev/

│     └─ modules/

│        ├─ logging/

│        ├─ config/

│        ├─ securityhub/

│        ├─ guardduty/

│        ├─ macie/

│        └─ inspector/



📜 Licencia

MIT © Diego Jiménez



