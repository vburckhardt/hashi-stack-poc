output "resource_group" {
  type = string
  description = "Resource group where resources are deployed"
  value = component.account_base.security_resource_group_id
}
