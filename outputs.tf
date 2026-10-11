output "fleet_apps_management_patches_id" {
  description = "Map of id values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no id are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_apps_management_patches_artifact_details" {
  description = "Map of artifact_details values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no artifact_details are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => one(v.artifact_details) if v.artifact_details != null && length(v.artifact_details) > 0 }
}
output "fleet_apps_management_patches_compartment_id" {
  description = "Map of compartment_id values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no compartment_id are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "fleet_apps_management_patches_defined_tags" {
  description = "Map of defined_tags values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no defined_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "fleet_apps_management_patches_dependent_patches" {
  description = "Map of dependent_patches values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no dependent_patches are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.dependent_patches if v.dependent_patches != null && length(v.dependent_patches) > 0 }
}
output "fleet_apps_management_patches_description" {
  description = "Map of description values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no description are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleet_apps_management_patches_freeform_tags" {
  description = "Map of freeform_tags values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "fleet_apps_management_patches_lifecycle_details" {
  description = "Map of lifecycle_details values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "fleet_apps_management_patches_name" {
  description = "Map of name values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no name are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_apps_management_patches_patch_type" {
  description = "Map of patch_type values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no patch_type are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => one(v.patch_type) if v.patch_type != null && length(v.patch_type) > 0 }
}
output "fleet_apps_management_patches_product" {
  description = "Map of product values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no product are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => one(v.product) if v.product != null && length(v.product) > 0 }
}
output "fleet_apps_management_patches_resource_region" {
  description = "Map of resource_region values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no resource_region are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.resource_region if v.resource_region != null && length(v.resource_region) > 0 }
}
output "fleet_apps_management_patches_severity" {
  description = "Map of severity values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no severity are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.severity if v.severity != null && length(v.severity) > 0 }
}
output "fleet_apps_management_patches_state" {
  description = "Map of state values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no state are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.state if v.state != null && length(v.state) > 0 }
}
output "fleet_apps_management_patches_system_tags" {
  description = "Map of system_tags values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no system_tags are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "fleet_apps_management_patches_time_created" {
  description = "Map of time_created values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no time_created are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "fleet_apps_management_patches_time_released" {
  description = "Map of time_released values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no time_released are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.time_released if v.time_released != null && length(v.time_released) > 0 }
}
output "fleet_apps_management_patches_time_updated" {
  description = "Map of time_updated values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no time_updated are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "fleet_apps_management_patches_type" {
  description = "Map of type values across all fleet_apps_management_patches, keyed the same as var.fleet_apps_management_patches except keys with no type are omitted"
  value       = { for k, v in oci_fleet_apps_management_patch.fleet_apps_management_patches : k => v.type if v.type != null && length(v.type) > 0 }
}

