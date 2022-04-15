resource "helm_release" "demo" {
  name       = "demo"
  repository = "https://drdkadtr.github.io/helm-charts/"
  chart      = "demo"
  version    = "0.1.3"

  set {
    name  = "image.repository"
    value = "gcr.io/kubernetes-e2e-test-images/echoserver"
  }

  set {
    name  = "image.tag"
    value = "2.2"
  }

  provider = helm.gke
}
