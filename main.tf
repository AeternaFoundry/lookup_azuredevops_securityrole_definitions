data "azuredevops_securityrole_definitions" "securityrole_definitions_lookup" {
  for_each = var.securityrole_definitions_lookup

  scope = each.value.scope

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

