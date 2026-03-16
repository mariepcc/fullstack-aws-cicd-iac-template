aws_region   = "eu-north-1"
project_name    = "app"

instance_type     = "t3.micro"
key_name          = "deployer_key"
allowed_ssh_cidrs = ["0.0.0.0/0"]
name              = "fastapi-ec2"
tags = {
  Environment = "dev"
  Project     = "ECR-EC2-Deployment"
}
bucket_name = "fastapi-terraform-state-bucket-2026"