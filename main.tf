# Este é o modulo root do atual repositório

# Exemplo de import do módulo S3
module "aws_s3_bucket" {
  source      = "./s3_bucket"
  bucket_name = "bucket-name-here"
}