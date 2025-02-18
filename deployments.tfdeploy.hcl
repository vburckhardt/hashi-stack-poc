deployment "development" {
  inputs = {
    region              = "eu-gb"
    prefix              = "dev"
    resource_group_name = "hcl-stack"
  }
}

deployment "production" {
  inputs = {
    region              = "eu-gb"
    prefix              = "prod"
    resource_group_name = "hcl-stack"
  }
}
