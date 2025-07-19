# Estudando e criando módulos terraform para AWS

## Objetivo do repositório
Com esse repositório estarei estudando terraform e a criação de módulos, o foco é praticar o uso de terraform, aprender boas práticas e seguir meus estudos com a tecnologia. 

## Quais meus próximos objetivos?
    [✅] Um módulo para criar um bucket S3 
    [✅] Um módulo para criar uma instância EC2
    [✅] Um módulo para criar um VPC

## Projetos Futuros
Ainda não tenho definido projetos futuros para o uso do terraform, mas acredito que vou criar algum projeto para utilizar multiplos módulos do terraform conforme estarei criando nesse projeto.

Estarei criando o projeto com multiplos módulos e também criando condicionais durante sua execução e controle de fluxo do código terraform. 

## Explicando o repositório
Aqui no repositório temos uma organização de pastas que vai respeitar alguns padrões, sendo eles:

**Diretório raiz**: Aqui temos arquivos do nosso módulo root, onde temos a definição do provider, outputs, backend e o nosso arquivo main, onde iniciamos o uso e acionamos outros módulos conforme precisar.

---
```hcl
├── backend.tf # Arquivo onde definimos o backend a ser utilizado
├── main.tf # Arquivo main, onde vamos acionar nossos módulos
├── modules # Diretório onde temos nossos módulos terraform
│   ├── aws_vpc # Diretório do módulo VPC
│   ├── ec2_instance # Diretório do módulo EC2
│   └── s3_bucket # Diretório do módulo S3
├── outputs.tf # Arquivo onde configuramos nossos outputs (saídas com informações)
├── provider.tf # Definição do nosso provider (No caso estamos utilizando a nuvem AWS)
└── README.md # Arquivo principal de documentação do projeto
```