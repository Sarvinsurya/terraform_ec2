output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2_instance.instance_id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = module.ec2_instance.public_ip
} 