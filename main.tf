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
  name             = "splunk_demo/terraform-cloud-for-splunk_008.tgz"
  explicit_appname = "terraform_cloud_for_splunk"
}
