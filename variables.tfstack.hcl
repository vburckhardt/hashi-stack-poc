variable "prefix" {
  type        = string
  description = "Prefix for all resources"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to create. Prefix is appended to it"
}

variable "region" {
  type        = string
  description = "Region where resources are deployed to"
}

variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud API Key"
  sensitive   = true
}
