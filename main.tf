#=================================== NAMMING CONVENTIONS
terraform {
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
    }
  }
}

resource "azurecaf_name" "naming" {
  for_each      = var.settings
  name          = "v3"
  resource_type = each.value.resource_type
  suffixes      = each.value.suffixes
  # suffixes      = ["glog", "nonprod"]
  clean_input = true
}
