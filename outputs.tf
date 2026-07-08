# --- azurerm_synapse_workspace ---
output "synapse_workspaces" {
  description = "All synapse_workspace resources"
  value       = module.synapse_workspaces.synapse_workspaces
  sensitive   = true
}
output "synapse_workspaces_azure_devops_repo" {
  description = "List of azure_devops_repo values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.azure_devops_repo]
}
output "synapse_workspaces_azuread_authentication_only" {
  description = "List of azuread_authentication_only values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.azuread_authentication_only]
}
output "synapse_workspaces_compute_subnet_id" {
  description = "List of compute_subnet_id values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.compute_subnet_id]
}
output "synapse_workspaces_connectivity_endpoints" {
  description = "List of connectivity_endpoints values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.connectivity_endpoints]
}
output "synapse_workspaces_customer_managed_key" {
  description = "List of customer_managed_key values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.customer_managed_key]
}
output "synapse_workspaces_data_exfiltration_protection_enabled" {
  description = "List of data_exfiltration_protection_enabled values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.data_exfiltration_protection_enabled]
}
output "synapse_workspaces_github_repo" {
  description = "List of github_repo values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.github_repo]
}
output "synapse_workspaces_identity" {
  description = "List of identity values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.identity]
}
output "synapse_workspaces_linking_allowed_for_aad_tenant_ids" {
  description = "List of linking_allowed_for_aad_tenant_ids values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.linking_allowed_for_aad_tenant_ids]
}
output "synapse_workspaces_location" {
  description = "List of location values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.location]
}
output "synapse_workspaces_managed_resource_group_name" {
  description = "List of managed_resource_group_name values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.managed_resource_group_name]
}
output "synapse_workspaces_managed_virtual_network_enabled" {
  description = "List of managed_virtual_network_enabled values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.managed_virtual_network_enabled]
}
output "synapse_workspaces_name" {
  description = "List of name values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.name]
}
output "synapse_workspaces_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.public_network_access_enabled]
}
output "synapse_workspaces_purview_id" {
  description = "List of purview_id values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.purview_id]
}
output "synapse_workspaces_resource_group_name" {
  description = "List of resource_group_name values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.resource_group_name]
}
output "synapse_workspaces_sql_administrator_login" {
  description = "List of sql_administrator_login values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.sql_administrator_login]
}
output "synapse_workspaces_sql_administrator_login_password" {
  description = "List of sql_administrator_login_password values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.sql_administrator_login_password]
  sensitive   = true
}
output "synapse_workspaces_sql_identity_control_enabled" {
  description = "List of sql_identity_control_enabled values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.sql_identity_control_enabled]
}
output "synapse_workspaces_storage_data_lake_gen2_filesystem_id" {
  description = "List of storage_data_lake_gen2_filesystem_id values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.storage_data_lake_gen2_filesystem_id]
}
output "synapse_workspaces_tags" {
  description = "List of tags values across all synapse_workspaces"
  value       = [for k, v in module.synapse_workspaces.synapse_workspaces : v.tags]
}


# --- azurerm_synapse_firewall_rule ---
output "synapse_firewall_rules" {
  description = "All synapse_firewall_rule resources"
  value       = module.synapse_firewall_rules.synapse_firewall_rules
}
output "synapse_firewall_rules_end_ip_address" {
  description = "List of end_ip_address values across all synapse_firewall_rules"
  value       = [for k, v in module.synapse_firewall_rules.synapse_firewall_rules : v.end_ip_address]
}
output "synapse_firewall_rules_name" {
  description = "List of name values across all synapse_firewall_rules"
  value       = [for k, v in module.synapse_firewall_rules.synapse_firewall_rules : v.name]
}
output "synapse_firewall_rules_start_ip_address" {
  description = "List of start_ip_address values across all synapse_firewall_rules"
  value       = [for k, v in module.synapse_firewall_rules.synapse_firewall_rules : v.start_ip_address]
}
output "synapse_firewall_rules_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_firewall_rules"
  value       = [for k, v in module.synapse_firewall_rules.synapse_firewall_rules : v.synapse_workspace_id]
}


# --- azurerm_synapse_integration_runtime_azure ---
output "synapse_integration_runtime_azures" {
  description = "All synapse_integration_runtime_azure resources"
  value       = module.synapse_integration_runtime_azures.synapse_integration_runtime_azures
}
output "synapse_integration_runtime_azures_compute_type" {
  description = "List of compute_type values across all synapse_integration_runtime_azures"
  value       = [for k, v in module.synapse_integration_runtime_azures.synapse_integration_runtime_azures : v.compute_type]
}
output "synapse_integration_runtime_azures_core_count" {
  description = "List of core_count values across all synapse_integration_runtime_azures"
  value       = [for k, v in module.synapse_integration_runtime_azures.synapse_integration_runtime_azures : v.core_count]
}
output "synapse_integration_runtime_azures_description" {
  description = "List of description values across all synapse_integration_runtime_azures"
  value       = [for k, v in module.synapse_integration_runtime_azures.synapse_integration_runtime_azures : v.description]
}
output "synapse_integration_runtime_azures_location" {
  description = "List of location values across all synapse_integration_runtime_azures"
  value       = [for k, v in module.synapse_integration_runtime_azures.synapse_integration_runtime_azures : v.location]
}
output "synapse_integration_runtime_azures_name" {
  description = "List of name values across all synapse_integration_runtime_azures"
  value       = [for k, v in module.synapse_integration_runtime_azures.synapse_integration_runtime_azures : v.name]
}
output "synapse_integration_runtime_azures_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_integration_runtime_azures"
  value       = [for k, v in module.synapse_integration_runtime_azures.synapse_integration_runtime_azures : v.synapse_workspace_id]
}
output "synapse_integration_runtime_azures_time_to_live_min" {
  description = "List of time_to_live_min values across all synapse_integration_runtime_azures"
  value       = [for k, v in module.synapse_integration_runtime_azures.synapse_integration_runtime_azures : v.time_to_live_min]
}


# --- azurerm_synapse_integration_runtime_self_hosted ---
output "synapse_integration_runtime_self_hosteds" {
  description = "All synapse_integration_runtime_self_hosted resources"
  value       = module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds
}
output "synapse_integration_runtime_self_hosteds_authorization_key_primary" {
  description = "List of authorization_key_primary values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds : v.authorization_key_primary]
}
output "synapse_integration_runtime_self_hosteds_authorization_key_secondary" {
  description = "List of authorization_key_secondary values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds : v.authorization_key_secondary]
}
output "synapse_integration_runtime_self_hosteds_description" {
  description = "List of description values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds : v.description]
}
output "synapse_integration_runtime_self_hosteds_name" {
  description = "List of name values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds : v.name]
}
output "synapse_integration_runtime_self_hosteds_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_integration_runtime_self_hosteds"
  value       = [for k, v in module.synapse_integration_runtime_self_hosteds.synapse_integration_runtime_self_hosteds : v.synapse_workspace_id]
}


# --- azurerm_synapse_linked_service ---
output "synapse_linked_services" {
  description = "All synapse_linked_service resources"
  value       = module.synapse_linked_services.synapse_linked_services
}
output "synapse_linked_services_additional_properties" {
  description = "List of additional_properties values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.additional_properties]
}
output "synapse_linked_services_annotations" {
  description = "List of annotations values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.annotations]
}
output "synapse_linked_services_description" {
  description = "List of description values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.description]
}
output "synapse_linked_services_integration_runtime" {
  description = "List of integration_runtime values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.integration_runtime]
}
output "synapse_linked_services_name" {
  description = "List of name values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.name]
}
output "synapse_linked_services_parameters" {
  description = "List of parameters values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.parameters]
}
output "synapse_linked_services_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.synapse_workspace_id]
}
output "synapse_linked_services_type" {
  description = "List of type values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.type]
}
output "synapse_linked_services_type_properties_json" {
  description = "List of type_properties_json values across all synapse_linked_services"
  value       = [for k, v in module.synapse_linked_services.synapse_linked_services : v.type_properties_json]
}


# --- azurerm_synapse_managed_private_endpoint ---
output "synapse_managed_private_endpoints" {
  description = "All synapse_managed_private_endpoint resources"
  value       = module.synapse_managed_private_endpoints.synapse_managed_private_endpoints
}
output "synapse_managed_private_endpoints_fully_qualified_domain_names" {
  description = "List of fully_qualified_domain_names values across all synapse_managed_private_endpoints"
  value       = [for k, v in module.synapse_managed_private_endpoints.synapse_managed_private_endpoints : v.fully_qualified_domain_names]
}
output "synapse_managed_private_endpoints_name" {
  description = "List of name values across all synapse_managed_private_endpoints"
  value       = [for k, v in module.synapse_managed_private_endpoints.synapse_managed_private_endpoints : v.name]
}
output "synapse_managed_private_endpoints_subresource_name" {
  description = "List of subresource_name values across all synapse_managed_private_endpoints"
  value       = [for k, v in module.synapse_managed_private_endpoints.synapse_managed_private_endpoints : v.subresource_name]
}
output "synapse_managed_private_endpoints_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_managed_private_endpoints"
  value       = [for k, v in module.synapse_managed_private_endpoints.synapse_managed_private_endpoints : v.synapse_workspace_id]
}
output "synapse_managed_private_endpoints_target_resource_id" {
  description = "List of target_resource_id values across all synapse_managed_private_endpoints"
  value       = [for k, v in module.synapse_managed_private_endpoints.synapse_managed_private_endpoints : v.target_resource_id]
}


# --- azurerm_synapse_spark_pool ---
output "synapse_spark_pools" {
  description = "All synapse_spark_pool resources"
  value       = module.synapse_spark_pools.synapse_spark_pools
}
output "synapse_spark_pools_auto_pause" {
  description = "List of auto_pause values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.auto_pause]
}
output "synapse_spark_pools_auto_scale" {
  description = "List of auto_scale values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.auto_scale]
}
output "synapse_spark_pools_cache_size" {
  description = "List of cache_size values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.cache_size]
}
output "synapse_spark_pools_compute_isolation_enabled" {
  description = "List of compute_isolation_enabled values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.compute_isolation_enabled]
}
output "synapse_spark_pools_dynamic_executor_allocation_enabled" {
  description = "List of dynamic_executor_allocation_enabled values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.dynamic_executor_allocation_enabled]
}
output "synapse_spark_pools_library_requirement" {
  description = "List of library_requirement values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.library_requirement]
}
output "synapse_spark_pools_max_executors" {
  description = "List of max_executors values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.max_executors]
}
output "synapse_spark_pools_min_executors" {
  description = "List of min_executors values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.min_executors]
}
output "synapse_spark_pools_name" {
  description = "List of name values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.name]
}
output "synapse_spark_pools_node_count" {
  description = "List of node_count values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.node_count]
}
output "synapse_spark_pools_node_size" {
  description = "List of node_size values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.node_size]
}
output "synapse_spark_pools_node_size_family" {
  description = "List of node_size_family values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.node_size_family]
}
output "synapse_spark_pools_session_level_packages_enabled" {
  description = "List of session_level_packages_enabled values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.session_level_packages_enabled]
}
output "synapse_spark_pools_spark_config" {
  description = "List of spark_config values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.spark_config]
}
output "synapse_spark_pools_spark_events_folder" {
  description = "List of spark_events_folder values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.spark_events_folder]
}
output "synapse_spark_pools_spark_log_folder" {
  description = "List of spark_log_folder values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.spark_log_folder]
}
output "synapse_spark_pools_spark_version" {
  description = "List of spark_version values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.spark_version]
}
output "synapse_spark_pools_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.synapse_workspace_id]
}
output "synapse_spark_pools_tags" {
  description = "List of tags values across all synapse_spark_pools"
  value       = [for k, v in module.synapse_spark_pools.synapse_spark_pools : v.tags]
}


# --- azurerm_synapse_sql_pool ---
output "synapse_sql_pools" {
  description = "All synapse_sql_pool resources"
  value       = module.synapse_sql_pools.synapse_sql_pools
}
output "synapse_sql_pools_collation" {
  description = "List of collation values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.collation]
}
output "synapse_sql_pools_create_mode" {
  description = "List of create_mode values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.create_mode]
}
output "synapse_sql_pools_data_encrypted" {
  description = "List of data_encrypted values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.data_encrypted]
}
output "synapse_sql_pools_geo_backup_policy_enabled" {
  description = "List of geo_backup_policy_enabled values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.geo_backup_policy_enabled]
}
output "synapse_sql_pools_name" {
  description = "List of name values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.name]
}
output "synapse_sql_pools_recovery_database_id" {
  description = "List of recovery_database_id values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.recovery_database_id]
}
output "synapse_sql_pools_restore" {
  description = "List of restore values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.restore]
}
output "synapse_sql_pools_sku_name" {
  description = "List of sku_name values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.sku_name]
}
output "synapse_sql_pools_storage_account_type" {
  description = "List of storage_account_type values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.storage_account_type]
}
output "synapse_sql_pools_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.synapse_workspace_id]
}
output "synapse_sql_pools_tags" {
  description = "List of tags values across all synapse_sql_pools"
  value       = [for k, v in module.synapse_sql_pools.synapse_sql_pools : v.tags]
}


# --- azurerm_synapse_workspace_aad_admin ---
output "synapse_workspace_aad_admins" {
  description = "All synapse_workspace_aad_admin resources"
  value       = module.synapse_workspace_aad_admins.synapse_workspace_aad_admins
}
output "synapse_workspace_aad_admins_login" {
  description = "List of login values across all synapse_workspace_aad_admins"
  value       = [for k, v in module.synapse_workspace_aad_admins.synapse_workspace_aad_admins : v.login]
}
output "synapse_workspace_aad_admins_object_id" {
  description = "List of object_id values across all synapse_workspace_aad_admins"
  value       = [for k, v in module.synapse_workspace_aad_admins.synapse_workspace_aad_admins : v.object_id]
}
output "synapse_workspace_aad_admins_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_workspace_aad_admins"
  value       = [for k, v in module.synapse_workspace_aad_admins.synapse_workspace_aad_admins : v.synapse_workspace_id]
}
output "synapse_workspace_aad_admins_tenant_id" {
  description = "List of tenant_id values across all synapse_workspace_aad_admins"
  value       = [for k, v in module.synapse_workspace_aad_admins.synapse_workspace_aad_admins : v.tenant_id]
}


# --- azurerm_synapse_workspace_extended_auditing_policy ---
output "synapse_workspace_extended_auditing_policies" {
  description = "All synapse_workspace_extended_auditing_policy resources"
  value       = module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies
  sensitive   = true
}
output "synapse_workspace_extended_auditing_policies_log_monitoring_enabled" {
  description = "List of log_monitoring_enabled values across all synapse_workspace_extended_auditing_policies"
  value       = [for k, v in module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies : v.log_monitoring_enabled]
}
output "synapse_workspace_extended_auditing_policies_retention_in_days" {
  description = "List of retention_in_days values across all synapse_workspace_extended_auditing_policies"
  value       = [for k, v in module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies : v.retention_in_days]
}
output "synapse_workspace_extended_auditing_policies_storage_account_access_key" {
  description = "List of storage_account_access_key values across all synapse_workspace_extended_auditing_policies"
  value       = [for k, v in module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies : v.storage_account_access_key]
  sensitive   = true
}
output "synapse_workspace_extended_auditing_policies_storage_account_access_key_is_secondary" {
  description = "List of storage_account_access_key_is_secondary values across all synapse_workspace_extended_auditing_policies"
  value       = [for k, v in module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies : v.storage_account_access_key_is_secondary]
}
output "synapse_workspace_extended_auditing_policies_storage_endpoint" {
  description = "List of storage_endpoint values across all synapse_workspace_extended_auditing_policies"
  value       = [for k, v in module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies : v.storage_endpoint]
}
output "synapse_workspace_extended_auditing_policies_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_workspace_extended_auditing_policies"
  value       = [for k, v in module.synapse_workspace_extended_auditing_policies.synapse_workspace_extended_auditing_policies : v.synapse_workspace_id]
}


# --- azurerm_synapse_workspace_key ---
output "synapse_workspace_keys" {
  description = "All synapse_workspace_key resources"
  value       = module.synapse_workspace_keys.synapse_workspace_keys
}
output "synapse_workspace_keys_active" {
  description = "List of active values across all synapse_workspace_keys"
  value       = [for k, v in module.synapse_workspace_keys.synapse_workspace_keys : v.active]
}
output "synapse_workspace_keys_customer_managed_key_name" {
  description = "List of customer_managed_key_name values across all synapse_workspace_keys"
  value       = [for k, v in module.synapse_workspace_keys.synapse_workspace_keys : v.customer_managed_key_name]
}
output "synapse_workspace_keys_customer_managed_key_versionless_id" {
  description = "List of customer_managed_key_versionless_id values across all synapse_workspace_keys"
  value       = [for k, v in module.synapse_workspace_keys.synapse_workspace_keys : v.customer_managed_key_versionless_id]
}
output "synapse_workspace_keys_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_workspace_keys"
  value       = [for k, v in module.synapse_workspace_keys.synapse_workspace_keys : v.synapse_workspace_id]
}


# --- azurerm_synapse_workspace_security_alert_policy ---
output "synapse_workspace_security_alert_policies" {
  description = "All synapse_workspace_security_alert_policy resources"
  value       = module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies
  sensitive   = true
}
output "synapse_workspace_security_alert_policies_disabled_alerts" {
  description = "List of disabled_alerts values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.disabled_alerts]
}
output "synapse_workspace_security_alert_policies_email_account_admins_enabled" {
  description = "List of email_account_admins_enabled values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.email_account_admins_enabled]
}
output "synapse_workspace_security_alert_policies_email_addresses" {
  description = "List of email_addresses values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.email_addresses]
}
output "synapse_workspace_security_alert_policies_policy_state" {
  description = "List of policy_state values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.policy_state]
}
output "synapse_workspace_security_alert_policies_retention_days" {
  description = "List of retention_days values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.retention_days]
}
output "synapse_workspace_security_alert_policies_storage_account_access_key" {
  description = "List of storage_account_access_key values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.storage_account_access_key]
  sensitive   = true
}
output "synapse_workspace_security_alert_policies_storage_endpoint" {
  description = "List of storage_endpoint values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.storage_endpoint]
}
output "synapse_workspace_security_alert_policies_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_workspace_security_alert_policies"
  value       = [for k, v in module.synapse_workspace_security_alert_policies.synapse_workspace_security_alert_policies : v.synapse_workspace_id]
}


# --- azurerm_synapse_workspace_sql_aad_admin ---
output "synapse_workspace_sql_aad_admins" {
  description = "All synapse_workspace_sql_aad_admin resources"
  value       = module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins
}
output "synapse_workspace_sql_aad_admins_login" {
  description = "List of login values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins : v.login]
}
output "synapse_workspace_sql_aad_admins_object_id" {
  description = "List of object_id values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins : v.object_id]
}
output "synapse_workspace_sql_aad_admins_synapse_workspace_id" {
  description = "List of synapse_workspace_id values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins : v.synapse_workspace_id]
}
output "synapse_workspace_sql_aad_admins_tenant_id" {
  description = "List of tenant_id values across all synapse_workspace_sql_aad_admins"
  value       = [for k, v in module.synapse_workspace_sql_aad_admins.synapse_workspace_sql_aad_admins : v.tenant_id]
}



