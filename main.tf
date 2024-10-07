terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "servidor-spring" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  key_name = "iac_alura"
  #descreve arquivos com as etapas manuais  
  #user_data = <<-EOF
  #           #!/bin/bash
  #           cd /home/ubuntu
  #           echo "<h1>Feito com TerraformDiogo Senior</h1>" > index.html
  #           nohup busybox httpd -f -p 8080 &
  #           EOF
  tags = {
    Name = "Terraform ansible python 2*2"
  }
}