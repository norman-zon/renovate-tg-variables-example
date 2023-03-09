terraform {
  source = "${get_repo_root()}/tf-modules/my-project//"
}

inputs = {
    nginx_helm_chart_version = "4.2.3"
    cert_manager_helm_chart_version = "v1.10.1"
}
