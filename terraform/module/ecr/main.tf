resource "aws_ecr_repository" "backend" {
  name                 = "${var.project_name}-backend"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "frontend" {
  name                 = "${var.project_name}-frontend"
  image_tag_mutability = "MUTABLE"
  force_delete         = true


  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_name}-frontend"
  }
}

resource "aws_ecr_lifecycle_policy" "backend_lifecycle_policy" {
  repository = aws_ecr_repository.backend.name

  policy     = <<EOF
  {
    "rules": [
      {
        "rulePriority": 1,
        "description": "Keep only 5 most recent images",
        "selection": {
          "tagStatus": "any",
          "countType": "imageCountMoreThan",
          "countNumber": 5
        },
        "action": {
          "type": "expire"
        }
      }
    ]
  }
  EOF
}

resource "aws_ecr_lifecycle_policy" "frontend_lifecycle_policy" {
  repository = aws_ecr_repository.frontend.name

  policy     = <<EOF
  {
    "rules": [
      {
        "rulePriority": 1,
        "description": "Keep only 5 most recent images",
        "selection": {
          "tagStatus": "any",
          "countType": "imageCountMoreThan",
          "countNumber": 5
        },
        "action": {
          "type": "expire"
        }
      }
    ]
  }
  EOF
}