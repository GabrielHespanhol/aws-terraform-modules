# Aqui estamos criando um output para criação de nosso EC2
output "ec2_instance_id" {
  value       = aws_instance.ec2_instance.id
  description = "EC2 instance ID"
}

output "ec2_instance_ipv4" {
  value       = aws_instance.ec2_instance.public_ip
  description = "EC2 instance public IP"
}

output "ec2_instance_user_data" {
  value       = aws_instance.ec2_instance.user_data
  description = "EC2 instance user data"
  sensitive   = true # Utilizar para informações confidenciais
}