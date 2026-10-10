variable "iot_things" {
  description = <<EOT
Map of iot_things, attributes below
Required:
    - name
Optional:
    - attributes
    - region
    - thing_type_name
EOT

  type = map(object({
    name            = string
    attributes      = optional(map(string))
    region          = optional(string)
    thing_type_name = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_things : (
        v.thing_type_name == null || (length(v.thing_type_name) >= 1 && length(v.thing_type_name) <= 128)
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

