output "chronicle_data_access_scopes_id" {
  description = "Map of id values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no id are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chronicle_data_access_scopes_allow_all" {
  description = "Map of allow_all values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no allow_all are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.allow_all if v.allow_all != null }
}
output "chronicle_data_access_scopes_allowed_data_access_labels" {
  description = "Map of allowed_data_access_labels values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no allowed_data_access_labels are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.allowed_data_access_labels if v.allowed_data_access_labels != null && length(v.allowed_data_access_labels) > 0 }
}
output "chronicle_data_access_scopes_author" {
  description = "Map of author values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no author are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.author if v.author != null && length(v.author) > 0 }
}
output "chronicle_data_access_scopes_create_time" {
  description = "Map of create_time values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no create_time are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "chronicle_data_access_scopes_data_access_scope_id" {
  description = "Map of data_access_scope_id values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no data_access_scope_id are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.data_access_scope_id if v.data_access_scope_id != null && length(v.data_access_scope_id) > 0 }
}
output "chronicle_data_access_scopes_deletion_policy" {
  description = "Map of deletion_policy values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no deletion_policy are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "chronicle_data_access_scopes_denied_data_access_labels" {
  description = "Map of denied_data_access_labels values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no denied_data_access_labels are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.denied_data_access_labels if v.denied_data_access_labels != null && length(v.denied_data_access_labels) > 0 }
}
output "chronicle_data_access_scopes_description" {
  description = "Map of description values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no description are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "chronicle_data_access_scopes_display_name" {
  description = "Map of display_name values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no display_name are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "chronicle_data_access_scopes_instance" {
  description = "Map of instance values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no instance are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "chronicle_data_access_scopes_last_editor" {
  description = "Map of last_editor values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no last_editor are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.last_editor if v.last_editor != null && length(v.last_editor) > 0 }
}
output "chronicle_data_access_scopes_location" {
  description = "Map of location values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no location are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.location if v.location != null && length(v.location) > 0 }
}
output "chronicle_data_access_scopes_name" {
  description = "Map of name values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no name are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chronicle_data_access_scopes_project" {
  description = "Map of project values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no project are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.project if v.project != null && length(v.project) > 0 }
}
output "chronicle_data_access_scopes_update_time" {
  description = "Map of update_time values across all chronicle_data_access_scopes, keyed the same as var.chronicle_data_access_scopes except keys with no update_time are omitted"
  value       = { for k, v in google_chronicle_data_access_scope.chronicle_data_access_scopes : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

