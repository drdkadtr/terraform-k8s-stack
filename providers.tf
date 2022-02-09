provider "google" {
  alias   = "gke"
  project = local.project_id
  region  = local.region
}

provider "kubernetes" {
  alias                  = "gke"
  host                   = local.host
  cluster_ca_certificate = local.cluster_ca_certificate
  token                  = local.token
}

provider "helm" {
  alias = "gke"
  kubernetes {
    host                   = local.host
    cluster_ca_certificate = local.cluster_ca_certificate
    token                  = local.token
  }
}
