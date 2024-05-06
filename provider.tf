provider "aws" {
  region = var.location
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket"
    key = "terraform-backend-bucket/terraform-state-file"
    region = var.location
    
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}