resource "helm_release" "prometheus" {
  name             = "prometheus"
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "kube-prometheus"
  version          = "6.9.3"
  create_namespace = true
  namespace        = "monitoring"
  provider         = helm.gke
}
