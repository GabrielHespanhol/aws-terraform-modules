output "aws_vpc_arn" {
  value       = aws_vpc.main.arn
  description = "ARN da VPC"
}

output "aws_subnet_arn" {
  value       = aws_subnet.main[*].arn
  description = "Subnet ARN"
}

output "aws_subnet_cird" {
  value       = aws_subnet.main[*].cidr_block
  description = "Subnet CIDR Block"
}