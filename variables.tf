variable "resource_group_name" {
    type                = string
    default             = "Terraform"
    description         = "Required. Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name"
}

variable "location" {
    type                = string
    description         = "Required. Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created"
}

variable "tenant_id" {
    type                = string
    description         = "Required. Azure Active Directory tenant ID that should be used for authenticating requests to the key vault"
}

variable "azure_key_vault_name" {
    type                = string 
    description         = "Required.Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name" 
}

variable "tags" {
    type                = map(string)
    default             = null
    description         = "A mapping of tags to assign to the resource"
}

variable "enabled_for_deployment" {
    type                = bool
    default             = false
    description         = "Property to specify whether Azure Virtual Machines are permiited to retrieve certificates stored as secrets from the key vault"

}

variable "enabled_for_template_deployment"  {
    type                = bool 
    default             = false
    description         = "Property to specify whether Azure Disk Encryption is permiited to retrieve secrets from the vault and upwrap keys"
}

variable "sku_name" {
    type                = string
    description         = "The Name of the SKU used for this Key Vault. Possible values are standard and premium"
    default             = "standard"               
}


variable "purge_protection_enabled"  {
    type                = bool 
    default             = false
}

variable "enabled_for_disk_encryption" {
    type                = bool
    default             = true
    description         = "Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys"
}

variable "enable_rbac_authorization" {
    type                = bool
    default             = true
    description         = "Boolean flag to specify whether Azure Key Vault uses Role Based Access Control (RBAC) for authorization of data actions"
}

