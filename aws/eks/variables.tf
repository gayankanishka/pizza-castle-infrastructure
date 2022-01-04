variable "github_owner" {
  type        = string
  description = "The name of the github repo owner"
  default     = "gayankanishka"
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

variable "repository_name" {
  type        = string
  description = "The name of the infrastructure repository"
  default     = "pizza-castle-flux-infrastructure"
}
