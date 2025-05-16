# Feito a configuração do backend remoto com state lock diretamente via S3
terraform {
  backend "s3" {
    bucket = "linuxtips-devops-professional"
    key    = "module-root/root.tfstate"
    region = "us-west-2"
    use_lockfile = true
  }
}