variable "image_name" {
  type        = string
  description = "AMI AWS NAME"
  default     = "al2023-ami-2023.7.20250609.0-kernel-6.1-x86_64" # Amazon Linux
}

variable "ami_owner" {
  type        = string
  description = "AMI owner ID"
  default     = "137112412989" # AWS Amazon Linux
} 