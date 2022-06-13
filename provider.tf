provider "aws" {
  region = "eu-west-1"
  access_key = "AKIAQ6PTDCDQVUMEGTOY"
  secret_key = "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"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
