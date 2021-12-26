provider "aws" {
  region = var.aws_region
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

module "eks_cluster" {
  source                    = "./cluster"
  eks_cluster_name          = var.eks_cluster_name
  eks_cluster_instance_type = var.eks_cluster_instance_type
}
