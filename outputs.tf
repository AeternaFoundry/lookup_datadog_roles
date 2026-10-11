output "roles_lookup_id" {
  description = "Map of id values across all roles_lookup, keyed the same as var.roles_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_roles.roles_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "roles_lookup_filter" {
  description = "Map of filter values across all roles_lookup, keyed the same as var.roles_lookup except keys with no filter are omitted"
  value       = { for k, v in data.datadog_roles.roles_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "roles_lookup_roles" {
  description = "Map of roles values across all roles_lookup, keyed the same as var.roles_lookup except keys with no roles are omitted"
  value       = { for k, v in data.datadog_roles.roles_lookup : k => v.roles if v.roles != null && length(v.roles) > 0 }
}

