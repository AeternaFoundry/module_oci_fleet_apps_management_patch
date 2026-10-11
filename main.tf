resource "oci_fleet_apps_management_patch" "fleet_apps_management_patches" {
  for_each = var.fleet_apps_management_patches

  compartment_id = each.value.compartment_id
  name           = each.value.name
  severity       = each.value.severity
  time_released  = each.value.time_released
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags

  artifact_details {
    dynamic "artifact" {
      for_each = each.value.artifact_details.artifact != null ? [each.value.artifact_details.artifact] : []
      content {
        dynamic "content" {
          for_each = artifact.value.content != null ? [artifact.value.content] : []
          content {
            bucket      = content.value.bucket
            checksum    = content.value.checksum
            namespace   = content.value.namespace
            object      = content.value.object
            source_type = content.value.source_type
          }
        }
      }
    }
    dynamic "artifacts" {
      for_each = each.value.artifact_details.artifacts != null ? each.value.artifact_details.artifacts : []
      content {
        architecture = artifacts.value.architecture
        dynamic "content" {
          for_each = artifacts.value.content != null ? [artifacts.value.content] : []
          content {
            bucket      = content.value.bucket
            checksum    = content.value.checksum
            namespace   = content.value.namespace
            object      = content.value.object
            source_type = content.value.source_type
          }
        }
        os_type = artifacts.value.os_type
      }
    }
    category = each.value.artifact_details.category
  }

  patch_type {
    platform_configuration_id = each.value.patch_type.platform_configuration_id
  }

  product {
    platform_configuration_id = each.value.product.platform_configuration_id
    version                   = each.value.product.version
  }

  dynamic "dependent_patches" {
    for_each = each.value.dependent_patches != null ? each.value.dependent_patches : []
    content {
      id = dependent_patches.value.id
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

