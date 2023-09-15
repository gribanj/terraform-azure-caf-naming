<!-- BEGIN_TF_DOCS -->

## Providers

| Name                                                            | Version |
| --------------------------------------------------------------- | ------- |
| <a name="provider_azurecaf"></a> [azurecaf](#provider_azurecaf) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                        | Type     |
| ----------------------------------------------------------------------------------------------------------- | -------- |
| [azurecaf_name.naming](https://registry.terraform.io/providers/aztfmod/azurecaf/latest/docs/resources/name) | resource |

## Inputs

| Name                                                      | Description                        | Type                                                                                   | Default                                                                                                                                                                                                                                                                         | Required |
| --------------------------------------------------------- | ---------------------------------- | -------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------: |
| <a name="input_settings"></a> [settings](#input_settings) | Configurations for Azure resources | <pre>map(object({<br> resource_type = string<br> suffixes = list(string)<br> }))</pre> | <pre>{<br> "rg_config": {<br> "resource_type": "azurerm_resource_group",<br> "suffixes": [<br> "suffix1",<br> "suffix2"<br> ]<br> },<br> "vnet_config": {<br> "resource_type": "azurerm_virtual_network",<br> "suffixes": [<br> "suffix1",<br> "suffix2"<br> ]<br> }<br>}</pre> |    no    |

## Outputs

| Name                                                                    | Description                         |
| ----------------------------------------------------------------------- | ----------------------------------- |
| <a name="output_name_outputs"></a> [name_outputs](#output_name_outputs) | The computed names of the resources |

<!-- END_TF_DOCS -->
