terraform {
  backend "s3" {
    bucket         = "tf-backend-diego-2025"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-backend-diego-locks"
    encrypt        = true
  }
}
