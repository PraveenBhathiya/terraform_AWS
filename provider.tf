terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket = "iac-state-s3-bucket"
    key = "project/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt = true
    
  }
}

provider "aws" {
    region = var.aws_region
  
}

