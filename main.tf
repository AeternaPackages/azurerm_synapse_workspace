locals {
  synapse_workspaces = { for k1, v1 in var.synapse_workspaces : k1 => { azure_devops_repo = v1.azure_devops_repo, azuread_authentication_only = v1.azuread_authentication_only, compute_subnet_id = v1.compute_subnet_id, customer_managed_key = v1.customer_managed_key, data_exfiltration_protection_enabled = v1.data_exfiltration_protection_enabled, github_repo = v1.github_repo, identity = v1.identity, linking_allowed_for_aad_tenant_ids = v1.linking_allowed_for_aad_tenant_ids, location = v1.location, managed_resource_group_name = v1.managed_resource_group_name, managed_virtual_network_enabled = v1.managed_virtual_network_enabled, name = v1.name, public_network_access_enabled = v1.public_network_access_enabled, purview_id = v1.purview_id, resource_group_name = v1.resource_group_name, sql_administrator_login = v1.sql_administrator_login, sql_administrator_login_password = v1.sql_administrator_login_password, sql_administrator_login_password_key_vault_id = v1.sql_administrator_login_password_key_vault_id, sql_administrator_login_password_key_vault_secret_name = v1.sql_administrator_login_password_key_vault_secret_name, sql_identity_control_enabled = v1.sql_identity_control_enabled, storage_data_lake_gen2_filesystem_id = v1.storage_data_lake_gen2_filesystem_id, tags = v1.tags } }

  synapse_firewall_rules = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_firewall_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_integration_runtime_azures = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_integration_runtime_azures, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_integration_runtime_self_hosteds = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_integration_runtime_self_hosteds, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_linked_services = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_linked_services, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_managed_private_endpoints = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_managed_private_endpoints, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_spark_pools = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_spark_pools, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_sql_pools = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_sql_pools, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_workspace_aad_admins = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_workspace_aad_admins, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_workspace_extended_auditing_policies = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_workspace_extended_auditing_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_workspace_keys = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_workspace_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_workspace_security_alert_policies = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_workspace_security_alert_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)

  synapse_workspace_sql_aad_admins = merge([
    for k1, v1 in var.synapse_workspaces : {
      for k2, v2 in coalesce(v1.synapse_workspace_sql_aad_admins, {}) :
      "${k1}/${k2}" => merge(v2, {
        synapse_workspace_id = module.synapse_workspaces.synapse_workspaces_id["${k1}"]
      })
    }
  ]...)
}

module "synapse_workspaces" {
  source             = "git::https://github.com/AeternaModules/azurerm_synapse_workspace.git?ref=v4.80.0"
  synapse_workspaces = local.synapse_workspaces
}

module "synapse_firewall_rules" {
  source                 = "git::https://github.com/AeternaModules/azurerm_synapse_firewall_rule.git?ref=v4.80.0"
  synapse_firewall_rules = local.synapse_firewall_rules
  depends_on             = [module.synapse_workspaces]
}

module "synapse_integration_runtime_azures" {
  source                             = "git::https://github.com/AeternaModules/azurerm_synapse_integration_runtime_azure.git?ref=v4.80.0"
  synapse_integration_runtime_azures = local.synapse_integration_runtime_azures
  depends_on                         = [module.synapse_workspaces]
}

module "synapse_integration_runtime_self_hosteds" {
  source                                   = "git::https://github.com/AeternaModules/azurerm_synapse_integration_runtime_self_hosted.git?ref=v4.80.0"
  synapse_integration_runtime_self_hosteds = local.synapse_integration_runtime_self_hosteds
  depends_on                               = [module.synapse_workspaces]
}

module "synapse_linked_services" {
  source                  = "git::https://github.com/AeternaModules/azurerm_synapse_linked_service.git?ref=v4.80.0"
  synapse_linked_services = local.synapse_linked_services
  depends_on              = [module.synapse_workspaces]
}

module "synapse_managed_private_endpoints" {
  source                            = "git::https://github.com/AeternaModules/azurerm_synapse_managed_private_endpoint.git?ref=v4.80.0"
  synapse_managed_private_endpoints = local.synapse_managed_private_endpoints
  depends_on                        = [module.synapse_workspaces]
}

module "synapse_spark_pools" {
  source              = "git::https://github.com/AeternaModules/azurerm_synapse_spark_pool.git?ref=v4.80.0"
  synapse_spark_pools = local.synapse_spark_pools
  depends_on          = [module.synapse_workspaces]
}

module "synapse_sql_pools" {
  source            = "git::https://github.com/AeternaModules/azurerm_synapse_sql_pool.git?ref=v4.80.0"
  synapse_sql_pools = local.synapse_sql_pools
  depends_on        = [module.synapse_workspaces]
}

module "synapse_workspace_aad_admins" {
  source                       = "git::https://github.com/AeternaModules/azurerm_synapse_workspace_aad_admin.git?ref=v4.80.0"
  synapse_workspace_aad_admins = local.synapse_workspace_aad_admins
  depends_on                   = [module.synapse_workspaces]
}

module "synapse_workspace_extended_auditing_policies" {
  source                                       = "git::https://github.com/AeternaModules/azurerm_synapse_workspace_extended_auditing_policy.git?ref=v4.80.0"
  synapse_workspace_extended_auditing_policies = local.synapse_workspace_extended_auditing_policies
  depends_on                                   = [module.synapse_workspaces]
}

module "synapse_workspace_keys" {
  source                 = "git::https://github.com/AeternaModules/azurerm_synapse_workspace_key.git?ref=v4.80.0"
  synapse_workspace_keys = local.synapse_workspace_keys
  depends_on             = [module.synapse_workspaces]
}

module "synapse_workspace_security_alert_policies" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_synapse_workspace_security_alert_policy.git?ref=v4.80.0"
  synapse_workspace_security_alert_policies = local.synapse_workspace_security_alert_policies
  depends_on                                = [module.synapse_workspaces]
}

module "synapse_workspace_sql_aad_admins" {
  source                           = "git::https://github.com/AeternaModules/azurerm_synapse_workspace_sql_aad_admin.git?ref=v4.80.0"
  synapse_workspace_sql_aad_admins = local.synapse_workspace_sql_aad_admins
  depends_on                       = [module.synapse_workspaces]
}

