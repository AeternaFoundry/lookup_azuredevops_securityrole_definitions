output "securityrole_definitions_lookup_id" {
  description = "Map of id values across all securityrole_definitions_lookup, keyed the same as var.securityrole_definitions_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_securityrole_definitions.securityrole_definitions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "securityrole_definitions_lookup_definitions" {
  description = "Map of definitions values across all securityrole_definitions_lookup, keyed the same as var.securityrole_definitions_lookup except keys with no definitions are omitted"
  value       = { for k, v in data.azuredevops_securityrole_definitions.securityrole_definitions_lookup : k => v.definitions if v.definitions != null && length(v.definitions) > 0 }
}
output "securityrole_definitions_lookup_scope" {
  description = "Map of scope values across all securityrole_definitions_lookup, keyed the same as var.securityrole_definitions_lookup except keys with no scope are omitted"
  value       = { for k, v in data.azuredevops_securityrole_definitions.securityrole_definitions_lookup : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

