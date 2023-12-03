output "ami_id" {
  value = aws_instance.my_vm
}

output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value = aws_instance.my_vm.public_ip
}

output "ec2_private_ip" {
  description = "The private IP address of the EC2 instance"
  value = aws_instance.my_vm.private.ip
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
  sensitive   = false
}