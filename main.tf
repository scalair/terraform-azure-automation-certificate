terraform {
  required_version = ">= 0.12.0"
}

resource "azurerm_automation_certificate" "auto_cert" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  automation_account_name   = var.automation_account_name

  description               = var.description
  base64                    = filebase64(var.base64)
}

