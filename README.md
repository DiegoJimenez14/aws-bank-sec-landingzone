\# AWS Bank Security Landing Zone



Este proyecto despliega una \*\*arquitectura de seguridad bancaria\*\* en AWS usando \*\*Terraform\*\*.  

Sirve como carta de presentación para demostrar habilidades en \*\*DevSecOps\*\*, \*\*ISO 27001\*\* y \*\*PCI DSS\*\*.



---



\## Arquitectura



!\[Arquitectura de seguridad bancaria](docs/architecture.png)



\*\*Descripción del diagrama:\*\*

\- \*\*CloudTrail + S3 + KMS\*\* → Auditoría de eventos con logs cifrados.

\- \*\*AWS Config + Conformance Pack PCI DSS\*\* → Evaluación de cumplimiento normativo.

\- \*\*GuardDuty\*\* → Detección de amenazas en la cuenta.

\- \*\*Macie\*\* → Descubrimiento de datos sensibles en buckets S3.

\- \*\*Inspector\*\* → Evaluación de vulnerabilidades en EC2, Lambda y ECR.

\- \*\*Security Hub\*\* → Centraliza findings de todos los servicios de seguridad.



---



\##  Servicios desplegados



\- \*\*CloudTrail\*\* → Logs de auditoría centralizados.

\- \*\*AWS Config\*\* → Configuration Recorder + Delivery Channel.

\- \*\*Conformance Pack PCI DSS v4.0.1\*\* → Controles alineados a PCI DSS.

\- \*\*Security Hub\*\* → Findings centralizados con los estándares:

&nbsp; - AWS Foundational Security Best Practices v1.0.0

&nbsp; - PCI DSS v4.0.1

\- \*\*GuardDuty\*\* → Detección de amenazas (malicious IPs, anomalías, etc).

\- \*\*Macie\*\* → Escaneo de buckets S3 en busca de datos sensibles.

\- \*\*Inspector\*\* → Vulnerabilidades en EC2, Lambda y ECR.



---



\## Relación con normas



\### ISO 27001

\- \*\*A.12: Registro de eventos\*\* → CloudTrail + S3.

\- \*\*A.16: Gestión de incidentes\*\* → Security Hub + GuardDuty + Inspector.

\- \*\*A.18: Cumplimiento normativo\*\* → Config + Conformance Pack.



\### PCI DSS v4.0

\- \*\*Requisito 3\*\*: Protección de datos sensibles → S3 cifrado, Macie, KMS.

\- \*\*Requisito 10\*\*: Monitorización de logs → CloudTrail.

\- \*\*Requisito 11\*\*: Pruebas de seguridad y monitoreo → Inspector, GuardDuty.



---



\##  Uso



\### Clonar el repo

```bash

git clone https://github.com/DiegoJimenez14/aws-bank-sec-landingzone.git

cd aws-bank-sec-landingzone/iac/terraform/envs/dev



Optimización de costos



S3 buckets → costo mínimo (centavos).



CloudTrail → primer trail gratis.



Config → cobra por reglas activas (se despliega solo 1 conformance pack).



Security Hub, GuardDuty, Macie, Inspector → gratis primeros 30 días.



IMPORTANTE

⚠️ Recuerda deshabilitarlos o destruir recursos si no se usan después de la demo.







aws-bank-sec-landingzone/

├─ README.md

├─ docs/

│  └─ architecture.png

├─ iac/

│  └─ terraform/

│     ├─ envs/

│     │  └─ dev/

│     │     ├─ backend.tf

│     │     └─ main.tf

│     └─ modules/

│        ├─ logging/

│        │  └─ main.tf

│        ├─ config/

│        │  └─ main.tf

│        ├─ securityhub/

│        │  └─ main.tf

│        ├─ guardduty/

│        │  └─ main.tf

│        ├─ macie/

│        │  └─ main.tf

│        └─ inspector/

│           └─ main.tf



Licencia



Este proyecto es educativo y demostrativo.

Puedes usarlo, modificarlo y adaptarlo libremente bajo la licencia MIT.

No se recomienda su uso directo en entornos de producción.

