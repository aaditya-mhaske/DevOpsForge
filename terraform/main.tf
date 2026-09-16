terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "devopsforge" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  key_name = "DevOps"

  subnet_id = "subnet-07981a7fb87526015"

  vpc_security_group_ids = [
    "sg-0a45feab98c05a6c3"
  ]

  associate_public_ip_address = true

  tags = {
    Name = "DevOpsForge"
  }
}