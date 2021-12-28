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

variable "repository_name" {
  type        = string
  description = "The name of the infrastructure repository"
  default     = "pizza-castle-flux-infrastructure"
}

variable "repository_visibility" {
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
    pizza-castle-dev     = "clusters/dev"
    pizza-castle-staging = "clusters/staging"
    pizza-castle-prod    = "clusters/prod"
  }
}
