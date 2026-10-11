output "resources_id" {
  description = "Map of id values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resources_body" {
  description = "Map of body values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.body if v.body != null }
}
output "resources_create_headers" {
  description = "Map of create_headers values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.create_headers if v.create_headers != null && length(v.create_headers) > 0 }
}
output "resources_create_query_parameters" {
  description = "Map of create_query_parameters values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.create_query_parameters if v.create_query_parameters != null && length(v.create_query_parameters) > 0 }
}
output "resources_delete_headers" {
  description = "Map of delete_headers values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.delete_headers if v.delete_headers != null && length(v.delete_headers) > 0 }
}
output "resources_delete_query_parameters" {
  description = "Map of delete_query_parameters values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.delete_query_parameters if v.delete_query_parameters != null && length(v.delete_query_parameters) > 0 }
}
output "resources_identity" {
  description = "Map of identity values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "resources_ignore_body_changes" {
  description = "Map of ignore_body_changes values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.ignore_body_changes if v.ignore_body_changes != null && length(v.ignore_body_changes) > 0 }
}
output "resources_ignore_casing" {
  description = "Map of ignore_casing values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.ignore_casing if v.ignore_casing != null }
}
output "resources_ignore_missing_property" {
  description = "Map of ignore_missing_property values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.ignore_missing_property if v.ignore_missing_property != null }
}
output "resources_ignore_null_property" {
  description = "Map of ignore_null_property values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.ignore_null_property if v.ignore_null_property != null }
}
output "resources_ignore_other_items_in_list" {
  description = "Map of ignore_other_items_in_list values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.ignore_other_items_in_list if v.ignore_other_items_in_list != null && length(v.ignore_other_items_in_list) > 0 }
}
output "resources_list_unique_id_property" {
  description = "Map of list_unique_id_property values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.list_unique_id_property if v.list_unique_id_property != null && length(v.list_unique_id_property) > 0 }
}
output "resources_location" {
  description = "Map of location values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.location if v.location != null && length(v.location) > 0 }
}
output "resources_locks" {
  description = "Map of locks values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.locks if v.locks != null && length(v.locks) > 0 }
}
output "resources_name" {
  description = "Map of name values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.name if v.name != null && length(v.name) > 0 }
}
output "resources_output" {
  description = "Map of output values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.output if v.output != null }
}
output "resources_parent_id" {
  description = "Map of parent_id values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}
output "resources_read_headers" {
  description = "Map of read_headers values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.read_headers if v.read_headers != null && length(v.read_headers) > 0 }
}
output "resources_read_query_parameters" {
  description = "Map of read_query_parameters values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.read_query_parameters if v.read_query_parameters != null && length(v.read_query_parameters) > 0 }
}
output "resources_replace_triggers_external_values" {
  description = "Map of replace_triggers_external_values values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.replace_triggers_external_values if v.replace_triggers_external_values != null }
}
output "resources_replace_triggers_refs" {
  description = "Map of replace_triggers_refs values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.replace_triggers_refs if v.replace_triggers_refs != null && length(v.replace_triggers_refs) > 0 }
}
output "resources_response_export_values" {
  description = "Map of response_export_values values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.response_export_values if v.response_export_values != null }
}
output "resources_retry" {
  description = "Map of retry values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.retry if v.retry != null && length(v.retry) > 0 }
}
output "resources_schema_validation_enabled" {
  description = "Map of schema_validation_enabled values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.schema_validation_enabled if v.schema_validation_enabled != null }
}
output "resources_sensitive_body" {
  description = "Map of sensitive_body values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.sensitive_body if v.sensitive_body != null }
}
output "resources_sensitive_body_version" {
  description = "Map of sensitive_body_version values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.sensitive_body_version if v.sensitive_body_version != null && length(v.sensitive_body_version) > 0 }
}
output "resources_tags" {
  description = "Map of tags values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "resources_type" {
  description = "Map of type values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.type if v.type != null && length(v.type) > 0 }
}
output "resources_update_headers" {
  description = "Map of update_headers values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.update_headers if v.update_headers != null && length(v.update_headers) > 0 }
}
output "resources_update_query_parameters" {
  description = "Map of update_query_parameters values across all resources, keyed the same as var.resources"
  value       = { for k, v in azapi_resource.resources : k => v.update_query_parameters if v.update_query_parameters != null && length(v.update_query_parameters) > 0 }
}

