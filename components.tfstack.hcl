component "account_base" {
  source = "terraform-ibm-modules/account-infrastructure-base/ibm"
  version = "1.18.2"

  inputs = {
    region = var.region
    resource_group_name = "${var.prefix}-${var.resource_group_name}"
  }

  providers = {
    ibm     = provider.ibm.this
  }
}

component "secret_manager" {
  source = "terraform-ibm-modules/secrets-manager/ibm"
  version = "1.23.7"

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
  source = "terraform-ibm-modules/key-protect/ibm"
  version = "2.10.0"

  inputs = {
    name = "${var.prefix}-kp"
    region = var.region
    resource_group_id = component.account_base.security_resource_group_id
  }

  providers = {
    ibm     = provider.ibm.this
  }
}