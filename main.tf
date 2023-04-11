terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "describing-cities-tf-state"
    key = "./terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region  = "eu-west-2"
}

resource "aws_key_pair" "ssh" {
  key_name = "dc-login"
  public_key = file(var.pub_key)
}
