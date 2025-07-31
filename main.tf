# Este é o modulo root do atual repositório

# Aqui estou importando o modulo s3 que criei na pasta modules
# Estamos dando o nome de aws_s3_bucket
# Esse nome pode ser utilizado para pegar outputs do modulo
module "aws_s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "bucket-name-here"
}

# Aqui estou importando o modulo ec2_instance que criei na pasta modules
# Estamos dando o nome de aws_ec2_instance
# Esse nome pode ser utilizado para pegar outputs do modulo
module "aws_ec2_instance" {
  source     = "./modules/ec2_instance"
  image_name = "al2023-ami-2023.7.20250609.0-kernel-6.1-x86_64"
  ami_owner  = "137112412989"
}


# Aqui estamos chamando o nosso módulo simple_vpc
# Fornecendo um nome para a VPC e um bloco de CIDR
# Muito importante verificar que nosso CIDR da VPC é utilizado como base para o CIDR de nossas subnets.
module "aws_vpc" {
  source = "./modules/simple_vpc"
  vpc_name = "vpc-name-here"
  cidr_block = "10.10.0.0/16"
}