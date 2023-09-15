#=================================== NAMMING CONVENTIONS
// https://github.com/aztfmod/terraform-provider-azurecaf/blob/main/docs/resources/azurecaf_name.md

locals {
  suffix1 = "sqlarchive"
  suffix2 = "prod"
}

module "naming" {
  source = "../../"
  settings = {
    rg_name = {
      resource_type = "azurerm_resource_group"
      suffixes      = [local.suffix1, local.suffix2]
    },
    vnet_name = {
      resource_type = "azurerm_virtual_network"
      suffixes      = [local.suffix1, local.suffix2]
    },
    snet_name = {
      resource_type = "azurerm_subnet"
      suffixes      = [local.suffix1, local.suffix2]
    },
    nsg_name = {
      resource_type = "azurerm_network_security_group"
      suffixes      = [local.suffix1, local.suffix2]
    },
    nsgr_name = {
      resource_type = "azurerm_network_security_rule"
      suffixes      = [local.suffix1, local.suffix2]
    },
    avail_name = {
      resource_type = "azurerm_availability_set"
      suffixes      = [local.suffix1, local.suffix2]
    },
    pip_name = {
      resource_type = "azurerm_public_ip"
      suffixes      = [local.suffix1, local.suffix2]
    },
    nic_name = {
      resource_type = "azurerm_network_interface"
      suffixes      = [local.suffix1, local.suffix2]
    },
  }
}
