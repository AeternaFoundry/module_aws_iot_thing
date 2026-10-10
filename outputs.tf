output "iot_things_id" {
  description = "Map of id values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_things_arn" {
  description = "Map of arn values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iot_things_attributes" {
  description = "Map of attributes values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "iot_things_default_client_id" {
  description = "Map of default_client_id values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.default_client_id if v.default_client_id != null && length(v.default_client_id) > 0 }
}
output "iot_things_name" {
  description = "Map of name values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iot_things_region" {
  description = "Map of region values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_things_thing_type_name" {
  description = "Map of thing_type_name values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.thing_type_name if v.thing_type_name != null && length(v.thing_type_name) > 0 }
}
output "iot_things_version" {
  description = "Map of version values across all iot_things, keyed the same as var.iot_things"
  value       = { for k, v in aws_iot_thing.iot_things : k => v.version if v.version != null }
}

