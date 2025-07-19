## Documentação do módulo EC2

Explicando a organização do nosso módulo: 

```hcl
├── main.tf # Arquivo main do módulo EC2
├── outputs.tf # Definindo outputs para uso via módulo root
├── provider.tf # Definindo o provider a ser utilizado no módulo
├── README.md # Documentação do módulo EC2
└── var.tf # Arquivo com variáveis utilizadas no módulo
```

### var.tf

Nosso arquivo `vars.tf` permite o uso de duas opções no momento, onde podemos definir uma AMI (Imagem a ser utilizada para criar nossa VM EC2) e a AMI_OWNER (O id do dono da imagem), ambas informações são utilizadas e importantes para criar nosso EC2.

### outputs.tf

Dentro de `outputs.tf` temos algumas opções interessantes, onde no momento adotei apenas o uso para informar o id da instância que foi criada, IPv4 e o user data que pode conter informações interessantes da VM (Esse dado por ser sensível e devemos tomar cuidado com ele.)

### provider.tf

Em `providers.tf` estamos definindo como requisito o uso da aws, sendo versão 5.0 ou superior.

### main.tf

Aqui é o coração do nosso módulo, onde estamos definindo o recurso a ser criado, que no caso é o nosso EC2.

## Exemplo de uso

Para utilizar o nosso módulo S3, você deve então utilizar o arquivo `main.tf` do nosso módulo root, logo a seguir um exemplo de uso:

```hcl
# Aqui estamos importando o nosso módulo EC2

module "aws_ec2_instance" {
  source     = "./modules/ec2_instance"
  image_name = "al2023-ami-2023.7.20250609.0-kernel-6.1-x86_64"
  ami_owner  = "137112412989"
}
```

Também é possível exibir na tela o output que temos definido em nosso módulo, para isso precisamos editar o arquivo `outputs.tf` do módulo root e colocar o seguinte conteúdo:

```hcl
output "instance_id_from_module" {
  description = "ID da instância EC2 criada pelo módulo ec2_instance."
  value       = module.aws_ec2_instance.ec2_instance_id
}

output "instance_public_ip_from_module" {
  description = "IP público da instância EC2 criada pelo módulo ec2_instance."
  value       = module.aws_ec2_instance.ec2_instance_ipv4
}

# Se precisar do user_data (lembre-se que é sensível):
output "instance_user_data_from_module" {
  description = "User data da instância EC2."
  value       = module.aws_ec2_instance.ec2_instance_user_data
  sensitive   = true
}
```