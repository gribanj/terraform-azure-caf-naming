<!-- BEGIN_TF_DOCS -->
## Requirements

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