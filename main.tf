resource "google_chronicle_data_access_scope" "chronicle_data_access_scopes" {
  for_each = var.chronicle_data_access_scopes

  data_access_scope_id = each.value.data_access_scope_id
  instance             = each.value.instance
  location             = each.value.location
  allow_all            = each.value.allow_all
  deletion_policy      = each.value.deletion_policy
  description          = each.value.description
  project              = each.value.project

  dynamic "allowed_data_access_labels" {
    for_each = each.value.allowed_data_access_labels != null ? each.value.allowed_data_access_labels : []
    content {
      asset_namespace   = allowed_data_access_labels.value.asset_namespace
      data_access_label = allowed_data_access_labels.value.data_access_label
      dynamic "ingestion_label" {
        for_each = allowed_data_access_labels.value.ingestion_label != null ? [allowed_data_access_labels.value.ingestion_label] : []
        content {
          ingestion_label_key   = ingestion_label.value.ingestion_label_key
          ingestion_label_value = ingestion_label.value.ingestion_label_value
        }
      }
      log_type = allowed_data_access_labels.value.log_type
    }
  }

  dynamic "denied_data_access_labels" {
    for_each = each.value.denied_data_access_labels != null ? each.value.denied_data_access_labels : []
    content {
      asset_namespace   = denied_data_access_labels.value.asset_namespace
      data_access_label = denied_data_access_labels.value.data_access_label
      dynamic "ingestion_label" {
        for_each = denied_data_access_labels.value.ingestion_label != null ? [denied_data_access_labels.value.ingestion_label] : []
        content {
          ingestion_label_key   = ingestion_label.value.ingestion_label_key
          ingestion_label_value = ingestion_label.value.ingestion_label_value
        }
      }
      log_type = denied_data_access_labels.value.log_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

