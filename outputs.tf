output "securityrole_definitions_lookup_id" {
  description = "Map of id values across all securityrole_definitions_lookup, keyed the same as var.securityrole_definitions_lookup"
  value       = { for k, v in data.azuredevops_securityrole_definitions.securityrole_definitions_lookup : k => v.id }
}
output "securityrole_definitions_lookup_definitions" {
  description = "Map of definitions values across all securityrole_definitions_lookup, keyed the same as var.securityrole_definitions_lookup"
  value       = { for k, v in data.azuredevops_securityrole_definitions.securityrole_definitions_lookup : k => v.definitions }
}
output "securityrole_definitions_lookup_scope" {
  description = "Map of scope values across all securityrole_definitions_lookup, keyed the same as var.securityrole_definitions_lookup"
  value       = { for k, v in data.azuredevops_securityrole_definitions.securityrole_definitions_lookup : k => v.scope }
}

