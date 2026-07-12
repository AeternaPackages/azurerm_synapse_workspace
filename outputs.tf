# --- azurerm_synapse_workspace ---
output "synapse_workspaces_azure_devops_repo" {
  description = "Map of azure_devops_repo values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_azure_devops_repo
}

output "synapse_workspaces_azuread_authentication_only" {
  description = "Map of azuread_authentication_only values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_azuread_authentication_only
}

output "synapse_workspaces_compute_subnet_id" {
  description = "Map of compute_subnet_id values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_compute_subnet_id
}

output "synapse_workspaces_connectivity_endpoints" {
  description = "Map of connectivity_endpoints values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_connectivity_endpoints
}

output "synapse_workspaces_customer_managed_key" {
  description = "Map of customer_managed_key values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_customer_managed_key
}

output "synapse_workspaces_data_exfiltration_protection_enabled" {
  description = "Map of data_exfiltration_protection_enabled values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_data_exfiltration_protection_enabled
}

output "synapse_workspaces_github_repo" {
  description = "Map of github_repo values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_github_repo
}

output "synapse_workspaces_identity" {
  description = "Map of identity values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_identity
}

output "synapse_workspaces_linking_allowed_for_aad_tenant_ids" {
  description = "Map of linking_allowed_for_aad_tenant_ids values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_linking_allowed_for_aad_tenant_ids
}

output "synapse_workspaces_location" {
  description = "Map of location values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_location
}

output "synapse_workspaces_managed_resource_group_name" {
  description = "Map of managed_resource_group_name values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_managed_resource_group_name
}

output "synapse_workspaces_managed_virtual_network_enabled" {
  description = "Map of managed_virtual_network_enabled values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_managed_virtual_network_enabled
}

output "synapse_workspaces_name" {
  description = "Map of name values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_name
}

output "synapse_workspaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_public_network_access_enabled
}

output "synapse_workspaces_purview_id" {
  description = "Map of purview_id values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_purview_id
}

output "synapse_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_resource_group_name
}

output "synapse_workspaces_sql_administrator_login" {
  description = "Map of sql_administrator_login values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_sql_administrator_login
}

output "synapse_workspaces_sql_administrator_login_password" {
  description = "Map of sql_administrator_login_password values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_sql_administrator_login_password
  sensitive   = true
}

output "synapse_workspaces_sql_identity_control_enabled" {
  description = "Map of sql_identity_control_enabled values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_sql_identity_control_enabled
}

output "synapse_workspaces_storage_data_lake_gen2_filesystem_id" {
  description = "Map of storage_data_lake_gen2_filesystem_id values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_storage_data_lake_gen2_filesystem_id
}

output "synapse_workspaces_tags" {
  description = "Map of tags values across all synapse_workspaces, keyed the same as var.synapse_workspaces"
  value       = module.synapse_workspaces.synapse_workspaces_tags
}

# --- azurerm_synapse_firewall_rule ---
output "synapse_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = module.synapse_firewall_rules.synapse_firewall_rules_end_ip_address
}

output "synapse_firewall_rules_name" {
  description = "Map of name values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = module.synapse_firewall_rules.synapse_firewall_rules_name
}

output "synapse_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = module.synapse_firewall_rules.synapse_firewall_rules_start_ip_address
}

output "synapse_firewall_rules_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_firewall_rules, keyed the same as var.synapse_firewall_rules"
  value       = module.synapse_firewall_rules.synapse_firewall_rules_synapse_workspace_id
}

# --- azurerm_synapse_integration_runtime_azure ---
output "synapse_integration_runtime_azures_compute_type" {
  description = "Map of compute_type values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures_compute_type
}

output "synapse_integration_runtime_azures_core_count" {
  description = "Map of core_count values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures_core_count
}

output "synapse_integration_runtime_azures_description" {
  description = "Map of description values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures_description
}

output "synapse_integration_runtime_azures_location" {
  description = "Map of location values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures_location
}

output "synapse_integration_runtime_azures_name" {
  description = "Map of name values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures_name
}

output "synapse_integration_runtime_azures_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures_synapse_workspace_id
}

output "synapse_integration_runtime_azures_time_to_live_min" {
  description = "Map of time_to_live_min values across all synapse_integration_runtime_azures, keyed the same as var.synapse_integration_runtime_azures"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures_time_to_live_min
}

# --- azurerm_synapse_integration_runtime_self_hosted ---
output "synapse_integration_runtime_self_hosteds_authorization_key_primary" {
  description = "Map of authorization_key_primary values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds_authorization_key_primary
}

output "synapse_integration_runtime_self_hosteds_authorization_key_secondary" {
  description = "Map of authorization_key_secondary values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds_authorization_key_secondary
}

output "synapse_integration_runtime_self_hosteds_description" {
  description = "Map of description values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds_description
}

output "synapse_integration_runtime_self_hosteds_name" {
  description = "Map of name values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds_name
}

output "synapse_integration_runtime_self_hosteds_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_integration_runtime_self_hosteds, keyed the same as var.synapse_integration_runtime_self_hosteds"
  value       = module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds_synapse_workspace_id
}

# --- azurerm_synapse_linked_service ---
output "synapse_linked_services_additional_properties" {
  description = "Map of additional_properties values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_additional_properties
}

output "synapse_linked_services_annotations" {
  description = "Map of annotations values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_annotations
}

output "synapse_linked_services_description" {
  description = "Map of description values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_description
}

output "synapse_linked_services_integration_runtime" {
  description = "Map of integration_runtime values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_integration_runtime
}

output "synapse_linked_services_name" {
  description = "Map of name values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_name
}

output "synapse_linked_services_parameters" {
  description = "Map of parameters values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_parameters
}

output "synapse_linked_services_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_synapse_workspace_id
}

output "synapse_linked_services_type" {
  description = "Map of type values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_type
}

output "synapse_linked_services_type_properties_json" {
  description = "Map of type_properties_json values across all synapse_linked_services, keyed the same as var.synapse_linked_services"
  value       = module.synapse_linked_services.synapse_linked_services_type_properties_json
}

# --- azurerm_synapse_managed_private_endpoint ---
output "synapse_managed_private_endpoints_fully_qualified_domain_names" {
  description = "Map of fully_qualified_domain_names values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = module.synapse_managed_private_endpoints.synapse_managed_private_endpoints_fully_qualified_domain_names
}

output "synapse_managed_private_endpoints_name" {
  description = "Map of name values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = module.synapse_managed_private_endpoints.synapse_managed_private_endpoints_name
}

output "synapse_managed_private_endpoints_subresource_name" {
  description = "Map of subresource_name values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = module.synapse_managed_private_endpoints.synapse_managed_private_endpoints_subresource_name
}

output "synapse_managed_private_endpoints_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = module.synapse_managed_private_endpoints.synapse_managed_private_endpoints_synapse_workspace_id
}

output "synapse_managed_private_endpoints_target_resource_id" {
  description = "Map of target_resource_id values across all synapse_managed_private_endpoints, keyed the same as var.synapse_managed_private_endpoints"
  value       = module.synapse_managed_private_endpoints.synapse_managed_private_endpoints_target_resource_id
}

# --- azurerm_synapse_spark_pool ---
output "synapse_spark_pools_auto_pause" {
  description = "Map of auto_pause values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_auto_pause
}

output "synapse_spark_pools_auto_scale" {
  description = "Map of auto_scale values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_auto_scale
}

output "synapse_spark_pools_cache_size" {
  description = "Map of cache_size values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_cache_size
}

output "synapse_spark_pools_compute_isolation_enabled" {
  description = "Map of compute_isolation_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_compute_isolation_enabled
}

output "synapse_spark_pools_dynamic_executor_allocation_enabled" {
  description = "Map of dynamic_executor_allocation_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_dynamic_executor_allocation_enabled
}

output "synapse_spark_pools_library_requirement" {
  description = "Map of library_requirement values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_library_requirement
}

output "synapse_spark_pools_max_executors" {
  description = "Map of max_executors values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_max_executors
}

output "synapse_spark_pools_min_executors" {
  description = "Map of min_executors values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_min_executors
}

output "synapse_spark_pools_name" {
  description = "Map of name values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_name
}

output "synapse_spark_pools_node_count" {
  description = "Map of node_count values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_node_count
}

output "synapse_spark_pools_node_size" {
  description = "Map of node_size values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_node_size
}

output "synapse_spark_pools_node_size_family" {
  description = "Map of node_size_family values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_node_size_family
}

output "synapse_spark_pools_session_level_packages_enabled" {
  description = "Map of session_level_packages_enabled values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_session_level_packages_enabled
}

output "synapse_spark_pools_spark_config" {
  description = "Map of spark_config values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_spark_config
}

output "synapse_spark_pools_spark_events_folder" {
  description = "Map of spark_events_folder values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_spark_events_folder
}

output "synapse_spark_pools_spark_log_folder" {
  description = "Map of spark_log_folder values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_spark_log_folder
}

output "synapse_spark_pools_spark_version" {
  description = "Map of spark_version values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_spark_version
}

output "synapse_spark_pools_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_synapse_workspace_id
}

output "synapse_spark_pools_tags" {
  description = "Map of tags values across all synapse_spark_pools, keyed the same as var.synapse_spark_pools"
  value       = module.synapse_spark_pools.synapse_spark_pools_tags
}

# --- azurerm_synapse_sql_pool ---
output "synapse_sql_pools_collation" {
  description = "Map of collation values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_collation
}

output "synapse_sql_pools_create_mode" {
  description = "Map of create_mode values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_create_mode
}

output "synapse_sql_pools_data_encrypted" {
  description = "Map of data_encrypted values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_data_encrypted
}

output "synapse_sql_pools_geo_backup_policy_enabled" {
  description = "Map of geo_backup_policy_enabled values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_geo_backup_policy_enabled
}

output "synapse_sql_pools_name" {
  description = "Map of name values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_name
}

output "synapse_sql_pools_recovery_database_id" {
  description = "Map of recovery_database_id values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_recovery_database_id
}

output "synapse_sql_pools_restore" {
  description = "Map of restore values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_restore
}

output "synapse_sql_pools_sku_name" {
  description = "Map of sku_name values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_sku_name
}

output "synapse_sql_pools_storage_account_type" {
  description = "Map of storage_account_type values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_storage_account_type
}

output "synapse_sql_pools_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_synapse_workspace_id
}

output "synapse_sql_pools_tags" {
  description = "Map of tags values across all synapse_sql_pools, keyed the same as var.synapse_sql_pools"
  value       = module.synapse_sql_pools.synapse_sql_pools_tags
}

# --- azurerm_synapse_workspace_aad_admin ---
output "synapse_workspace_aad_admins_login" {
  description = "Map of login values across all synapse_workspace_aad_admins, keyed the same as var.synapse_workspace_aad_admins"
  value       = module.synapse_workspace_aad_admins.synapse_workspace_aad_admins_login
}

output "synapse_workspace_aad_admins_object_id" {
  description = "Map of object_id values across all synapse_workspace_aad_admins, keyed the same as var.synapse_workspace_aad_admins"
  value       = module.synapse_workspace_aad_admins.synapse_workspace_aad_admins_object_id
}

output "synapse_workspace_aad_admins_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_aad_admins, keyed the same as var.synapse_workspace_aad_admins"
  value       = module.synapse_workspace_aad_admins.synapse_workspace_aad_admins_synapse_workspace_id
}

output "synapse_workspace_aad_admins_tenant_id" {
  description = "Map of tenant_id values across all synapse_workspace_aad_admins, keyed the same as var.synapse_workspace_aad_admins"
  value       = module.synapse_workspace_aad_admins.synapse_workspace_aad_admins_tenant_id
}

# --- azurerm_synapse_workspace_extended_auditing_policy ---
output "synapse_workspace_extended_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies_log_monitoring_enabled
}

output "synapse_workspace_extended_auditing_policies_retention_in_days" {
  description = "Map of retention_in_days values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies_retention_in_days
}

output "synapse_workspace_extended_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies_storage_account_access_key
  sensitive   = true
}

output "synapse_workspace_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "Map of storage_account_access_key_is_secondary values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies_storage_account_access_key_is_secondary
}

output "synapse_workspace_extended_auditing_policies_storage_endpoint" {
  description = "Map of storage_endpoint values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies_storage_endpoint
}

output "synapse_workspace_extended_auditing_policies_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_extended_auditing_policies, keyed the same as var.synapse_workspace_extended_auditing_policies"
  value       = module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies_synapse_workspace_id
}

# --- azurerm_synapse_workspace_key ---
output "synapse_workspace_keys_active" {
  description = "Map of active values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = module.synapse_workspace_keys.synapse_workspace_keys_active
}

output "synapse_workspace_keys_customer_managed_key_name" {
  description = "Map of customer_managed_key_name values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = module.synapse_workspace_keys.synapse_workspace_keys_customer_managed_key_name
}

output "synapse_workspace_keys_customer_managed_key_versionless_id" {
  description = "Map of customer_managed_key_versionless_id values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = module.synapse_workspace_keys.synapse_workspace_keys_customer_managed_key_versionless_id
}

output "synapse_workspace_keys_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_keys, keyed the same as var.synapse_workspace_keys"
  value       = module.synapse_workspace_keys.synapse_workspace_keys_synapse_workspace_id
}

# --- azurerm_synapse_workspace_security_alert_policy ---
output "synapse_workspace_security_alert_policies_disabled_alerts" {
  description = "Map of disabled_alerts values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_disabled_alerts
}

output "synapse_workspace_security_alert_policies_email_account_admins_enabled" {
  description = "Map of email_account_admins_enabled values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_email_account_admins_enabled
}

output "synapse_workspace_security_alert_policies_email_addresses" {
  description = "Map of email_addresses values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_email_addresses
}

output "synapse_workspace_security_alert_policies_policy_state" {
  description = "Map of policy_state values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_policy_state
}

output "synapse_workspace_security_alert_policies_retention_days" {
  description = "Map of retention_days values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_retention_days
}

output "synapse_workspace_security_alert_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_storage_account_access_key
  sensitive   = true
}

output "synapse_workspace_security_alert_policies_storage_endpoint" {
  description = "Map of storage_endpoint values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_storage_endpoint
}

output "synapse_workspace_security_alert_policies_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_security_alert_policies, keyed the same as var.synapse_workspace_security_alert_policies"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies_synapse_workspace_id
}

# --- azurerm_synapse_workspace_sql_aad_admin ---
output "synapse_workspace_sql_aad_admins_login" {
  description = "Map of login values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins_login
}

output "synapse_workspace_sql_aad_admins_object_id" {
  description = "Map of object_id values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins_object_id
}

output "synapse_workspace_sql_aad_admins_synapse_workspace_id" {
  description = "Map of synapse_workspace_id values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins_synapse_workspace_id
}

output "synapse_workspace_sql_aad_admins_tenant_id" {
  description = "Map of tenant_id values across all synapse_workspace_sql_aad_admins, keyed the same as var.synapse_workspace_sql_aad_admins"
  value       = module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins_tenant_id
}


