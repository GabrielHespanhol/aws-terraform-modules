output "aws_vpc_arn" {
  value       = aws_vpc.main.arn
  description = "Aqui temos o retorno do ARN de nossa VPC"
}

output "private_subnet_arn" {
  value       = aws_subnet.private.arn
  description = "Aqui temos o retorno do ARN de nossa subnet privada"
}

output "private_subnet_cird" {
  value       = aws_subnet.private.cidr_block
  description = "Aqui temos o bloco de CIDR utilizado para nossa subnet privada"
}

output "public_subnet_arn" {
  value       = aws_subnet.public.arn
  description = "Aqui temos o ARN de nossa subnet publica"
}

output "public_subnet_cird" {
  value       = aws_subnet.public.cidr_block
  description = "Aqui temos o bloco de CIDR utilizado para nossa subnet publica"
}