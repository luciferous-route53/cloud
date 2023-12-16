terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.31"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      SystemName = var.system_name
    }
  }
}