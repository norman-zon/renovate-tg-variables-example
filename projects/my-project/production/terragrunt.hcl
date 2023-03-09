terraform {
  source = "${get_repo_root()}/tf-modules/my-project//"
}

inputs = {
    helm_chart1_version = "v1.1.3"
    helm_chart2_version = "v0.123"
}
