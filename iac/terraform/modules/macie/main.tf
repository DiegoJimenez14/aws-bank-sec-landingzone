
# Macie Module


# Activar Macie
resource "aws_macie2_account" "main" {
  finding_publishing_frequency = "FIFTEEN_MINUTES"
  status                       = "ENABLED"
}

# Job de clasificación (ejemplo en un bucket)
# NOTA: Cambia el bucket_name por un bucket real si quieres ejecutarlo.
resource "aws_macie2_classification_job" "example" {
  job_type = "ONE_TIME"
  name     = "macie-discovery-job"
  s3_job_definition {
    bucket_definitions {
      account_id = data.aws_caller_identity.current.account_id
      buckets    = [] # <-- agrega aquí buckets válidos para Macie
    }
  }
  depends_on = [aws_macie2_account.main]
}

# Datos de la cuenta
data "aws_caller_identity" "current" {}

# Output
output "macie_status" {
  description = "Estado de Macie habilitado"
  value       = aws_macie2_account.main.status
}
