provider "aws" {
  region = var.aws_region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  tags          = var.tags
  monitoring    = var.monitoring
  ebs_optimized = var.ebs_optimized
  iam_instance_profile = var.iam_instance_profile
} 