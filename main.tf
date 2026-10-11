data "datadog_roles" "roles_lookup" {
  for_each = var.roles_lookup

  filter = each.value.filter
}

