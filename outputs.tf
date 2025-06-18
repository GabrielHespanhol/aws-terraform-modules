# Arquivo de outputs do modulo root

output "aws_s3_bucket" {
  description = "Nome do bucket S3 criado pelo módulo s3_bucket."
  value       = module.aws_s3_bucket.s3_bucket
}

output "instance_id_from_module" {
  description = "ID da instância EC2 criada pelo módulo ec2_instance."
  value       = module.aws_ec2_instance.ec2_instance_id
}

output "instance_public_ip_from_module" {
  description = "IP público da instância EC2 criada pelo módulo ec2_instance."
  value       = module.aws_ec2_instance.ec2_instance_ipv4
}

# Se precisar do user_data (lembre-se que é sensível):
output "instance_user_data_from_module" {
  description = "User data da instância EC2."
  value       = module.aws_ec2_instance.ec2_instance_user_data
  sensitive   = true
}
