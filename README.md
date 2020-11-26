# terraform-azure-automation-certificate

Terraform module to manage an `Automation Account` certificate.

![Terraform Version](https://img.shields.io/badge/Terraform-0.12.x-green.svg) ![Terraform Version](https://img.shields.io/badge/Terraform-0.13.x-green.svg)

## Usage

```hcl
  source = "github.com/scalair/terraform-azure-automation-certificate"

  name                      = "AzureRunAsCertificate"
  resource_group_name       = "rg-project1-francecentral"
  automation_account_name   = "aa-ssl-1cd709"

  base64 = "/home/foo/cert.pfx"
```

## Limitations

### PFX certificate must NOT have password

Because the `azurerm_automation_certificate` terraform resource does not support PFX certifiate with password, you have to use a PFX certificate that does not have a password.

If you try to import a pfx that has a password, you'll get this kind of errror : `Certificate base64Value is invalid`.

Here is how to create a password-less pfx from your pfx :

```bash
openssl pkcs12 -in cert_with_pwd.pfx -clcerts -nokeys -out cert.crt
openssl pkcs12 -in cert_with_pwd.pfx -nocerts -out cert_encrypted.key
openssl rsa -in cert_encrypted.key -out cert.key
openssl pkcs12 -export -out cert_nopwd.pfx -inkey cert_encrypted.key -in cert.crt -passout pass:
```

Then you can use the newly created `cert_nopwd.pfx` file within the code.

