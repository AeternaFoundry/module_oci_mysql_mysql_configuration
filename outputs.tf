output "mysql_mysql_configurations_id" {
  description = "Map of id values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no id are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_mysql_configurations_compartment_id" {
  description = "Map of compartment_id values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no compartment_id are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "mysql_mysql_configurations_defined_tags" {
  description = "Map of defined_tags values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no defined_tags are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "mysql_mysql_configurations_description" {
  description = "Map of description values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no description are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "mysql_mysql_configurations_display_name" {
  description = "Map of display_name values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no display_name are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "mysql_mysql_configurations_freeform_tags" {
  description = "Map of freeform_tags values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "mysql_mysql_configurations_init_variables" {
  description = "Map of init_variables values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no init_variables are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => one(v.init_variables) if v.init_variables != null && length(v.init_variables) > 0 }
}
output "mysql_mysql_configurations_options" {
  description = "Map of options values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no options are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.options if v.options != null && length(v.options) > 0 }
}
output "mysql_mysql_configurations_parent_configuration_id" {
  description = "Map of parent_configuration_id values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no parent_configuration_id are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.parent_configuration_id if v.parent_configuration_id != null && length(v.parent_configuration_id) > 0 }
}
output "mysql_mysql_configurations_shape_name" {
  description = "Map of shape_name values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no shape_name are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.shape_name if v.shape_name != null && length(v.shape_name) > 0 }
}
output "mysql_mysql_configurations_state" {
  description = "Map of state values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no state are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "mysql_mysql_configurations_system_tags" {
  description = "Map of system_tags values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no system_tags are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "mysql_mysql_configurations_time_created" {
  description = "Map of time_created values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no time_created are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "mysql_mysql_configurations_time_updated" {
  description = "Map of time_updated values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no time_updated are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "mysql_mysql_configurations_type" {
  description = "Map of type values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no type are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => v.type if v.type != null && length(v.type) > 0 }
}
output "mysql_mysql_configurations_variables" {
  description = "Map of variables values across all mysql_mysql_configurations, keyed the same as var.mysql_mysql_configurations except keys with no variables are omitted"
  value       = { for k, v in oci_mysql_mysql_configuration.mysql_mysql_configurations : k => one(v.variables) if v.variables != null && length(v.variables) > 0 }
}

