required_providers {
  ibm = {
    source  = "IBM-Cloud/ibm"
    version = ">= 1.70.0"
  }

  time = {
    source  = "hashicorp/time"
    version = "0.12.1"
  }
}

provider "ibm" "this" {
  config {
    ibmcloud_api_key = var.ibmcloud_api_key
    region           = var.region
  }
}

provider "time" "this" {}