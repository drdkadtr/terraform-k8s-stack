locals {
  enabled = true
}

resource "helm_release" "nginx_ingress" {
  count = local.enabled ? 1 : 0
  name  = "nginx-ingress-controller"

  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"

  set {
    name  = "service.type"
    value = "ClusterIP"
  }
  provider = helm.gke
}
