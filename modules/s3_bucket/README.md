## Documentação do módulo S3

Explicando a organização do nosso módulo: 

```hcl
├── main.tf # Arquivo main do módulo S3
├── outputs.tf # Definindo outputs para uso via módulo root
├── provider.tf # Definindo o provider a ser utilizado no módulo
├── README.md # Documentação do módulo S3
└── var.tf # Arquivo com variáveis utilizadas no módulo
```

### var.tf

Nosso arquivo `vars.tf` permite o uso de poucas opções no momento, onde podemos definir uma única variável chamada de bucket_name (Essa variável é utilizada para configurar o nome do nosso bucket s3 via tag name)

### outputs.tf

Dentro de `outputs.tf` temos também um único output definido, que no caso é o bucket name, para que ao final da execução possamos visualizar o nome do bucket criado.

### provider.tf

Em `providers.tf` estamos definindo como requisito o uso da aws, sendo versão 5.0 ou superior.

### main.tf

Aqui é o coração do nosso módulo, onde estamos definindo o recurso a ser criado, que no caso é o aws_s3_bucket.

## Exemplo de uso

Para utilizar o nosso módulo S3, você deve então utilizar o arquivo `main.tf` do nosso módulo root, logo a seguir um exemplo de uso:

```hcl
# Aqui estamos importando o nosso módulo S3

module "aws_s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "bucket-name-here" # Aqui estamos definindo a variável bucket_name que é usada em nosso módulo de forma obrigatória
}
```

Também é possível exibir na tela o output que temos definido em nosso módulo, para isso precisamos editar o arquivo `outputs.tf` do módulo root e colocar o seguinte conteúdo:

```hcl

output "aws_s3_bucket" {
  description = "Nome do bucket S3 criado pelo módulo s3_bucket."
  value       = module.aws_s3_bucket.s3_bucket
}
```