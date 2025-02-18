component "account_base" {
  source = "./account"

  inputs = {
    region = var.region
    resource_group_name = "${var.prefix}-${var.resource_group_name}"
  }

  providers = {
    ibm     = provider.ibm.this
  }
}

component "secret_manager" {
  source = "./sm"

  inputs = {
    name = "${var.prefix}-sm"
    resource_group_id = component.account_base.security_resource_group_id
    region = var.region
    sm_service_plan = "trial"
    existing_kms_instance_guid = component.key_protect.key_protect_crn
  }

  providers = {
    ibm     = provider.ibm.this
  }
}

component "key_protect" {
  source = "./kp"

  inputs = {
    name = "${var.prefix}-kp"
    region = var.region
    resource_group_id = component.account_base.security_resource_group_id
  }

  providers = {
    ibm     = provider.ibm.this
  }
}