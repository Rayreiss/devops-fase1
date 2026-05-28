terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"

  tags = {
    Name = "devops-fase1-app"
  }
}

resource "aws_db_instance" "postgres" {
  engine         = "postgres"
  instance_class = "db.t3.micro"
  username       = "admin"
  password       = "senha_segura_aqui"
  skip_final_snapshot = true

  tags = {
    Name = "devops-fase1-db"
  }
}