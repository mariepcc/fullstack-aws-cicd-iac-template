module "ecr" {
  source       = "./module/ecr"
  repo_name    = var.repo_name
}

module "ec2" {
  source            = "./module/ec2"
  instance_type     = var.instance_type
  subnet_id         = local.first_subnet_id
  vpc_id            = data.aws_vpc.default.id
  key_name          = var.key_name
  user_data         = file("userdata.sh")
  allowed_ssh_cidrs = var.allowed_ssh_cidrs
  tags              = var.tags
  name              = var.name
}