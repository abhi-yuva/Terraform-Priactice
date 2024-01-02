## First Block should be Provider Information

provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "bucket_name"
    key = "path-to-store-state-file"
    region = "region"
    
  }
}