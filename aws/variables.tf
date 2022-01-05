variable "aws_regions" {
  type        = map(any)
  description = "The main AWS regions for different workspaces"
  default = {
    pizza-castle-dev     = "us-east-2"
    pizza-castle-staging = "us-east-2"
    pizza-castle-prod    = "us-east-2"
  }
}

variable "eks_cluster_names" {
  type        = map(any)
  description = "The name of the EKS clusters for different workspaces"
  default = {
    pizza-castle-dev     = "pizza-castle-cluster-dev"
    pizza-castle-staging = "pizza-castle-cluster-staging"
    pizza-castle-prod    = "pizza-castle-cluster-prod"
  }
}

variable "eks_cluster_instance_types" {
  type        = map(any)
  description = "The EC2 instance type to use for the EKS cluster"
  default = {
    pizza-castle-dev     = "t2.micro"
    pizza-castle-staging = "t2.micro"
    pizza-castle-prod    = "m5.large"
  }
}

variable "repository_name" {
  type        = string
  description = "The name of the infrastructure repository"
  default     = "pizza-castle-flux-infrastructure"
}

variable "target_paths" {
  type        = map(any)
  description = "Flux sync target paths"
  default = {
    pizza-castle-dev     = "clusters/dev"
    pizza-castle-staging = "clusters/staging"
    pizza-castle-prod    = "clusters/prod"
  }
}

variable "github_owner" {
  type        = string
  description = "The name of the github repo owner"
  default     = "gayankanishka"
}

variable "github_token" {
  type        = string
  description = "The github access token"
  default     = "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"
}
