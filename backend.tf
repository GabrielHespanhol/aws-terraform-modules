# Feito a configuração do backend remoto com state lock diretamente via S3
terraform {
  backend "s3" {
    bucket       = "bucket_name_here"
    key          = "module-root/root.tfstate"
    region       = "us-west-2"
    use_lockfile = true
  }
}