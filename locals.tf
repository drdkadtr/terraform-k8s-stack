
locals {
  project                = data.terraform_remote_state.cluster.outputs.google["project_id"]
  region                 = data.terraform_remote_state.cluster.outputs.google["region"]
  host                   = data.terraform_remote_state.cluster.outputs.kubernetes["host"]
  cluster_ca_certificate = data.terraform_remote_state.cluster.outputs.kubernetes["cluster_ca_certificate"]
  token                  = data.google_client_config.default.access_token
}

