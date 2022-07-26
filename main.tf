terraform {
  required_providers {
    splunk = {
      source  = "splunk/splunk"
      version = "1.0.0"
    }
  }
}

provider "splunk" {
  url                  = "splunk01.corp.local:8089"
  username             = "user"
  password             = "password"
}

resource "splunk_apps_local" "terraform_splunk_app" {
  filename         = true
  name             = "https://github.com/PeteJax123/splunk_demo.git/terraform-cloud-for-splunk_005.tgz"
  explicit_appname = "terraform_cloud_for_splunk"
}
