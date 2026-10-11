variable "fleet_apps_management_patches" {
  description = <<EOT
Map of fleet_apps_management_patches, attributes below
Required:
    - compartment_id
    - name
    - severity
    - time_released
    - artifact_details (block):
        - artifact (optional, block):
            - content (optional, block):
                - bucket (required)
                - checksum (required)
                - namespace (required)
                - object (required)
                - source_type (required)
        - artifacts (optional, block):
            - architecture (optional)
            - content (optional, block):
                - bucket (required)
                - checksum (required)
                - namespace (required)
                - object (required)
                - source_type (required)
            - os_type (optional)
        - category (required)
    - patch_type (block):
        - platform_configuration_id (required)
    - product (block):
        - platform_configuration_id (required)
        - version (required)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - dependent_patches (block):
        - id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    name           = string
    severity       = string
    time_released  = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    artifact_details = object({
      artifact = optional(object({
        content = optional(object({
          bucket      = string
          checksum    = string
          namespace   = string
          object      = string
          source_type = string
        }))
      }))
      artifacts = optional(list(object({
        architecture = optional(string)
        content = optional(object({
          bucket      = string
          checksum    = string
          namespace   = string
          object      = string
          source_type = string
        }))
        os_type = optional(string)
      })))
      category = string
    })
    patch_type = object({
      platform_configuration_id = string
    })
    product = object({
      platform_configuration_id = string
      version                   = string
    })
    dependent_patches = optional(list(object({
      id = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_patches : (
        contains([for v in ["GENERIC", "PLATFORM_SPECIFIC"] : lower(v)], lower(v.artifact_details.category))
      )
    ])
    error_message = "must be one of: \"GENERIC\", \"PLATFORM_SPECIFIC\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_patches : (
        v.artifact_details.artifact == null || (v.artifact_details.artifact.content == null || (contains([for v in ["OBJECT_STORAGE_BUCKET"] : lower(v)], lower(v.artifact_details.artifact.content.source_type))))
      )
    ])
    error_message = "must be one of: \"OBJECT_STORAGE_BUCKET\""
  }
  validation {
    condition = alltrue([
      for k, v in var.fleet_apps_management_patches : (
        v.artifact_details.artifacts == null || alltrue([for item in v.artifact_details.artifacts : (item.content == null || (contains([for v in ["OBJECT_STORAGE_BUCKET"] : lower(v)], lower(item.content.source_type))))])
      )
    ])
    error_message = "must be one of: \"OBJECT_STORAGE_BUCKET\""
  }
}

