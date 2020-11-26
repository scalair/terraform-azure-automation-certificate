variable "name" {
  type          = string
  description   = "(Required) Specifies the name of the Certificate. Changing this forces a new resource to be created."
  default       = "AzureRunAsCertificate"
}

variable "resource_group_name" {
  type          = string
  description   = "(Required) The name of the resource group in which the Certificate is created. Changing this forces a new resource to be created."
}

variable "automation_account_name" {
  type          = string
  description   = "(Required) The name of the automation account in which the Certificate is created. Changing this forces a new resource to be created."
}

variable "base64" {
  type          = string
  description   = "(Required) Base64 encoded value of the certificate."
}

variable "description" {
  type          = string
  description   = "(Optional) The description of this Automation Certificate."
  default       = ""
}

