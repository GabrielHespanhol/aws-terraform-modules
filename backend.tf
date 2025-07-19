# Feito a configuração do backend remoto com state lock diretamente via S3
terraform {
  backend "s3" {
<<<<<<< HEAD:backend.tf
    bucket       = "bucket_name_here"
    key          = "module-root/root.tfstate"
    region       = "us-west-2"
=======
    bucket = "bucket_name_here"
    key    = "module-root/root.tfstate"
    region = "us-west-2"
>>>>>>> master:backend_example.tf
    use_lockfile = true
  }
}