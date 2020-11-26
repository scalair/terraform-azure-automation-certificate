output "id" {
  description = "The Automation Account ID."
  value       = azurerm_automation_certificate.auto_cert.id
}

output "thumbprint" {
  description = "The thumbprint for the certificate."
  value       = azurerm_automation_certificate.auto_cert.thumbprint
}

