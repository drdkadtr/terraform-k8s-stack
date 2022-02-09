
locals {
  project                = data.terraform_remote_state.cluster.outputs.project_id
  region                 = data.terraform_remote_state.cluster.outputs.region
  host                   = data.terraform_remote_state.cluster.outputs.host
  cluster_ca_certificate = data.terraform_remote_state.cluster.outputs.cluster_ca_certificate
  token                  = data.google_client_config.default.access_token
}

