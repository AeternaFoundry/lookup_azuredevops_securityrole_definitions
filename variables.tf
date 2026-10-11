variable "securityrole_definitions_lookup" {
  description = <<EOT
Map of securityrole_definitions_lookup, attributes below
Required:
    - scope
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    scope = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.securityrole_definitions_lookup : (
        length(v.scope) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

