variable "settings" {
  description = "Configurations for Azure resources"
  type = map(object({
    resource_type = string
    suffixes      = list(string)
  }))

  default = {
    rg_config = {
      resource_type = "azurerm_resource_group"
      suffixes      = ["suffix1", "suffix2"]
    },
    vnet_config = {
      resource_type = "azurerm_virtual_network"
      suffixes      = ["suffix1", "suffix2"]
    }
    # Add more resources as needed
  }
}

