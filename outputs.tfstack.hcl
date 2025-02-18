output "resource_group" {
  type = string
  description = "Resource group where resources are deployed"
  value = component.resource_group.resource_group_id
}
