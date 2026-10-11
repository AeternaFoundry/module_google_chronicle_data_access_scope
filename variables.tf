variable "chronicle_data_access_scopes" {
  description = <<EOT
Map of chronicle_data_access_scopes, attributes below
Required:
    - data_access_scope_id
    - instance
    - location
Optional:
    - allow_all
    - deletion_policy
    - description
    - project
    - allowed_data_access_labels (block):
        - asset_namespace (optional)
        - data_access_label (optional)
        - ingestion_label (optional, block):
            - ingestion_label_key (required)
            - ingestion_label_value (optional)
        - log_type (optional)
    - denied_data_access_labels (block):
        - asset_namespace (optional)
        - data_access_label (optional)
        - ingestion_label (optional, block):
            - ingestion_label_key (required)
            - ingestion_label_value (optional)
        - log_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    data_access_scope_id = string
    instance             = string
    location             = string
    allow_all            = optional(bool)
    deletion_policy      = optional(string)
    description          = optional(string)
    project              = optional(string)
    allowed_data_access_labels = optional(list(object({
      asset_namespace   = optional(string)
      data_access_label = optional(string)
      ingestion_label = optional(object({
        ingestion_label_key   = string
        ingestion_label_value = optional(string)
      }))
      log_type = optional(string)
    })))
    denied_data_access_labels = optional(list(object({
      asset_namespace   = optional(string)
      data_access_label = optional(string)
      ingestion_label = optional(object({
        ingestion_label_key   = string
        ingestion_label_value = optional(string)
      }))
      log_type = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

