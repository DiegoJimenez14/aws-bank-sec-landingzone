# GuardDuty Module


# Activar GuardDuty en la cuenta
resource "aws_guardduty_detector" "main" {
  enable = true
}

# Output
output "guardduty_detector_id" {
  description = "ID del detector de GuardDuty"
  value       = aws_guardduty_detector.main.id
}
