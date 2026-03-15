terraform {
  backend "s3" {
    bucket = "fastapi-terraform-state-bucket-2026"
    key    = "terraform.tfstate"
    region = "eu-north-1"
  }
}