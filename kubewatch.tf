variable "slack_app_token" {
  type        = string
  description = "Slack App Token"
  default     = ""
}

resource "helm_release" "kubewatch" {
  count      = length(var.slack_app_token) > 1 ? 1 : 0
  name       = "kubewatch"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "kubewatch"
  version    = "3.3.4"

  values = [
    file("${path.module}/values/kubewatch.yaml")
  ]

  set_sensitive {
    name  = "slack.token"
    value = var.slack_app_token
  }
}
