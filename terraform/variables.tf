variable "aws_region" {
  type        = string
  description = "The main AWS region"
  default     = "us-east-2"
}

variable "eks_cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "eks_cluster_instance_type" {
  type        = string
  description = "The EC2 instance type to use for the EKS cluster"
  default     = "t2.micro"
}
