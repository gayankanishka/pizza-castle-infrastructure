terraform {
  required_version = "~> 1.1.2"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.19.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.13.1"
    }
    flux = {
      source  = "fluxcd/flux"
      version = "0.8.1"
    }
  }
}
