landingzone = {
  backend_type = "azurerm"
  level        = "level0"
  key          = "launchpad"
}

enable = {
  bastion_hosts    = true
  virtual_machines = true #false
}

# Default region. When not set to a resource it will use that value
default_region = "region1"

regions = {
  region1 = "ukwest"
  region2 = "uksouth"
}

# core tags to be applied accross this landing zone
tags = {
  owner          = "CSI"
  deploymentType = "Terraform"
  costCenter     = "0"
  BusinessUnit   = "SHARED"
  DR             = "NON-DR-ENABLED"
}

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
# passthrough = false
# adds random chars at the end of the names produced by the provider
# random_length = 3

# all resources deployed will inherit tags from the parent resource group
inherit_tags = true

launchpad_key_names = {
  azuread_app            = "csi_launchpad_level0"
  keyvault_client_secret = "aadapp-csi-launchpad-level0"
  tfstates = [
    "level0",
    "level1",
    "level2",
    "level3",
    "level4"
  ]
}

resource_groups = {
  level0 = {
    name = "launchpad-level0"
    tags = {
      level = "level0"
    }
  }
  level1 = {
    name = "launchpad-level1"
    tags = {
      level = "level1"
    }
  }
  level2 = {
    name = "launchpad-level2"
    tags = {
      level = "level2"
    }
  }
  level3 = {
    name = "launchpad-level3"
    tags = {
      level = "level3"
    }
  }
  level4 = {
    name = "launchpad-level4"
    tags = {
      level = "level4"
    }
  }
  security = {
    name = "launchpad-security"
  }
  ops = {
    name = "operations"
  }
  siem = {
    name = "siem-logs"
  }
}

