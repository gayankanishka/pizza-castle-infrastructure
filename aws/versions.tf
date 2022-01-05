terraform {
  required_version = ">= 0.14"

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
      version = ">= 2.0.2"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.10.0"
    }
    github = {
      source  = "integrations/github"
      version = ">= 4.5.2"
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
