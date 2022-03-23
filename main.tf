locals {
  enabled = true
}

resource "helm_release" "demo" {
  count = local.enabled ? 1 : 0
  name  = "demo"

  repository = "https://drdkadtr.github.io/helm-charts/"
  chart      = "demo"

  set {
    name  = "replicaCount"
    value = 2
  }
  provider = helm.gke
}
