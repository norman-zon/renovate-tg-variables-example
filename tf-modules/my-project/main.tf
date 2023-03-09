variable nginx_helm_chart_version {
  type        = string
}

variable cert_manager_helm_chart_version {
  type        = string
}

resource "helm_release" "nginx" {

  name       = "nginx"
  namespace  = "nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = var.nginx_helm_chart_version
}


resource "helm_release" "cert_manager" {

  name       = "cert-manager"
  namespace  = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  version    = var.cert_manager_helm_chart_version
}
