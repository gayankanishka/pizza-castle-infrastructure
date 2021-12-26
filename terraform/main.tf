provider "aws" {
  region = var.aws_regions[terraform.workspace]
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

module "eks_cluster" {
  source        = "./cluster"
  cluster_name  = var.eks_cluster_names[terraform.workspace]
  instance_type = var.eks_cluster_instance_types[terraform.workspace]
  region        = var.aws_regions[terraform.workspace]
}
