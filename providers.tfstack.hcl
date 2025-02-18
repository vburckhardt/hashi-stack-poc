required_providers {
  ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.70.0"
  }
}

provider "ibm" "this" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
}