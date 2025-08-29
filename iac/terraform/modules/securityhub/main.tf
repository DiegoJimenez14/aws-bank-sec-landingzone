
# Security Hub Module


# Habilitar Security Hub
resource "aws_securityhub_account" "main" {
  depends_on = []
}

# Activar estándares en Security Hub
resource "aws_securityhub_standards_subscription" "foundational" {
  standards_arn = "arn:aws:securityhub:::standards/aws-foundational-security-best-practices/v/1.0.0"
  depends_on    = [aws_securityhub_account.main]
}

resource "aws_securityhub_standards_subscription" "pci" {
  standards_arn = "arn:aws:securityhub:::standards/pci-dss/v/3.2.1"
  depends_on    = [aws_securityhub_account.main]
}

# Output
output "securityhub_status" {
  description = "Estado de Security Hub habilitado"
  value       = aws_securityhub_account.main.id
}
