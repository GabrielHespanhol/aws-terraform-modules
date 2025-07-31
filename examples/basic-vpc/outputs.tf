output "vpc_tags" {
  description = "Retornando tags com informações de nossa VPC"
  value = aws_vpc.main.tags
}

output "vpc_cidr" {
  description = "CIDR de nossa VPC"
  value = aws_vpc.main.cidr_block
}

output "private-subnet-cidr" {
  description = "CIDR de nossa subnet privada"
  value = aws_subnet.private.cidr_block
}

output "public-subnet-cidr" {
  description = "CIDR de nossa subnet public"
  value = aws_subnet.public.cidr_block
}