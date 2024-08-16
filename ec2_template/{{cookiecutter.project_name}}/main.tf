terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"  # Specify the AWS provider version
    }
  }

  required_version = ">= 1.9.4"  # Specify the minimum required version of Terraform
}

provider "aws" {
  region = "{{ cookiecutter.aws_region }}"
}

resource "aws_instance" "{{ cookiecutter.instance_name }}" {
  ami           = "{{ cookiecutter.ami_id }}"
  instance_type = "{{ cookiecutter.instance_type }}"
  key_name      = "{{ cookiecutter.key_name }}"

  tags = {
    Name = "{{ cookiecutter.instance_name }}"
  }
}

