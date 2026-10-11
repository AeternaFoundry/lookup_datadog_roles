variable "roles_lookup" {
  description = <<EOT
Map of roles_lookup, attributes below
Optional:
    - filter
EOT

  type = map(object({
    filter = optional(string)
  }))
}

