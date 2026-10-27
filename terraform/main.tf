terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

resource "local_file" "simulated_infrastructure" {
  content  = "Provisioned via Terraform IaC"
  filename = "${path.module}/server_config.txt"
}


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

resource "aws_s3_bucket" "pipeline_artifacts" {
  bucket = "pipeline-lab-artifacts-bucket"
  
  tags = {
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}