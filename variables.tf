variable "name" {
  description = "Name of the resource"
  type        = string
  default     = "workload"
}

variable "settings" {
  description = "nameurations for Azure resources"
  type = map(object({
    resource_type = string
    suffixes      = list(string)
  }))

  default = {
    rg_name = {
      resource_type = "azurerm_resource_group"
      suffixes      = ["suffix1", "suffix2"]
    },
    vnet_name = {
      resource_type = "azurerm_virtual_network"
      suffixes      = ["suffix1", "suffix2"]
    },
    snet_name = {
      resource_type = "azurerm_subnet"
      suffixes      = ["suffix1", "suffix2"]
    },
    nsg_name = {
      resource_type = "azurerm_network_security_group"
      suffixes      = ["suffix1", "suffix2"]
    },
    nsgr_name = {
      resource_type = "azurerm_network_security_rule"
      suffixes      = ["suffix1", "suffix2"]
    },
    avail_name = {
      resource_type = "azurerm_availability_set"
      suffixes      = ["suffix1", "suffix2"]
    },
    pip_name = {
      resource_type = "azurerm_public_ip"
      suffixes      = ["suffix1", "suffix2"]
    },
    nic_name = {
      resource_type = "azurerm_network_interface"
      suffixes      = ["suffix1", "suffix2"]
    },
    aks_name = {
      resource_type = "azurerm_kubernetes_cluster"
      suffixes      = ["suffix1", "suffix2"]
    },
    # Add more resources as needed
  }
}
