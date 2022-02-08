variable "organization" {
  type        = string
  description = "Organization of workspace that created the Kubernetes cluster"
}
variable "hostname" {
  type        = string
  description = "Scalr hostname"
}

variable "workspace" {
  type        = string
  description = "Workspace"
}
