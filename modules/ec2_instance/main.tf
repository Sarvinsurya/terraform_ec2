resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  tags          = var.tags

  monitoring     = var.monitoring
  ebs_optimized  = var.ebs_optimized

  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    encrypted = true
  }

  iam_instance_profile = var.iam_instance_profile
} 