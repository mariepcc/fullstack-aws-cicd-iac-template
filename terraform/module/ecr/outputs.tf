output "backend_repository_url" {
  description = "The URL of the ECR backend repository"
  value       = aws_ecr_repository.backend.repository_url
}

output "frontend_repository_url" {
  description = "The URL of the ECR frontend repository"
  value       = aws_ecr_repository.frontend.repository_url
}