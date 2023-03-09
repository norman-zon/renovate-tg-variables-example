resource "helm_release" "chart1" {

  name       = "chart1"
  namespace  = "chart1"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = var.helm_chart1_version
}


resource "helm_release" "chart2" {

  name       = "chart2"
  namespace  = "chart2"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = var.helm_chart2_version
}
