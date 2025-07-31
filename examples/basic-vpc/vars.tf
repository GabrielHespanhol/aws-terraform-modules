variable "vpc_name" {
  type        = string
  description = "Informar o nome da VPC que deseja criar"
  default     = "minha-vpc-basica"
}

variable "cidr_block" {
  type        = string
  description = "Definindo o CIDR Block da VPC"
  default     = "10.0.0.0/16"
}

variable "resolve_hostname" {
  type        = bool
  description = "Ativa ou Desativa a resolução de hostname na VPC"
  default     = false
}

variable "dns_enable" {
  type        = bool
  description = "Ativa ou Desativa a resolução de DNS para a VPC"
  default     = true
}

variable "vpc_environment" {
  type        = string
  description = "Definindo o ambiente de uso da VPC"
  default     = "Dev"
}