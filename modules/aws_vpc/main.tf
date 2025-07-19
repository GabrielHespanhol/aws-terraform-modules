locals {
  subnet_newbits = var.subnet_newbits
  subnet_cidr_blocks = cidrsubnets(aws_vpc.main.cidr_block,
  [for _ in range(var.subnet_number) : local.subnet_newbits]...)
}

resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = var.resolve_hostname
  enable_dns_support   = var.dns_enable

  tags = {
    Name        = var.vpc_name
    Environment = var.vpc_environment
  }
}

resource "aws_subnet" "main" {
  count      = var.subnet_number
  vpc_id     = aws_vpc.main.id
  cidr_block = local.subnet_cidr_blocks[count.index]

  tags = {
    Name = "subnet_${count.index}"
  }
}