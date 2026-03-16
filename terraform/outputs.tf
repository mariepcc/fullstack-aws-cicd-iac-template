output "ecr_backend_repo_url" {
  description = "The URL of the created ECR backend repository"
  value       = module.ecr.backend_repository_url
}

output "ecr_frontend_repo_url" {
  description = "The URL of the created ECR frontend repository"
  value       = module.ecr.frontend_repository_url
}

output "key_name" {
  value = aws_key_pair.deployer_key.key_name
}

output "ec2_host" {
  value = module.ec2.ec2_public_ip
}