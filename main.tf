provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_role_definition" "custom_role" {
  name        = var.custom_role_name
  scope       = azurerm_resource_group.example.id
  description = "Custom role for managing specific resources"

  permissions {
    actions = [
      "Microsoft.Compute/virtualMachines/start/action",
      "Microsoft.Compute/virtualMachines/deallocate/action"
    ]
    not_actions = []
  }

  assignable_scopes = [
    azurerm_resource_group.example.id
  ]
}

resource "azurerm_role_assignment" "assign_custom_role" {
  scope              = azurerm_resource_group.example.id
  role_definition_id = azurerm_role_definition.custom_role.role_definition_resource_id
  principal_id       = var.principal_id
}
