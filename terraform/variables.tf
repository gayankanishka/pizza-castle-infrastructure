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
