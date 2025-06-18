data "aws_ami" "data_ec2_ami" {
  most_recent = true
  owners      = [var.ami_owner] # AWS Amazon Linux

  filter {
    name   = "name"
    values = [var.image_name]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.data_ec2_ami.id
  instance_type = "t2.micro"

  tags = {
    Name        = "DevOps Professional lab"
    Environment = "Development"
  }
}