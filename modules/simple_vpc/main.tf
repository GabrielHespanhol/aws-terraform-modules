locals {
  subnet_cidr = cidrsubnets(var.cidr_block, 8, 8)
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

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = local.subnet_cidr[0]

  tags = {
    Name = "private-subnet"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = local.subnet_cidr[1]

  tags = {
    Name = "public-subnet"
  }
}