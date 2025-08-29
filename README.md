# 🏦 AWS Bank Security Landing Zone  

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Terraform](https://img.shields.io/badge/IaC-Terraform-blue.svg)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/Cloud-AWS-orange.svg)](https://aws.amazon.com/)

Infraestructura de seguridad bancaria en **AWS** desplegada con **Terraform**.  
Un proyecto demostrativo para prácticas de **DevSecOps** y cumplimiento de **ISO 27001** y **PCI DSS**.  

AWS Bank Security Landing Zone

Este proyecto demuestra cómo desplegar una arquitectura de seguridad bancaria en AWS mediante Infrastructure as Code con Terraform, alineada con los controles de ISO 27001 y PCI DSS.

La solución integra servicios nativos de AWS como CloudTrail, Config, Security Hub, GuardDuty, Macie e Inspector, permitiendo:
✅ Auditoría y trazabilidad de eventos (CloudTrail + S3 + KMS)
✅ Gestión de cumplimiento normativo (AWS Config + Conformance Pack PCI DSS)
✅ Detección de amenazas en tiempo real (GuardDuty)
✅ Protección de datos sensibles (Macie)
✅ Evaluación continua de vulnerabilidades (Inspector)
✅ Centralización de hallazgos de seguridad (Security Hub)

Con este enfoque, se demuestra cómo la automatización con Terraform puede:

 🔒 Fortalecer la postura de seguridad en la nube.
📏 Alinear la operación con estándares regulatorios.
⚡ Reducir esfuerzo manual y asegurar la consistencia del cumplimiento.

Un proyecto diseñado para mostrar habilidades en DevSecOps, cumplimiento regulatorio y seguridad en la nube, aplicable a entornos críticos como el sector bancario. 



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

## 💸 Costos  

- 💾 **S3 y CloudTrail** → centavos  
- 📏 **Config** → cobra por reglas activas  
- 🛡 **Security Hub, GuardDuty, Macie, Inspector** → gratis el primer mes  

⚠️ **Importante:** desactivar tras la demo para evitar cargos.  

---
## 📂 Estructura del Proyecto  

**Terraform IaC**  

```
📁 aws-bank-sec-landingzone  
 ├─ 📄 README.md  
 ├─ 📂 docs/  
 │   └─ 🖼️ architecture.png  
 ├─ 📂 iac/  
 │   └─ 📂 terraform/  
 │       ├─ 📂 envs/  
 │       │   └─ 📂 dev/  
 │       │       ├─ ⚙️ backend.tf  
 │       │       └─ ⚙️ main.tf  
 │       └─ 📂 modules/  
 │           ├─ 📝 logging/  
 │           ├─ 📝 config/  
 │           ├─ 📝 securityhub/  
 │           ├─ 📝 guardduty/  
 │           ├─ 📝 macie/  
 │           └─ 📝 inspector/  
```

---

 
## 📄 License  

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.  




