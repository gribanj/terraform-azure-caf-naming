output "name_outputs" {
  description = "The computed names of the resources"
  value       = { for s, r in azurecaf_name.naming : s => r.result }
}

/*
e.g.
  module.naming.name_outputs["rg_config"]
*/
