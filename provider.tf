provider "aws" {
  region = "eu-north-1"
}

terraform {
  backend "s3" {
    bucket = "aws-terra-s3"
    key    = "vpc/terraform.tfstate"
    region = "eu-north-1"
  }
}
