## Documentação do módulo Simple_VPC

Aqui temos o nosso primeiro módulo criado quando o assunto é VPC na AWS, a ideia é criar um módulo simples porém funcional, onde temos como objetivo criar uma VPC contendo uma subnet pública e uma subnet privada para utilização.
Explicando a organização do nosso módulo: 

```hcl
├── main.tf # Arquivo main do módulo simple_vpc
├── outputs.tf # Definindo outputs para uso via módulo root
├── provider.tf # Definindo o provider a ser utilizado no módulo
├── README.md # Documentação do módulo simple_vpc
└── var.tf # Arquivo com variáveis utilizadas no módulo
```

### var.tf

Nosso arquivo `vars.tf` permite o uso algumas variáveis para passar informações importantes na criação de nossa VPC, sendo eles o vpc_name e cidr_block, algumas opções não obrigatórias são resolve_hostname, dns_enable e vpc_environment.

### outputs.tf

Dentro de `outputs.tf` temos alguns retornos definidos, sendo em principal o ARN dos recursos criados e também nossos blocos de CIDR para uma melhor gestão e entendimento, onde o CIDR é uma informação de grande importância quando falamos de recursos de rede.

### provider.tf

Em `providers.tf` estamos definindo como requisito o uso da aws, sendo versão 5.0 ou superior.

### main.tf

Aqui é o coração do nosso módulo, onde estamos definindo o recurso a ser criado, no caso sendo nosso VPC e suas duas subnets, uma pública e outra privada. Aqui foi utilizado também uma função para criação dos blocos de CIDR da subnet, com base no CIDR da VPC através o locals.

## Exemplo de uso

Para utilizar o nosso módulo S3, você deve então utilizar o arquivo `main.tf` do nosso módulo root, logo a seguir um exemplo de uso:

```hcl
# Aqui estamos importando o nosso módulo SIMPLE_VPC

module "aws_vpc" {
  source = "./modules/aws_vpc"
  cidr_block = "10.10.0.0/16"
  vpc_name = "VPC_TESTE"
}
```

Também é possível exibir na tela o output que temos definido em nosso módulo, para isso precisamos editar o arquivo `outputs.tf` do módulo root e colocar o seguinte conteúdo:

```hcl

output "public_subnet_cidr" {
  description = "CIDR da subnet publica"
  value = module.aws_vpc.public_subnet_cird
}

output "private_subnet_cidr" {
  description = "CIDR da subnet privada"
  value = module.aws_vpc.private_subnet_cird
}
```