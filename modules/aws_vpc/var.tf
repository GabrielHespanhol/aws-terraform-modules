variable "vpc_name" {
  type        = string
  description = "Informar o nome da VPC que deseja criar"
}

variable "cidr_block" {
  type        = string
  description = "Definindo o CIDR Block da VPC"
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
  default     = "Dev" # Pode definir como Prod ou Stage por exemplo
}

variable "subnet_number" {
  type        = number
  description = "Número de subredes a serem criadas dentro da VPC"
}

variable "subnet_newbits" {
  type        = number
  description = "Newbits para definição do CIDR de nossas subnets"
  default     = 1
}