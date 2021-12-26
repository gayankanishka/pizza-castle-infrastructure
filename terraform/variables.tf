variable "aws_regions" {
  type        = map(any)
  description = "The main AWS regions for different workspaces"
  default = {
    dev     = "us-east-2"
    staging = "us-east-2"
    prod    = "us-east-2"
  }
}

variable "eks_cluster_names" {
  type        = map(any)
  description = "The name of the EKS clusters for different workspaces"
  default = {
    dev     = "dev-pizza-castle-cluster"
    staging = "staging-pizza-castle-cluster"
    prod    = "prod-pizza-castle-cluster"
  }
}

variable "eks_cluster_instance_types" {
  type        = map(any)
  description = "The EC2 instance type to use for the EKS cluster"
  default = {
    dev     = "t2.micro"
    staging = "t2.micro"
    prod    = "m5.large"
  }
}
