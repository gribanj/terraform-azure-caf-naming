<!-- BEGIN_TF_DOCS -->
## Requirements
// https://github.com/aztfmod/terraform-provider-azurecaf/blob/main/docs/resources/azurecaf_name.md

🏗️ Resource: Azure Naming Conventions Module (caf-naming/azure)
Implements a standardized naming approach across Azure resources, enhancing management, clarity, and consistency. This module generates structured, predictable names for various Azure resources, crucial for large-scale infrastructures and multi-environment setups.
- 'rg', 'vnet', 'snet', etc.: Defines the resource types with their respective naming conventions.
- 'suffixes': Adds specific suffixes like environment or version to the resource names for better differentiation and management.
- 'resource_type': Specifies the Azure resource type, ensuring each resource has a distinct and recognizable name.
- 'name': A base name to prepend to all resources, providing an initial layer of customization.
🎯 Purpose & Benefits:
- Uniformity & Clarity: Ensures consistency in naming across Azure, aiding in resource identification and management.
- Flexibility: Easily adaptable to different environments, versions, or custom requirements.
- Automation-Friendly: Ideal for automation and large-scale deployments, reducing manual naming errors.
🛠️ Use Cases:
- Multi-Environment Management: Differentiate resources across various environments like 'dev', 'stg', 'prod'.
- Version Control: Append version information to resources for easy tracking.
📚 Documentation & Examples:
- AzureCAF Naming Provider Documentation
- Example Usage:
```hcl
locals {
suffix1 = "v5"
suffix2 = "dev"
}
module "naming" {
source = "gribanj/caf-naming/azure"
version = "0.1.0"
name = "stack" # Base name
settings = {
rg = { resource_type = "azurerm_resource_group", suffixes = [local.suffix1, local.suffix2] },
vnet = { /* ... */ },
// Add other resources as needed
}
}
```
```hcl
# Exampels:
// EXAMPLE:  module.naming.name_outputs["log"]

  name = join("", [
    substr(module.naming.name_outputs["rg"], 0, 3),                                           # Extract 'rg-'
    local.additional_suffix,                                                                  # Insert '-monitor'
    substr(module.naming.name_outputs["rg"], 3, length(module.naming.name_outputs["rg"]) - 3) # Rest of the original string
  ])
  or  locals {
  additional_suffix = "mon"
  st_name           = replace(module.naming.name_outputs["st"], "st", "st${local.additional_suffix}")
  rg_name           = replace(module.naming.name_outputs["rg"], "rg-", "rg-${local.additional_suffix}-")


Example of dynamic naming for a storage account
locals {
  additional_suffix = "mon"
  st_name = replace(module.naming.name_outputs["st"], "st", "st${local.additional_suffix}")
}
}
```
💡 Tips & Enhancements:
- Dynamic Suffix Usage: Leverage Terraform functions like substr and replace for dynamic naming patterns.
- Resource Identification: Utilize emojis 🌐 for networking, 🔒 for security, etc., to categorize resource types.
- Consistency in Tags: Maintain a consistent tagging strategy across resources, including creation dates, environment identifiers, and other metadata.
==============================================================
No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurecaf"></a> [azurecaf](#provider\_azurecaf) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurecaf_name.naming](https://registry.terraform.io/providers/aztfmod/azurecaf/latest/docs/resources/name) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the resource | `string` | `"workload"` | no |
| <a name="input_settings"></a> [settings](#input\_settings) | nameurations for Azure resources | <pre>map(object({<br>    resource_type = string<br>    suffixes      = list(string)<br>  }))</pre> | <pre>{<br>  "aks_config": {<br>    "resource_type": "azurerm_kubernetes_cluster",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "avail_config": {<br>    "resource_type": "azurerm_availability_set",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "nic_config": {<br>    "resource_type": "azurerm_network_interface",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "nsg_config": {<br>    "resource_type": "azurerm_network_security_group",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "nsgr_config": {<br>    "resource_type": "azurerm_network_security_rule",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "pip_config": {<br>    "resource_type": "azurerm_public_ip",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "rg_config": {<br>    "resource_type": "azurerm_resource_group",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "snet_config": {<br>    "resource_type": "azurerm_subnet",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  },<br>  "vnet_config": {<br>    "resource_type": "azurerm_virtual_network",<br>    "suffixes": [<br>      "suffix1",<br>      "suffix2"<br>    ]<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name_outputs"></a> [name\_outputs](#output\_name\_outputs) | The computed names of the resources |
<!-- END_TF_DOCS -->
