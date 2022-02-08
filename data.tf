data "google_client_config" "default" {}

data "terraform_remote_state" "cluster" {
  backend = "remote"

  config = {
    hostname     = var.hostname
    organization = var.organization
    workspaces = {
      name = var.workspace
    }
  }
}
