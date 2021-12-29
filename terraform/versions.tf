terraform {
  required_version = "~> 1.1.2"

  required_providers {
    aws   = ">= 3.70.0"
    local = ">= 2.1.0"
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.7.1"
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
