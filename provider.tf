# Informando a necessidade do provider AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Informando a região que será utilizada
provider "aws" {
  region = "us-west-2"
}