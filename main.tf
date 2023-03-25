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
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro"
  key_name = "dc-login"

  tags = {
    Name = "Describing-cities"
  }
}

resource "aws_eip_association" "ip" {
  instance_id = aws_instance.app_server.id
  allocation_id = aws_eip.ip.allocation_id
}

resource "aws_eip" "ip" {
  vpc = true
}

resource "aws_key_pair" "ssh" {
  key_name = "dc-login"
  public_key = file(var.pub_key)
}

resource "aws_security_group_rule" "ssh" {
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = [var.cidr]
  security_group_id = var.security-group-id
}

resource "aws_security_group_rule" "Describing-cities" {
  type = "ingress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = var.security-group-id
}
