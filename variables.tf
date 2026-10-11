variable "resources" {
  description = <<EOT
Map of resources, attributes below
Required:
    - type
Optional:
    - body
    - create_headers
    - create_query_parameters
    - delete_headers
    - delete_query_parameters
    - ignore_body_changes
    - ignore_casing
    - ignore_missing_property
    - ignore_null_property
    - ignore_other_items_in_list
    - list_unique_id_property
    - location
    - locks
    - name
    - parent_id
    - read_headers
    - read_query_parameters
    - replace_triggers_external_values
    - replace_triggers_refs
    - response_export_values
    - retry
    - schema_validation_enabled
    - sensitive_body
    - sensitive_body_version
    - tags
    - update_headers
    - update_query_parameters
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    type                      = string
    tags                      = optional(map(string))
    sensitive_body_version    = optional(map(string))
    sensitive_body            = optional(any)
    schema_validation_enabled = optional(bool)
    retry = optional(object({
      error_message_regex  = list(string)
      interval_seconds     = optional(number)
      max_interval_seconds = optional(number)
      multiplier           = optional(number)
      randomization_factor = optional(number)
    }))
    response_export_values           = optional(any)
    replace_triggers_refs            = optional(list(string))
    replace_triggers_external_values = optional(any)
    read_query_parameters            = optional(map(any))
    read_headers                     = optional(map(string))
    parent_id                        = optional(string)
    name                             = optional(string)
    locks                            = optional(list(string))
    location                         = optional(string)
    list_unique_id_property          = optional(map(string))
    ignore_other_items_in_list       = optional(list(string))
    ignore_null_property             = optional(bool)
    ignore_missing_property          = optional(bool)
    ignore_casing                    = optional(bool)
    ignore_body_changes              = optional(list(string))
    delete_query_parameters          = optional(map(any))
    delete_headers                   = optional(map(string))
    create_query_parameters          = optional(map(any))
    create_headers                   = optional(map(string))
    body                             = optional(any)
    update_headers                   = optional(map(string))
    update_query_parameters          = optional(map(any))
    identity = optional(list(object({
      identity_ids = optional(list(string))
      type         = string
    })))
  }))
}

