variable "github_owner" {
  type        = string
  description = "The name of the github repo owner"
  default     = "gayankanishka"
}

variable "github_token" {
  type        = string
  description = "The github access token"
  default     = "dsdsd"
}

variable "github_repository_name" {
  type        = string
  description = "The name of the infrastructure repository"
  default     = "pizza-castle-infrastructure"
}

variable "github_repository_visibility" {
  type        = string
  description = "Repo visibility"
  default     = "private"
}

variable "branch" {
  type    = string
  default = "main"
}

variable "target_paths" {
  type        = map(any)
  description = "Flux sync target paths"
  default = {
    pizza-castle-dev     = "kubernetes/clusters/dev"
    pizza-castle-staging = "kubernetes/clusters/staging"
    pizza-castle-prod    = "kubernetes/clusters/prod"
  }
}

variable "flux_token" {
  type        = string
  description = "Flux token"
  default     = "dsdsd"
}
