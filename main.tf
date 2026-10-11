resource "azapi_resource" "resources" {
  for_each = var.resources

  type                             = each.value.type
  tags                             = each.value.tags
  sensitive_body_version           = each.value.sensitive_body_version
  sensitive_body                   = each.value.sensitive_body
  schema_validation_enabled        = each.value.schema_validation_enabled
  retry                            = each.value.retry
  response_export_values           = each.value.response_export_values
  replace_triggers_refs            = each.value.replace_triggers_refs
  replace_triggers_external_values = each.value.replace_triggers_external_values
  read_query_parameters            = each.value.read_query_parameters
  read_headers                     = each.value.read_headers
  parent_id                        = each.value.parent_id
  name                             = each.value.name
  locks                            = each.value.locks
  location                         = each.value.location
  list_unique_id_property          = each.value.list_unique_id_property
  ignore_other_items_in_list       = each.value.ignore_other_items_in_list
  ignore_null_property             = each.value.ignore_null_property
  ignore_missing_property          = each.value.ignore_missing_property
  ignore_casing                    = each.value.ignore_casing
  ignore_body_changes              = each.value.ignore_body_changes
  delete_query_parameters          = each.value.delete_query_parameters
  delete_headers                   = each.value.delete_headers
  create_query_parameters          = each.value.create_query_parameters
  create_headers                   = each.value.create_headers
  body                             = each.value.body
  update_headers                   = each.value.update_headers
  update_query_parameters          = each.value.update_query_parameters

  dynamic "identity" {
    for_each = each.value.identity != null ? each.value.identity : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }
}

