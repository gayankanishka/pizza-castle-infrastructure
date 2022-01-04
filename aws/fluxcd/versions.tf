terraform {
  required_version = ">= 0.14"

  required_providers {
    flux = {
      source  = "fluxcd/flux"
      version = ">= 0.0.13"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
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
}
