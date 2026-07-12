variable "synapse_workspaces" {
  description = <<EOT
Map of synapse_workspaces, attributes below
Required:
    - location
    - name
    - resource_group_name
    - storage_data_lake_gen2_filesystem_id
Optional:
    - azuread_authentication_only
    - compute_subnet_id
    - data_exfiltration_protection_enabled
    - linking_allowed_for_aad_tenant_ids
    - managed_resource_group_name
    - managed_virtual_network_enabled
    - public_network_access_enabled
    - purview_id
    - sql_administrator_login
    - sql_administrator_login_password
    - sql_administrator_login_password_key_vault_id (alternative to sql_administrator_login_password - read from Key Vault instead)
    - sql_administrator_login_password_key_vault_secret_name (alternative to sql_administrator_login_password - read from Key Vault instead)
    - sql_identity_control_enabled
    - tags
    - azure_devops_repo (block)
    - customer_managed_key (block)
    - github_repo (block)
    - identity (block)
Nested synapse_firewall_rules (azurerm_synapse_firewall_rule):
    Required:
        - end_ip_address
        - name
        - start_ip_address
Nested synapse_integration_runtime_azures (azurerm_synapse_integration_runtime_azure):
    Required:
        - location
        - name
    Optional:
        - compute_type
        - core_count
        - description
        - time_to_live_min
Nested synapse_integration_runtime_self_hosteds (azurerm_synapse_integration_runtime_self_hosted):
    Required:
        - name
    Optional:
        - description
Nested synapse_linked_services (azurerm_synapse_linked_service):
    Required:
        - name
        - type
        - type_properties_json
    Optional:
        - additional_properties
        - annotations
        - description
        - parameters
        - integration_runtime (block)
Nested synapse_managed_private_endpoints (azurerm_synapse_managed_private_endpoint):
    Required:
        - name
        - subresource_name
        - target_resource_id
    Optional:
        - fully_qualified_domain_names
Nested synapse_spark_pools (azurerm_synapse_spark_pool):
    Required:
        - name
        - node_size
        - node_size_family
        - spark_version
    Optional:
        - cache_size
        - compute_isolation_enabled
        - dynamic_executor_allocation_enabled
        - max_executors
        - min_executors
        - node_count
        - session_level_packages_enabled
        - spark_events_folder
        - spark_log_folder
        - tags
        - auto_pause (block)
        - auto_scale (block)
        - library_requirement (block)
        - spark_config (block)
Nested synapse_sql_pools (azurerm_synapse_sql_pool):
    Required:
        - name
        - sku_name
        - storage_account_type
    Optional:
        - collation
        - create_mode
        - data_encrypted
        - geo_backup_policy_enabled
        - recovery_database_id
        - tags
        - restore (block)
Nested synapse_workspace_aad_admins (azurerm_synapse_workspace_aad_admin):
    Required:
        - login
        - object_id
        - tenant_id
Nested synapse_workspace_extended_auditing_policies (azurerm_synapse_workspace_extended_auditing_policy):
    Optional:
        - log_monitoring_enabled
        - retention_in_days
        - storage_account_access_key
        - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_account_access_key_is_secondary
        - storage_endpoint
Nested synapse_workspace_keys (azurerm_synapse_workspace_key):
    Required:
        - active
        - customer_managed_key_name
    Optional:
        - customer_managed_key_versionless_id
Nested synapse_workspace_security_alert_policies (azurerm_synapse_workspace_security_alert_policy):
    Required:
        - policy_state
    Optional:
        - disabled_alerts
        - email_account_admins_enabled
        - email_addresses
        - retention_days
        - storage_account_access_key
        - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
        - storage_endpoint
Nested synapse_workspace_sql_aad_admins (azurerm_synapse_workspace_sql_aad_admin):
    Required:
        - login
        - object_id
        - tenant_id
EOT

  type = map(object({
    location                                               = string
    name                                                   = string
    resource_group_name                                    = string
    storage_data_lake_gen2_filesystem_id                   = string
    azuread_authentication_only                            = optional(bool) # Default: false
    compute_subnet_id                                      = optional(string)
    data_exfiltration_protection_enabled                   = optional(bool)
    linking_allowed_for_aad_tenant_ids                     = optional(list(string))
    managed_resource_group_name                            = optional(string)
    managed_virtual_network_enabled                        = optional(bool)
    public_network_access_enabled                          = optional(bool) # Default: true
    purview_id                                             = optional(string)
    sql_administrator_login                                = optional(string)
    sql_administrator_login_password                       = optional(string)
    sql_administrator_login_password_key_vault_id          = optional(string)
    sql_administrator_login_password_key_vault_secret_name = optional(string)
    sql_identity_control_enabled                           = optional(bool)
    tags                                                   = optional(map(string))
    azure_devops_repo = optional(object({
      account_name    = string
      branch_name     = string
      last_commit_id  = optional(string)
      project_name    = string
      repository_name = string
      root_folder     = string
      tenant_id       = optional(string)
    }))
    customer_managed_key = optional(object({
      key_name                  = optional(string) # Default: "cmk"
      key_versionless_id        = string
      user_assigned_identity_id = optional(string)
    }))
    github_repo = optional(object({
      account_name    = string
      branch_name     = string
      git_url         = optional(string)
      last_commit_id  = optional(string)
      repository_name = string
      root_folder     = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    synapse_firewall_rules = optional(map(object({
      end_ip_address   = string
      name             = string
      start_ip_address = string
    })))
    synapse_integration_runtime_azures = optional(map(object({
      location         = string
      name             = string
      compute_type     = optional(string) # Default: "General"
      core_count       = optional(number) # Default: 8
      description      = optional(string)
      time_to_live_min = optional(number) # Default: 0
    })))
    synapse_integration_runtime_self_hosteds = optional(map(object({
      name        = string
      description = optional(string)
    })))
    synapse_linked_services = optional(map(object({
      name                  = string
      type                  = string
      type_properties_json  = string
      additional_properties = optional(map(string))
      annotations           = optional(list(string))
      description           = optional(string)
      parameters            = optional(map(string))
      integration_runtime = optional(object({
        name       = string
        parameters = optional(map(string))
      }))
    })))
    synapse_managed_private_endpoints = optional(map(object({
      name                         = string
      subresource_name             = string
      target_resource_id           = string
      fully_qualified_domain_names = optional(list(string))
    })))
    synapse_spark_pools = optional(map(object({
      name                                = string
      node_size                           = string
      node_size_family                    = string
      spark_version                       = string
      cache_size                          = optional(number)
      compute_isolation_enabled           = optional(bool) # Default: false
      dynamic_executor_allocation_enabled = optional(bool) # Default: false
      max_executors                       = optional(number)
      min_executors                       = optional(number)
      node_count                          = optional(number)
      session_level_packages_enabled      = optional(bool)   # Default: false
      spark_events_folder                 = optional(string) # Default: "/events"
      spark_log_folder                    = optional(string) # Default: "/logs"
      tags                                = optional(map(string))
      auto_pause = optional(object({
        delay_in_minutes = number
      }))
      auto_scale = optional(object({
        max_node_count = number
        min_node_count = number
      }))
      library_requirement = optional(object({
        content  = string
        filename = string
      }))
      spark_config = optional(object({
        content  = string
        filename = string
      }))
    })))
    synapse_sql_pools = optional(map(object({
      name                      = string
      sku_name                  = string
      storage_account_type      = string
      collation                 = optional(string)
      create_mode               = optional(string) # Default: "Default"
      data_encrypted            = optional(bool)
      geo_backup_policy_enabled = optional(bool) # Default: true
      recovery_database_id      = optional(string)
      tags                      = optional(map(string))
      restore = optional(object({
        point_in_time      = string
        source_database_id = string
      }))
    })))
    synapse_workspace_aad_admins = optional(map(object({
      login     = string
      object_id = string
      tenant_id = string
    })))
    synapse_workspace_extended_auditing_policies = optional(map(object({
      log_monitoring_enabled                           = optional(bool)   # Default: true
      retention_in_days                                = optional(number) # Default: 0
      storage_account_access_key                       = optional(string)
      storage_account_access_key_key_vault_id          = optional(string)
      storage_account_access_key_key_vault_secret_name = optional(string)
      storage_account_access_key_is_secondary          = optional(bool) # Default: false
      storage_endpoint                                 = optional(string)
    })))
    synapse_workspace_keys = optional(map(object({
      active                              = bool
      customer_managed_key_name           = string
      customer_managed_key_versionless_id = optional(string)
    })))
    synapse_workspace_security_alert_policies = optional(map(object({
      policy_state                                     = string
      disabled_alerts                                  = optional(set(string))
      email_account_admins_enabled                     = optional(bool) # Default: false
      email_addresses                                  = optional(set(string))
      retention_days                                   = optional(number) # Default: 0
      storage_account_access_key                       = optional(string)
      storage_account_access_key_key_vault_id          = optional(string)
      storage_account_access_key_key_vault_secret_name = optional(string)
      storage_endpoint                                 = optional(string)
    })))
    synapse_workspace_sql_aad_admins = optional(map(object({
      login     = string
      object_id = string
      tenant_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.synapse_workspaces) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_firewall_rules, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_integration_runtime_azures, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_integration_runtime_self_hosteds, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_linked_services, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_managed_private_endpoints, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_spark_pools, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_sql_pools, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_workspace_aad_admins, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_workspace_extended_auditing_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_workspace_keys, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_workspace_security_alert_policies, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.synapse_workspaces : [for kk in keys(coalesce(v0.synapse_workspace_sql_aad_admins, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
