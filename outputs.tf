output "role_definition_id" {
  value = azurerm_role_definition.custom_role.role_definition_resource_id
}

output "role_assignment_id" {
  value = azurerm_role_assignment.assign_custom_role.id
}
