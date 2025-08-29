
# Logging Module - CloudTrail

# Obtener datos de la cuenta y región
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

# Bucket para logs de CloudTrail
resource "aws_s3_bucket" "logs" {
  bucket = "tf-sec-logs-${data.aws_caller_identity.current.account_id}-${data.aws_region.current.name}"

  lifecycle {
    prevent_destroy = true
  }
}

# Versionado habilitado en el bucket
resource "aws_s3_bucket_versioning" "logs" {
  bucket = aws_s3_bucket.logs.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Cifrado en el bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "logs" {
  bucket = aws_s3_bucket.logs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# KMS key para CloudTrail
resource "aws_kms_key" "logs" {
  description = "KMS key para CloudTrail logs"
  enable_key_rotation = true
}

# Política del bucket (permite a CloudTrail escribir)
resource "aws_s3_bucket_policy" "logs" {
  bucket = aws_s3_bucket.logs.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "cloudtrail.amazonaws.com"
        }
        Action = "s3:PutObject"
        Resource = "${aws_s3_bucket.logs.arn}/AWSLogs/${data.aws_caller_identity.current.account_id}/*"
      },
      {
        Effect = "Allow"
        Principal = {
          Service = "cloudtrail.amazonaws.com"
        }
        Action = "s3:GetBucketAcl"
        Resource = aws_s3_bucket.logs.arn
      }
    ]
  })
}

# Trail de CloudTrail
resource "aws_cloudtrail" "main" {
  name                          = "banking-org-trail"
  s3_bucket_name                = aws_s3_bucket.logs.bucket
  kms_key_id                    = aws_kms_key.logs.arn
  is_multi_region_trail         = true
  include_global_service_events = true
  enable_logging                = true
}

# Output del nombre del bucket
output "logs_bucket_name" {
  description = "Nombre del bucket de logs de CloudTrail"
  value       = aws_s3_bucket.logs.bucket
}
