variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "custom_role_name" {
  description = "Name of the custom role"
  type        = string
}

variable "principal_id" {
  description = "Azure AD Object ID of the user, group or service principal"
  type        = string
}
