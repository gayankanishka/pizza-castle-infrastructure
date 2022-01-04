variable "cluster_name" {
  type        = string
  description = "Name of EKS cluster. Used to fetch authentication details."
}

variable "flux_git_branch" {
  type        = string
  default     = "main"
  description = "flux git branch name"
}

variable "flux_git_url" {
  type        = string
  description = "flux git url"
}

variable "flux_git_path" {
  type        = string
  default     = ""
  description = "Path within git repo to locate Kubernetes manifests (relative path)"
}

variable "flux_ssh_known_hosts" {
  type        = string
  default     = "github.com ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEmKSENjQEezOmxkZMy7opKgwFB9nkt5YRrYMjNuG5N87uRgg6CLrbo5wAdT/y6v0mKV0U2w0WZ2YB/++Tpockg="
  description = "SSH known hosts used to access private helm repos via git SSH. See https://github.com/fluxcd/helm-operator/blob/master/chart/helm-operator/README.md#use-a-private-git-server"
}

variable "flux_deploy_image_automation" {
  type        = bool
  default     = false
  description = "Optionally deploy the image automation controller with the gitops toolkit"
}

variable "repository_name" {
  type        = string
  description = "The name of the infrastructure repository"
  default     = "pizza-castle-flux-infrastructure"
}

variable "branch" {
  type    = string
  default = "main"
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
