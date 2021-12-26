terraform {
  required_version = "~> 1.1.2"

  required_providers {
    aws   = ">= 3.40.0"
    local = ">= 1.4"
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.4.1"
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
