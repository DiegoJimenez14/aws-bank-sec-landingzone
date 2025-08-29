
# Inspector Module


# Activar Inspector v2
resource "aws_inspector2_enabler" "main" {
  account_ids   = [data.aws_caller_identity.current.account_id]
  resource_types = ["EC2", "ECR", "LAMBDA"]
}

# Datos de la cuenta
data "aws_caller_identity" "current" {}

# Output
output "inspector_enabled" {
  description = "Inspector habilitado en EC2, ECR y Lambda"
  value       = aws_inspector2_enabler.main.resource_types
}
