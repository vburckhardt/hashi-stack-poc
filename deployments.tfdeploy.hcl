deployment "development" {
  inputs = {
    region              = "eu-gb"
    prefix              = "dev"
    resource_group_name = "hcl-stack"
    ibmcloud_api_key = store.varset.apikey.ibmcloud_api_key
  }
}

deployment "production" {
  inputs = {
    region              = "eu-gb"
    prefix              = "prod"
    resource_group_name = "hcl-stack"
    ibmcloud_api_key = store.varset.apikey.ibmcloud_api_key
  }
}

store "varset" "apikey" {
  id       = "ibmcloud_api_key"
  category = "env"
}
