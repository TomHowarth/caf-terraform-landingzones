# Map of the current tfstate
variable "tfstate_storage_account_name" {
  default = null
}
variable "tfstate_container_name" {
  default = null
}
variable "tfstate_key" {
  default = null
}
variable "tfstate_resource_group_name" {
  default = null
}

#variable "tenant_id" {}
variable "landingzone" {
  description = "The landing zone name is used to reference the tfstate in configuration files. Therefore while set it is recommended not to change"
}

variable "passthrough" {
  default = false
}
variable "random_length" {
  default = null
}

variable "inherit_tags" {
  default = false
}

variable "default_region" {
  description = "Define the default region where services are deployed if the location is not set at the resource level"
  default     = "region1"
}

variable "regions" {
  type        = map(any)
  description = "List of the regions where services can be deployed. This impact the diagnostics logs settings"
  default = {
    region1 = "ukwest"
  }
}

variable "enable" {
  description = "Map of services defined in the configuration file you want to disable during a deployment"
  default     = {}
}

variable "prefix" {
  default = null
}

variable "use_slug" {
  default = true
}

variable "log_analytics" {
  default = {}
}

variable "event_hub_namespaces" {
  default = {}
}

# Do not change the default value to be able to upgrade to the standard launchpad
variable "tf_name" {
  description = "Name of the terraform state in the blob storage (Does not include the extension .tfstate). Setup by the rover. Leave empty in the configuration file"
  default     = ""
}

variable "resource_groups" {}

variable "storage_accounts" {}
variable "keyvaults" {}
variable "keyvault_access_policies" {
  default = {}
}
variable "keyvault_keys" {
  default = {}
}
variable "dynamic_keyvault_secrets" {}

variable "subscriptions" {
  default = {}
}

## Azure Active Directory
variable "azuread_apps" {
  default = {}
}
variable "azuread_groups" {
  default = {}
}
variable "azuread_users" {
  default = {}
}
variable "azuread_roles" {
  default = {}
}
variable "managed_identities" {
  default = {}
}

variable "networking" {
  default = {}
}

variable "compute" {
  default = {}
}

variable "launchpad_key_names" {}

variable "custom_role_definitions" {
  default = {}
}
variable "role_mapping" {
  default = {
    built_in_role_mapping = {}
    custom_role_mapping   = {}
  }
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "rover_version" {}

variable "user_type" {}

variable "logged_user_objectId" {
  default = null
}
variable "logged_aad_app_objectId" {
  default = null
}

variable "aad_users" {
  default = {}
}

variable "aad_roles" {
  default = {}
}

variable "azuread_api_permissions" {
  default = {}
}

variable "environment" {
  type        = string
  description = "This variable is set by the rover during the deployment based on the -env or -environment flags. Default to sandpit"
}

variable "diagnostics" {
  default = {}
}

variable "diagnostics_definition" {
  default = {}
}

variable "diagnostics_destinations" {
  default = {}
}

variable "diagnostic_event_hub_namespaces" {
  default = {}
}

variable "diagnostic_log_analytics" {
  default = {}
}

variable "diagnostic_storage_accounts" {
  default = {}
}

variable "keyvault_access_policies_azuread_apps" {
  default = {}
}

variable "virtual_machines" {
  default = {}
}

variable "bastion_hosts" {
  default = {}
}

variable "vnets" {
  default = {}
}

variable "network_security_group_definition" {
  default = {}
}

variable "public_ip_addresses" {
  default = {}
}

variable "azurerm_routes" {
  default = {}
}

variable "route_tables" {
  default = {}
}
variable "subscription_id" { 
    type=string
    default = "dec821b6-7693-4960-b8cb-bcb4eeab97a2"
    }
variable "client_id" {
    type = string
    default = "f9470310-0a9e-4a04-96e1-44d4d8c77cb7"
    }
variable "client_secret" {
    type = string
    default = "HptTXScP3zidFPogItSoR-EarMpUprlgQV"
    }
variable "tenant_id" {
    type = string
    default = "6202e6f2-01db-4d18-b3df-8ca648884c13"
    }