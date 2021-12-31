terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.56"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.4"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 1.11.1"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "pizza-castle"

    workspaces {
      prefix = "pizza-castle-"
    }
  }
}
