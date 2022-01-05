provider "aws" {
  region = var.aws_regions[terraform.workspace]
}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

data "aws_eks_cluster" "cluster" {
  name = module.eks_cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks_cluster.cluster_id
}

module "eks_cluster" {
  source        = "./eks"
  cluster_name  = var.eks_cluster_names[terraform.workspace]
  instance_type = var.eks_cluster_instance_types[terraform.workspace]
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

provider "kubectl" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
}

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.cluster.token
  }
}

module "fluxcd" {
  source = "./fluxcd"

  cluster_name                 = var.eks_cluster_names[terraform.workspace]
  flux_git_url                 = "ssh://git@github.com/${var.github_owner}/${var.repository_name}.git"
  flux_git_path                = var.target_paths[terraform.workspace]
  flux_deploy_image_automation = true

  depends_on = [
    module.eks_cluster.this,
  ]
}
