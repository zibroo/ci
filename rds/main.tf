terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_db_instance" "default" {
  allocated_storage   = 25
  db_name             = "ibraimdb"
  engine              = "postgres"
  engine_version      = "14.6"
  instance_class      = "db.t3.micro"
  username            = "ibraim"
  password            = "ibraim49"
  storage_type        = "gp2"
  publicly_accessible = true
  skip_final_snapshot = true
}