provider "aws" {
  region = var.location
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = var.provider-version
    }
  }
}