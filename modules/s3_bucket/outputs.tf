# Aqui estamos criando um output para o modulo s3
# Esse output permite que o modulo root possa utilizar o output do modulo s3
output "aws_s3_bucket" {
  value       = var.bucket_name
  description = "AWS S3 bucket"
}