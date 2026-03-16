# ECR
variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

# EC2
variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "key_name" {
  description = "Key pair name for SSH"
  type        = string
}

variable "user_data" {
  description = "User data script"
  type        = string
  default     = ""
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to SSH"
  type        = list(string)
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
}

variable "name" {
  description = "Name prefix"
  type        = string
}

# S3 Backend
variable "bucket_name" {
  description = "S3 bucket name for Terraform state"
  type        = string
}