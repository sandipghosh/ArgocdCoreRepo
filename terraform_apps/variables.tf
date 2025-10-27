variable "git_repo_address" {
  type        = string
  description = "Specifying the helm repo address"
}
variable "git_repo_path" {
  type        = string
  description = "Specifying the helm repo path"
}
variable "root_namespace" {
  type        = string
  description = "Specifying the root namespace"
}
variable "argocd_host" {
  type        = string
  description = "Specifying the of argocd address"
}

variable "argocd_username" {
  type        = string
  description = "Specifying the of argocd user name"
}

variable "argocd_password" {
  type        = string
  sensitive   = true
  description = "Specifying the of argocd password"
}

variable "value_files" {
  type        = list(string)
  description = "Specify values as list"
}

variable "target_revision" {
  type        = string
  description = "Specify the target revision"
}

variable "destination_server" {
  type        = string
  description = "Specify the destination server"
}

variable "destination_namespace" {
  type        = string
  description = "Specify the destination namespace"
}

variable "insecure" {
  type        = bool
  description = "Specify whether insecure on not"
}