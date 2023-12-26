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
    rg = {
      resource_type = "azurerm_resource_group"
      suffixes      = [local.suffix1, local.suffix2]
    },
    vnet = {
      resource_type = "azurerm_virtual_network"
      suffixes      = [local.suffix1, local.suffix2]
    },
    snet = {
      resource_type = "azurerm_subnet"
      suffixes      = [local.suffix1, local.suffix2]
    },
    nsg = {
      resource_type = "azurerm_network_security_group"
      suffixes      = [local.suffix1, local.suffix2]
    },
    nsgr = {
      resource_type = "azurerm_network_security_rule"
      suffixes      = [local.suffix1, local.suffix2]
    },
    avail = {
      resource_type = "azurerm_availability_set"
      suffixes      = [local.suffix1, local.suffix2]
    },
    pip = {
      resource_type = "azurerm_public_ip"
      suffixes      = [local.suffix1, local.suffix2]
    },
    nic = {
      resource_type = "azurerm_network_interface"
      suffixes      = [local.suffix1, local.suffix2]
    },
    pdns = {
      resource_type = "azurerm_private_dns_zone"
      suffixes      = [local.suffix1, local.suffix2]
    },
    pe = {
      resource_type = "azurerm_private_endpoint"
      suffixes      = [local.suffix1, local.suffix2]
    },
    bast = {
      resource_type = "azurerm_bastion_host"
      suffixes      = [local.suffix1, local.suffix2]
    },
    lb = {
      resource_type = "azurerm_lb"
      suffixes      = [local.suffix1, local.suffix2]
    },
    pep = {
      resource_type = "azurerm_private_endpoint"
      suffixes      = [local.suffix1, local.suffix2]
    },
    msi = {
      resource_type = "azurerm_user_assigned_identity"
      suffixes      = [local.suffix1, local.suffix2]
    },
    log = {
      resource_type = "azurerm_log_analytics_workspace"
      suffixes      = [local.suffix1, local.suffix2]
    },
    kv = {
      resource_type = "azurerm_key_vault"
      suffixes      = [local.suffix1, local.suffix2]
    },
    nw = {
      resource_type = "azurerm_network_watcher"
      suffixes      = [local.suffix1, local.suffix2]
    },
    st = {
      resource_type = "azurerm_storage_account"
      suffixes      = [local.suffix1, local.suffix2]
    },
    # Add more resources as needed
  }
}
