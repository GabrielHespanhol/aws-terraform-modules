# Aqui estamos criando um output para o modulo ec2_instance
# Esse output permite que o modulo root possa utilizar o output do modulo ec2_instance

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